# آواخوان — کتابخوان حرفه‌ای فارسی با هوش مصنوعی

نسخه‌ی Linux و Windows این پروژه با **Python + Tkinter + PyMuPDF** ساخته شده است. کتابخوان متن PDF فارسی را استخراج و نمایش می‌دهد، صفحه و پاراگراف را تشخیص می‌دهد، پاراگراف فعال را Highlight می‌کند و با مدل رسمی `KEYHAN-A/aava-tts-persian-3b` می‌خواند.

> مدل Aava از نوع **TTS (تبدیل متن به گفتار)** است، نه گفتار به متن. مدل حدود ۷٫۶GB حجم دارد و برای اجرای CPU به RAM و زمان زیادی نیاز دارد؛ CUDA توصیه می‌شود.

## قابلیت‌ها

- نمایش متن کامل PDF با اسکرول و تشخیص صفحه و پاراگراف
- Highlight خودکار پاراگراف در حال خواندن
- پخش، توقف، قبلی، بعدی و تکرار پاراگراف
- جست‌وجوی متن فارسی و Highlight نتایج
- بزرگ‌نمایی و کوچک‌نمایی متن
- بارگذاری یک‌باره‌ی مدل در حافظه
- دانلود خودکار مدل از Hugging Face
- تشخیص CPU یا CUDA
- تشخیص کش‌های استاندارد Hugging Face در Linux و Windows برای جلوگیری از دانلود مجدد
- خروجی مستقل Linux و Windows EXE با PyInstaller

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

برنامه در صورت نبود مدل، خودش آن را دانلود می‌کند. برای دانلود دستی:

```bash
huggingface-cli download KEYHAN-A/aava-tts-persian-3b \
  --local-dir "$HOME/.cache/huggingface/models/KEYHAN-A/aava-tts-persian-3b"
huggingface-cli download hubertsiuzdak/snac_24khz
```

مسیر پیش‌فرض Linux:

```text
~/.cache/huggingface/models/KEYHAN-A/aava-tts-persian-3b
```

مسیر ویندوزی موردنظر شما:

```text
C:\Users\amire\.cache\huggingface\models\KEYHAN-A\aava-tts-persian-3b
```

برای مسیر دلخواه:

```bash
export AAVA_MODEL=/path/to/aava-tts-persian-3b
```

برنامه به‌ترتیب `AAVA_MODEL`، مسیر `~/.cache/huggingface/models/...` و snapshotهای `~/.cache/huggingface/hub/models--KEYHAN-A--aava-tts-persian-3b` را بررسی می‌کند. در Windows متغیر `HF_HOME` و کش استاندارد Hugging Face نیز پشتیبانی می‌شود.

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

بعد از اجرا، PDF را با **باز کردن PDF** انتخاب کنید. برای آماده‌سازی مدل دکمه‌ی **دانلود/بررسی مدل** را بزنید یا مستقیماً **پخش** را انتخاب کنید.

## ساخت Linux و Windows EXE

PyInstaller cross-compiler نیست؛ خروجی هر سیستم‌عامل باید روی همان سیستم‌عامل ساخته شود.

ساخت Linux:

```bash
cd desktop/pdf-reader
python3 -m pip install pyinstaller
chmod +x build-release.sh
./build-release.sh
./dist/aava-pdf-reader --self-test
```

ساخت Windows در PowerShell:

```powershell
cd desktop\pdf-reader
py -m pip install -r requirements.txt pyinstaller
py pdf_reader.py --self-test
pyinstaller --clean --noconfirm aava-pdf-reader.spec
```

خروجی Windows در `dist\aava-pdf-reader.exe` است. `ffplay.exe`/FFmpeg باید در PATH ویندوز باشد یا کنار EXE قرار بگیرد. مدل Aava داخل EXE بسته‌بندی نمی‌شود؛ برنامه آن را از کش یا Hugging Face می‌خواند.

## انتشار Release در GitHub

Workflow موجود در `.github/workflows/release-reader.yml` روی GitHub Actions، Linux و Windows را جداگانه build می‌کند و برای tag نسخه‌ای در Release قرار می‌دهد:

```bash
git tag v1.0.0
git push origin v1.0.0
```

فایل‌های release شامل `aava-pdf-reader-linux.tar.gz` و `aava-pdf-reader-windows.zip` خواهند بود. اجرای دستی workflow با `workflow_dispatch` نیز artifact تولید می‌کند.

## تست

```bash
python3 -m py_compile pdf_reader.py test_reader.py
python3 test_reader.py
python3 pdf_reader.py --self-test
./dist/aava-pdf-reader --self-test
```

PDFهای اسکن‌شده که لایه‌ی متنی ندارند، به OCR نیاز دارند. این نسخه برای PDFهای دارای متن طراحی شده است.
