#!/usr/bin/env python3
"""آواخوان: Persian PDF reader with a simple Tk GUI and Aava TTS."""
from __future__ import annotations
import os, queue, shutil, subprocess, tempfile, threading
from pathlib import Path
import tkinter as tk
from tkinter import filedialog, messagebox, ttk

APP_DIR = Path(__file__).resolve().parent
MODEL_DEFAULT = Path.home()/'.cache/huggingface/models/KEYHAN-A/aava-tts-persian-3b'

class AavaEngine:
    def __init__(self, model_path: str|None=None):
        self.model_path = Path(model_path or os.getenv('AAVA_MODEL', MODEL_DEFAULT))
        self.model = self.tokenizer = self.snac = None
        self.device = None
        self._lock = threading.Lock()
    def ready(self): return self.model is not None
    def load(self):
        if self.ready(): return
        with self._lock:
            if self.ready(): return
            if not self.model_path.exists():
                raise FileNotFoundError(f'مدل پیدا نشد: {self.model_path}')
            import torch
            from transformers import AutoModelForCausalLM, AutoTokenizer
            from snac import SNAC
            self.device = 'cuda' if torch.cuda.is_available() else 'cpu'
            self.tokenizer = AutoTokenizer.from_pretrained(str(self.model_path)); self.tokenizer.pad_token_id=128004
            dtype = torch.bfloat16 if self.device == 'cuda' else torch.float32
            self.model = AutoModelForCausalLM.from_pretrained(str(self.model_path), torch_dtype=dtype, device_map='auto' if self.device=='cuda' else None, low_cpu_mem_usage=True)
            if self.device != 'cuda': self.model=self.model.to(self.device)
            self.model.eval(); self.snac=SNAC.from_pretrained('hubertsiuzdak/snac_24khz').eval().to(self.device)
    def synthesize(self, text: str, output: Path):
        import numpy as np, soundfile as sf, torch
        self.load(); SOH,EOH,SOA,SOS,EOS,EOA,OFF=128259,128260,128261,128257,128258,128262,128266
        offsets=[0,4096,8192]; positions=[0,1,2,2,1,2,2]
        ids=self.tokenizer.encode('aava: '+text, add_special_tokens=False)
        prompt=torch.tensor([[SOH]+ids+[EOH,SOA,SOS]],dtype=torch.long,device=self.device)
        with torch.no_grad(): generated=self.model.generate(input_ids=prompt,max_new_tokens=min(2000,max(300,len(text)*12)),do_sample=True,temperature=.7,top_p=.95,repetition_penalty=1.1,eos_token_id=EOA,pad_token_id=128004)
        all_ids=generated[0]; sos=(all_ids==SOS).nonzero(); audio=all_ids[sos[-1].item()+1:] if len(sos) else all_ids
        stop=((audio==EOS)|(audio==EOA)).nonzero(); audio=audio[:stop[0].item()] if len(stop) else audio; audio=audio[:(len(audio)//7)*7]
        if len(audio)<7: raise RuntimeError('مدل صوتی تولید نکرد؛ متن را کوتاه‌تر کنید.')
        layers=[[],[],[]]
        for i in range(0,len(audio),7):
            for j in range(7): layers[positions[j]].append(audio[i+j].item()-OFF-offsets[positions[j]])
        codes=[torch.tensor([layer],dtype=torch.long,device=self.device) for layer in layers]
        wav=self.snac.decode(codes).detach().squeeze().cpu().numpy(); peak=np.max(np.abs(wav)); wav=wav/peak*.95 if peak else wav; sf.write(str(output),wav,24000)

class ReaderApp:
    def __init__(self, root):
        self.root=root; self.root.title('آواخوان — PDF Reader فارسی'); self.root.geometry('1050x700'); self.root.minsize(700,450)
        self.pages=[]; self.paragraphs=[]; self.index=0; self.repeat=False; self.stop_event=threading.Event(); self.player=None; self.engine=AavaEngine(); self.events=queue.Queue()
        self._build(); self.root.after(100,self._poll)
    def _build(self):
        top=ttk.Frame(self.root,padding=8); top.pack(fill='x')
        ttk.Button(top,text='باز کردن PDF',command=self.open_pdf).pack(side='right',padx=3); ttk.Button(top,text='قبلی',command=lambda:self.move(-1)).pack(side='right',padx=3); ttk.Button(top,text='بعدی',command=lambda:self.move(1)).pack(side='right',padx=3); ttk.Button(top,text='پخش / خواندن',command=self.play).pack(side='right',padx=3); ttk.Button(top,text='توقف',command=self.stop).pack(side='right',padx=3)
        self.repeat_var=tk.BooleanVar(); ttk.Checkbutton(top,text='تکرار پاراگراف',variable=self.repeat_var).pack(side='right',padx=8)
        self.file_label=ttk.Label(self.root,text='فایلی انتخاب نشده',padding=(8,0)); self.file_label.pack(fill='x')
        frame=ttk.Frame(self.root); frame.pack(fill='both',expand=True,padx=8,pady=8); self.text=tk.Text(frame,wrap='word',font=('DejaVu Sans',13),undo=False,padx=18,pady=18); scroll=ttk.Scrollbar(frame,command=self.text.yview); self.text.configure(yscrollcommand=scroll.set); self.text.pack(side='left',fill='both',expand=True); scroll.pack(side='right',fill='y'); self.text.tag_configure('active',background='#ffe58f',foreground='#111827'); self.text.tag_configure('normal',foreground='#202020'); self.text.configure(state='disabled')
        self.status=ttk.Label(self.root,text='یک فایل PDF باز کنید.',padding=8); self.status.pack(fill='x')
    def open_pdf(self):
        path=filedialog.askopenfilename(filetypes=[('PDF files','*.pdf'),('All files','*.*')]);
        if not path:return
        try:
            import fitz; doc=fitz.open(path); self.pages=[p.get_text('text') for p in doc]; doc.close(); self.paragraphs=self._split('\n'.join(self.pages)); self.index=0; self.file_label.configure(text=Path(path).name); self.render(); self.status.configure(text=f'{len(self.paragraphs)} پاراگراف بارگذاری شد.')
        except Exception as e: messagebox.showerror('خطا در بازکردن PDF',str(e))
    @staticmethod
    def _split(text):
        result=[]
        for block in text.replace('\r\n','\n').split('\n\n'):
            block=' '.join(x.strip() for x in block.splitlines()).strip()
            if block: result.append(block)
        return result
    def render(self):
        self.text.configure(state='normal'); self.text.delete('1.0','end')
        for i,p in enumerate(self.paragraphs):
            start=self.text.index('end-1c'); self.text.insert('end',p+'\n\n'); end=self.text.index('end-1c'); self.text.tag_add('active' if i==self.index else 'normal',start,end)
        self.text.configure(state='disabled');
        if self.paragraphs:self.text.see(f'{self.index+1}.0')
    def move(self,delta):
        if not self.paragraphs:return
        self.index=max(0,min(len(self.paragraphs)-1,self.index+delta)); self.render(); self.status.configure(text=f'پاراگراف {self.index+1} از {len(self.paragraphs)}')
    def play(self):
        if not self.paragraphs:return
        self.stop(); self.stop_event.clear(); threading.Thread(target=self._read_loop,daemon=True).start()
    def _read_loop(self):
        while not self.stop_event.is_set() and self.index<len(self.paragraphs):
            idx=self.index; self.events.put(('active',idx)); self.events.put(('status',f'در حال آماده‌سازی پاراگراف {idx+1} از {len(self.paragraphs)}...'))
            try:
                with tempfile.NamedTemporaryFile(suffix='.wav',delete=False) as f: audio=Path(f.name)
                self.engine.synthesize(self.paragraphs[idx],audio)
                if self.stop_event.is_set(): audio.unlink(missing_ok=True); return
                if not shutil.which('ffplay'): raise RuntimeError('ffplay نصب نیست؛ بسته ffmpeg را نصب کنید.')
                self.player=subprocess.Popen(['ffplay','-nodisp','-autoexit','-loglevel','quiet',str(audio)])
                self.player.wait(); self.player=None; audio.unlink(missing_ok=True)
            except Exception as e: self.events.put(('error',str(e))); return
            if not self.repeat_var.get(): self.index+=1
            if self.index>=len(self.paragraphs): self.events.put(('status','خواندن تمام شد')); return
            self.events.put(('active',self.index))
    def stop(self):
        self.stop_event.set()
        if self.player and self.player.poll() is None:
            self.player.terminate()
        self.player=None; self.status.configure(text='متوقف شد')
    def _poll(self):
        try:
            while True:
                kind,value=self.events.get_nowait()
                if kind=='active': self.index=value; self.render()
                elif kind=='status': self.status.configure(text=value)
                elif kind=='error': messagebox.showerror('خطا در خواندن',value); self.status.configure(text='خواندن متوقف شد')
        except queue.Empty: pass
        self.root.after(100,self._poll)

def main():
    root=tk.Tk(); ReaderApp(root); root.protocol('WM_DELETE_WINDOW',root.destroy); root.mainloop()
if __name__=='__main__': main()
