#!/usr/bin/env python3
"""آواخوان: Persian PDF reader with Aava TTS, search, navigation and highlighting."""
from __future__ import annotations
import os, queue, shutil, subprocess, tempfile, threading, sys, platform, urllib.request, zipfile, tarfile
from pathlib import Path
import tkinter as tk
from tkinter import filedialog, messagebox, ttk

MODEL_ID='KEYHAN-A/aava-tts-persian-3b'
MODEL_DEFAULT=Path.home()/'.cache/huggingface/models/KEYHAN-A/aava-tts-persian-3b'

class FFmpegRuntime:
    """Find ffplay or install a private user-local copy without admin/PATH setup."""
    def __init__(self):
        if platform.system()=='Windows':
            base=Path(os.getenv('LOCALAPPDATA',Path.home()))/'AavaPdfReader'/'ffmpeg'
        else: base=Path(os.getenv('XDG_CACHE_HOME',Path.home()/'.cache'))/'aava-pdf-reader'/'ffmpeg'
        self.base=base; self.lock=threading.Lock()
    def _names(self): return ['ffplay.exe','ffplay'] if platform.system()=='Windows' else ['ffplay']
    def locate(self):
        for name in self._names():
            found=shutil.which(name)
            if found: return Path(found)
        for name in self._names():
            for p in [self.base/name,self.base/'bin'/name]:
                if p.exists(): return p
        return None
    def ensure(self, report=None):
        found=self.locate()
        if found: return found
        with self.lock:
            found=self.locate()
            if found:return found
            self.base.mkdir(parents=True,exist_ok=True)
            if platform.system()=='Windows':
                url='https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip'; archive=self.base/'ffmpeg.zip'
            elif platform.system()=='Linux':
                url='https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz'; archive=self.base/'ffmpeg.tar.xz'
            else: raise RuntimeError('دانلود خودکار FFmpeg برای این سیستم‌عامل پشتیبانی نمی‌شود.')
            if report: report('FFmpeg پیدا نشد؛ دانلود خودکار پخش‌کننده شروع شد...')
            urllib.request.urlretrieve(url,archive)
            if archive.suffix=='.zip':
                with zipfile.ZipFile(archive) as z:z.extractall(self.base)
            else:
                with tarfile.open(archive,'r:xz') as t:t.extractall(self.base)
            archive.unlink(missing_ok=True); found=self.locate()
            if not found: raise RuntimeError('FFmpeg دانلود شد اما ffplay پیدا نشد.')
            if platform.system()!='Windows': found.chmod(found.stat().st_mode|0o111)
            return found

class AavaEngine:
    def __init__(self, model_path=None):
        self.model_path=Path(model_path or os.getenv('AAVA_MODEL',MODEL_DEFAULT)); self.model=self.tokenizer=self.snac=None; self.device=None; self._lock=threading.Lock()
    def ready(self): return self.model is not None
    def _candidates(self):
        home=Path.home(); hf=Path(os.getenv('HF_HOME',home/'.cache/huggingface'))
        candidates=[self.model_path, hf/'models'/ 'KEYHAN-A'/'aava-tts-persian-3b', hf/'hub'/'models--KEYHAN-A--aava-tts-persian-3b']
        snapshots=candidates[-1]/'snapshots'
        if snapshots.exists(): candidates.extend(sorted(snapshots.glob('*'),reverse=True))
        return candidates
    def ensure_downloaded(self, report=None):
        for candidate in self._candidates():
            if candidate.exists() and (any(candidate.glob('*.safetensors')) or (candidate/'config.json').exists()):
                self.model_path=candidate; return
        if report: report('مدل روی سیستم نیست؛ دانلود حدود ۷٫۶GB شروع شد...')
        from huggingface_hub import snapshot_download
        self.model_path=Path(snapshot_download(repo_id=MODEL_ID,local_dir=str(self.model_path),local_dir_use_symlinks=False))
    def load(self,report=None):
        if self.ready(): return
        with self._lock:
            if self.ready(): return
            self.ensure_downloaded(report)
            import torch
            from transformers import AutoModelForCausalLM,AutoTokenizer
            from snac import SNAC
            self.device='cuda' if torch.cuda.is_available() else 'cpu'
            if report: report(f'در حال بارگذاری مدل روی {self.device}...')
            self.tokenizer=AutoTokenizer.from_pretrained(str(self.model_path)); self.tokenizer.pad_token_id=128004
            dtype=torch.bfloat16 if self.device=='cuda' else torch.float32
            self.model=AutoModelForCausalLM.from_pretrained(str(self.model_path),torch_dtype=dtype,device_map='auto' if self.device=='cuda' else None,low_cpu_mem_usage=True)
            if self.device!='cuda': self.model=self.model.to(self.device)
            self.model.eval(); self.snac=SNAC.from_pretrained('hubertsiuzdak/snac_24khz').eval().to(self.device)
    def synthesize(self,text,output,report=None):
        import numpy as np,soundfile as sf,torch
        self.load(report); SOH,EOH,SOA,SOS,EOS,EOA,OFF=128259,128260,128261,128257,128258,128262,128266; offsets=[0,4096,8192]; positions=[0,1,2,2,1,2,2]
        ids=self.tokenizer.encode('aava: '+text,add_special_tokens=False); prompt=torch.tensor([[SOH]+ids+[EOH,SOA,SOS]],dtype=torch.long,device=self.device)
        with torch.no_grad(): generated=self.model.generate(input_ids=prompt,max_new_tokens=min(2000,max(300,len(text)*12)),do_sample=True,temperature=.7,top_p=.95,repetition_penalty=1.1,eos_token_id=EOA,pad_token_id=128004)
        all_ids=generated[0]; sos=(all_ids==SOS).nonzero(); audio=all_ids[sos[-1].item()+1:] if len(sos) else all_ids; stop=((audio==EOS)|(audio==EOA)).nonzero(); audio=audio[:stop[0].item()] if len(stop) else audio; audio=audio[:(len(audio)//7)*7]
        if len(audio)<7: raise RuntimeError('مدل صوتی تولید نکرد؛ متن را کوتاه‌تر کنید.')
        layers=[[],[],[]]
        for i in range(0,len(audio),7):
            for j in range(7): layers[positions[j]].append(audio[i+j].item()-OFF-offsets[positions[j]])
        codes=[torch.tensor([x],dtype=torch.long,device=self.device) for x in layers]; wav=self.snac.decode(codes).detach().squeeze().cpu().numpy(); peak=np.max(np.abs(wav)); sf.write(str(output),wav/peak*.95 if peak else wav,24000)

class ReaderApp:
    def __init__(self,root):
        self.root=root; root.title('آواخوان — کتابخوان حرفه‌ای فارسی'); root.geometry('1180x760'); root.minsize(760,500); self.pages=[]; self.paragraphs=[]; self.page=0; self.index=0; self.stop_event=threading.Event(); self.player=None; self.engine=AavaEngine(); self.ffmpeg=FFmpegRuntime(); self.events=queue.Queue(); self.zoom=14; self._build(); root.after(100,self._poll)
    def _build(self):
        bar=ttk.Frame(self.root,padding=7); bar.pack(fill='x');
        for label,cmd in [('باز کردن PDF',self.open_pdf),('قبلی',lambda:self.move(-1)),('بعدی',lambda:self.move(1)),('پخش',self.play),('توقف',self.stop),('دانلود/بررسی مدل',self.prepare_model)]: ttk.Button(bar,text=label,command=cmd).pack(side='right',padx=3)
        self.repeat=tk.BooleanVar(); ttk.Checkbutton(bar,text='تکرار',variable=self.repeat).pack(side='right',padx=6); ttk.Button(bar,text='A−',command=lambda:self.change_zoom(-1)).pack(side='left'); ttk.Button(bar,text='A+',command=lambda:self.change_zoom(1)).pack(side='left'); self.search=tk.StringVar(); entry=ttk.Entry(bar,textvariable=self.search,width=24); entry.pack(side='left',padx=6); entry.bind('<Return>',lambda e:self.find()); ttk.Button(bar,text='جست‌وجو',command=self.find).pack(side='left')
        info=ttk.Frame(self.root); info.pack(fill='x',padx=8); self.file_label=ttk.Label(info,text='فایلی انتخاب نشده'); self.file_label.pack(side='right'); self.page_label=ttk.Label(info,text='صفحه: —'); self.page_label.pack(side='left')
        frame=ttk.Frame(self.root); frame.pack(fill='both',expand=True,padx=8,pady=8); self.text=tk.Text(frame,wrap='word',undo=False,padx=22,pady=18,font=('DejaVu Sans',self.zoom),spacing1=4); sy=ttk.Scrollbar(frame,command=self.text.yview); self.text.configure(yscrollcommand=sy.set); self.text.pack(side='left',fill='both',expand=True); sy.pack(side='right',fill='y'); self.text.tag_configure('normal',foreground='#202020'); self.text.tag_configure('active',background='#ffe58f',foreground='#111827'); self.text.tag_configure('search',background='#9fe8ff'); self.text.configure(state='disabled'); self.status=ttk.Label(self.root,text='یک فایل PDF باز کنید.',padding=7); self.status.pack(fill='x')
    def open_pdf(self):
        path=filedialog.askopenfilename(filetypes=[('PDF','*.pdf'),('همه فایل‌ها','*.*')]);
        if not path:return
        try:
            import fitz; doc=fitz.open(path); self.pages=[p.get_text('text') for p in doc]; doc.close(); self.paragraphs=[]
            for page,text in enumerate(self.pages):
                for block in self._split(text): self.paragraphs.append((page,block))
            self.page=0; self.index=0; self.file_label.configure(text=Path(path).name); self.render(); self.status.configure(text=f'{len(self.pages)} صفحه و {len(self.paragraphs)} پاراگراف بارگذاری شد.')
        except Exception as e: messagebox.showerror('خطا در بازکردن PDF',str(e))
    @staticmethod
    def _split(text): return [' '.join(x.strip() for x in b.splitlines()).strip() for b in text.replace('\r\n','\n').split('\n\n') if b.strip()]
    def render(self):
        self.text.configure(state='normal'); self.text.delete('1.0','end'); self.text.tag_remove('search','1.0','end');
        for i,(pg,p) in enumerate(self.paragraphs):
            st=self.text.index('end-1c'); self.text.insert('end',p+'\n\n'); en=self.text.index('end-1c'); self.text.tag_add('active' if i==self.index else 'normal',st,en)
        self.text.configure(state='disabled');
        if self.paragraphs: self.text.see(f'{self.index+1}.0'); self.page_label.configure(text=f'صفحه {self.paragraphs[self.index][0]+1} از {len(self.pages)} | پاراگراف {self.index+1}/{len(self.paragraphs)}')
    def move(self,delta):
        if not self.paragraphs:return
        self.index=max(0,min(len(self.paragraphs)-1,self.index+delta)); self.render()
    def change_zoom(self,delta): self.zoom=max(9,min(28,self.zoom+delta)); self.text.configure(font=('DejaVu Sans',self.zoom))
    def find(self):
        self.text.tag_remove('search','1.0','end'); q=self.search.get().strip();
        if not q:return
        pos='1.0'; count=0
        while True:
            pos=self.text.search(q,pos,stopindex='end',nocase=True)
            if not pos:break
            end=f'{pos}+{len(q)}c'; self.text.tag_add('search',pos,end); pos=end; count+=1
        self.status.configure(text=f'{count} مورد پیدا شد.')
    def prepare_model(self): threading.Thread(target=self._prepare,daemon=True).start()
    def _prepare(self):
        try: self.engine.ensure_downloaded(lambda s:self.events.put(('status',s))); self.events.put(('status','مدل آماده است.'))
        except Exception as e:self.events.put(('error',str(e)))
    def play(self):
        if not self.paragraphs:return
        self.stop(); self.stop_event.clear(); threading.Thread(target=self._read_loop,daemon=True).start()
    def _read_loop(self):
        while not self.stop_event.is_set() and self.index<len(self.paragraphs):
            idx,text=self.index,self.paragraphs[self.index][1]; self.events.put(('active',idx)); self.events.put(('status',f'در حال خواندن پاراگراف {idx+1} از {len(self.paragraphs)}...'))
            try:
                with tempfile.NamedTemporaryFile(suffix='.wav',delete=False) as f: audio=Path(f.name)
                self.engine.synthesize(text,audio,lambda s:self.events.put(('status',s)))
                if self.stop_event.is_set(): audio.unlink(missing_ok=True); return
                player=self.ffmpeg.ensure(lambda s:self.events.put(('status',s)))
                self.player=subprocess.Popen([str(player),'-nodisp','-autoexit','-loglevel','quiet',str(audio)]); self.player.wait(); self.player=None; audio.unlink(missing_ok=True)
            except Exception as e:self.events.put(('error',str(e))); return
            if not self.repeat.get(): self.index+=1
            if self.index>=len(self.paragraphs): self.events.put(('status','خواندن تمام شد')); return
    def stop(self):
        self.stop_event.set()
        if self.player and self.player.poll() is None:self.player.terminate()
        self.player=None; self.status.configure(text='متوقف شد')
    def _poll(self):
        try:
            while True:
                k,v=self.events.get_nowait()
                if k=='active':self.index=v;self.render()
                elif k=='status':self.status.configure(text=v)
                elif k=='error':messagebox.showerror('خطا',v);self.status.configure(text='عملیات متوقف شد')
        except queue.Empty:pass
        self.root.after(100,self._poll)

def self_test():
    import ast
    ast.parse(Path(__file__).read_text(encoding='utf-8'))
    import fitz
    FFmpegRuntime().locate()
    print('aava-pdf-reader self-test: OK')

def main():
    if '--self-test' in sys.argv: self_test(); return
    root=tk.Tk(); ReaderApp(root); root.protocol('WM_DELETE_WINDOW',root.destroy); root.mainloop()
if __name__=='__main__':main()
