# آواخوان — کتابخوان حرفه‌ای فارسی با هوش مصنوعی

نسخه‌ی Linux و Windows این پروژه با **Python + Tkinter + PyMuPDF** ساخته شده است. متن PDF فارسی استخراج و نمایش داده می‌شود، صفحه و پاراگراف تشخیص داده می‌شود، پاراگراف فعال Highlight می‌شود و مدل رسمی `KEYHAN-A/aava-tts-persian-3b` آن را می‌خواند.

> مدل Aava از نوع **TTS (تبدیل متن به گفتار)** است، نه گفتار به متن. مدل حدود ۷٫۶GB حجم دارد و برای CPU به RAM و زمان بیشتری نیاز دارد؛ CUDA توصیه می‌شود.

## قابلیت‌ها

- نمایش PDF، تشخیص صفحه و پاراگراف و Highlight خودکار
- پخش، توقف، قبلی، بعدی، تکرار، جست‌وجو و بزرگ‌نمایی
- دانلود خودکار مدل Aava و SNAC از Hugging Face
- تشخیص خودکار کش Hugging Face و جلوگیری از دانلود مجدد مدل
- مدیریت کاملاً خودکار FFmpeg/ffplay؛ بدون PATH، نصب دستی یا دسترسی administrator
- خروجی مستقل Linux و Windows EXE با PyInstaller

## نصب و اجرای نسخه source

```bash
sudo apt update
sudo apt install -y python3 python3-venv python3-tk
cd desktop/pdf-reader
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
# torch را مطابق سیستم CPU/CUDA از راهنمای رسمی نصب کنید:
# https://pytorch.org/get-started/locally/
pip install torch
./run-linux.sh
```

**FFmpeg لازم نیست نصب شود.** برنامه ابتدا ffplay موجود در PATH یا کنار فایل اجرایی را پیدا می‌کند؛ اگر موجود نباشد، نسخه‌ی مناسب را در پوشه‌ی کاربر دانلود و استخراج می‌کند.

- Linux: `~/.cache/aava-pdf-reader/ffmpeg`
- Windows: `%LOCALAPPDATA%\AavaPdfReader\ffmpeg`

نسخه‌ی Linux از build استاتیک amd64 و نسخه‌ی Windows از بسته‌ی essentials استفاده می‌کند. دانلود فقط در اولین پخش و در صورت نبودن runtime انجام می‌شود.

## مدل Hugging Face

دانلود خودکار با دکمه‌ی **دانلود/بررسی مدل** یا هنگام اولین پخش انجام می‌شود. دانلود دستی:

```bash
huggingface-cli download KEYHAN-A/aava-tts-persian-3b \
  --local-dir "$HOME/.cache/huggingface/models/KEYHAN-A/aava-tts-persian-3b"
huggingface-cli download hubertsiuzdak/snac_24khz
```

مسیرهای قابل شناسایی:

```text
Linux:   ~/.cache/huggingface/models/KEYHAN-A/aava-tts-persian-3b
Windows: C:\Users\amire\.cache\huggingface\models\KEYHAN-A\aava-tts-persian-3b
```

برای مسیر سفارشی:

```bash
export AAVA_MODEL=/path/to/aava-tts-persian-3b
```

همچنین `HF_HOME` و snapshotهای استاندارد Hugging Face بررسی می‌شوند.

## ساخت خروجی مستقل

PyInstaller باید روی همان سیستم‌عامل مقصد اجرا شود.

Linux:

```bash
cd desktop/pdf-reader
python3 -m pip install -r requirements.txt pyinstaller torch
chmod +x build-release.sh
./build-release.sh
./dist/aava-pdf-reader --self-test
```

Windows PowerShell:

```powershell
cd desktop\pdf-reader
py -m pip install -r requirements.txt pyinstaller torch
py pdf_reader.py --self-test
pyinstaller --clean --noconfirm aava-pdf-reader.spec
```

EXE نیازی به FFmpeg کنار خود ندارد؛ در اولین پخش، runtime در `%LOCALAPPDATA%\AavaPdfReader\ffmpeg` نصب می‌شود.

## GitHub Release

Workflow در `.github/workflows/release-reader.yml` با tag نسخه‌ای، هر دو بسته را در runner مناسب می‌سازد:

```bash
git tag v1.0.0
git push origin v1.0.0
```

خروجی‌ها:

```text
aava-pdf-reader-linux-installer.sh
aava-pdf-reader-windows.zip
```

به‌دلیل حجم بسیار زیاد PyTorch و محدودیت حجم فایل GitHub Release، نسخه‌ی Linux به‌صورت installer سبک ارائه می‌شود. installer با یک اجرا محیط Python، وابستگی‌ها، برنامه و در اولین پخش مدل/FFmpeg را خودکار آماده می‌کند و نیازی به تنظیم PATH ندارد:

```bash
chmod +x aava-pdf-reader-linux-installer.sh
./aava-pdf-reader-linux-installer.sh
```

## تست

```bash
python3 -m py_compile pdf_reader.py test_reader.py
python3 test_reader.py
python3 pdf_reader.py --self-test
```

تست self-test وجود کد و قابلیت شناسایی runtime را بررسی می‌کند؛ دانلود FFmpeg و مدل سنگین در تست build انجام نمی‌شود. PDF اسکن‌شده بدون لایه‌ی متن نیازمند OCR است.
