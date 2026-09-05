# آواخوان — PDF Reader فارسی برای لینوکس

نسخه‌ی نهایی این پروژه با **Python + Tkinter** ساخته شده است. متن PDF با PyMuPDF استخراج می‌شود، پاراگراف فعال با Highlight نمایش داده می‌شود و مدل `KEYHAN-A/aava-tts-persian-3b` متن فارسی را به گفتار تبدیل می‌کند. مدل فقط یک‌بار در حافظه Load می‌شود و پاراگراف‌ها را پشت‌سرهم می‌خواند.

> توجه: مدل Aava، **TTS (تبدیل متن به گفتار)** است، نه STT.

## نصب Ubuntu/Debian

```bash
sudo apt update
sudo apt install -y python3 python3-venv python3-tk ffmpeg
cd desktop/pdf-reader
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install torch transformers snac soundfile numpy PyMuPDF huggingface_hub
```

برای GPU، نسخه‌ی مناسب PyTorch را طبق [راهنمای رسمی PyTorch](https://pytorch.org/get-started/locally/) نصب کنید.

## دانلود مدل

```bash
huggingface-cli download KEYHAN-A/aava-tts-persian-3b \
  --local-dir "$HOME/.cache/huggingface/models/KEYHAN-A/aava-tts-persian-3b"

huggingface-cli download hubertsiuzdak/snac_24khz
```

مسیر پیش‌فرض برنامه همین مسیر است. برای مسیر دلخواه:

```bash
export AAVA_MODEL=/path/to/aava-tts-persian-3b
```

در ویندوز نیز می‌توانید از مسیر زیر استفاده کنید:

```text
C:\Users\amire\.cache\huggingface\models\KEYHAN-A\aava-tts-persian-3b
```

## اجرا

```bash
cd desktop/pdf-reader
chmod +x run-linux.sh
AAVA_PYTHON="$PWD/.venv/bin/python" ./run-linux.sh
```

یا:

```bash
.venv/bin/python pdf_reader.py
```

سپس **باز کردن PDF** را بزنید. با **پخش / خواندن**، برنامه مدل را Load می‌کند، پاراگراف فعلی را به WAV تبدیل می‌کند و با ffplay پخش می‌کند. مدل ۳B حدود ۷٫۶GB است؛ اجرای CPU به RAM زیاد و زمان بیشتری نیاز دارد و CUDA توصیه می‌شود.

## امکانات

- نمایش متن فارسی PDF با اسکرول و راست‌خوانی مناسب متن
- تشخیص پاراگراف بر اساس خطوط خالی و Highlight پاراگراف فعال
- خواندن خودکار پاراگراف به پاراگراف
- پخش، توقف، قبلی، بعدی و تکرار پاراگراف
- Load یک‌باره‌ی مدل برای جلوگیری از بارگذاری مجدد در هر پاراگراف
- پشتیبانی از مسیر مدل محلی Hugging Face با `AAVA_MODEL`

PDFهای اسکن‌شده که لایه‌ی متنی ندارند نیازمند OCR هستند و در این نسخه متن قابل استخراج نمایش داده می‌شود.
