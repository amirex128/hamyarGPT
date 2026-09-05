# آواخوان — کتابخوان حرفه‌ای فارسی با هوش مصنوعی

نسخه‌ی Linux این پروژه با **Python + Tkinter + PyMuPDF** ساخته شده است. کتابخوان متن PDF فارسی را استخراج و نمایش می‌دهد، صفحه و پاراگراف را تشخیص می‌دهد، پاراگراف فعال را Highlight می‌کند و با مدل رسمی `KEYHAN-A/aava-tts-persian-3b` می‌خواند.

> مدل Aava از نوع **TTS (تبدیل متن به گفتار)** است، نه گفتار به متن. مدل حدود ۷٫۶GB حجم دارد و برای اجرای CPU به RAM و زمان زیادی نیاز دارد؛ CUDA توصیه می‌شود.

## قابلیت‌ها

- نمایش متن کامل PDF با اسکرول و صفحه‌بندی متنی
- تشخیص صفحه و پاراگراف و نمایش شماره‌ی آن‌ها
- Highlight خودکار پاراگراف در حال خواندن
- پخش، توقف، قبلی، بعدی و تکرار پاراگراف
- جست‌وجوی متن فارسی و Highlight نتایج
- بزرگ‌نمایی و کوچک‌نمایی متن
- بارگذاری یک‌باره‌ی مدل در حافظه برای همه‌ی پاراگراف‌ها
- دانلود خودکار مدل از Hugging Face با دکمه‌ی «دانلود/بررسی مدل» یا در اولین پخش
- انتخاب مسیر مدل با متغیر `AAVA_MODEL`
- انتخاب خودکار CUDA یا CPU

## نصب Ubuntu/Debian

```bash
sudo apt update
sudo apt install -y python3 python3-venv python3-tk ffmpeg
cd desktop/pdf-reader
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
# torch را مطابق سیستم CPU/CUDA از راهنمای رسمی نصب کنید:
# https://pytorch.org/get-started/locally/
pip install torch
```

## دانلود مدل

برنامه در صورت نبود مدل، خودش آن را دانلود می‌کند. برای دانلود دستی و کنترل بهتر:

```bash
source .venv/bin/activate
huggingface-cli download KEYHAN-A/aava-tts-persian-3b \
  --local-dir "$HOME/.cache/huggingface/models/KEYHAN-A/aava-tts-persian-3b"

huggingface-cli download hubertsiuzdak/snac_24khz
```

مسیر پیش‌فرض لینوکس:

```text
~/.cache/huggingface/models/KEYHAN-A/aava-tts-persian-3b
```

برای مسیر دلخواه:

```bash
export AAVA_MODEL=/path/to/aava-tts-persian-3b
```

مسیر ویندوزی موردنظر شما نیز با همین متغیر قابل استفاده است:

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

بعد از اجرا، PDF را با **باز کردن PDF** انتخاب کنید. برای آماده‌سازی مدل دکمه‌ی **دانلود/بررسی مدل** را بزنید یا مستقیماً **پخش** را انتخاب کنید. دانلود اولیه ممکن است چند دقیقه طول بکشد.

## تست

تست‌های سبک بدون نیاز به GUI یا مدل سنگین:

```bash
python3 -m py_compile pdf_reader.py test_reader.py
python3 test_reader.py
```

PDFهای اسکن‌شده که لایه‌ی متنی ندارند، به OCR نیاز دارند. این نسخه برای PDFهای دارای متن طراحی شده است؛ افزودن OCR با Tesseract می‌تواند مرحله‌ی بعدی پروژه باشد.
