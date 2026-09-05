# PyInstaller spec; build on the target OS (PyInstaller is not a cross-compiler).
from PyInstaller.utils.hooks import collect_submodules
hiddenimports = collect_submodules('snac') + collect_submodules('transformers')
a = Analysis(['pdf_reader.py'], pathex=['.'], binaries=[], datas=[], hiddenimports=hiddenimports, hookspath=[], hooksconfig={}, runtime_hooks=[], excludes=[], noarchive=False)
pyz = PYZ(a.pure)
exe = EXE(pyz, a.scripts, a.binaries, a.datas, [], name='aava-pdf-reader', debug=False, bootloader_ignore_signals=False, strip=False, upx=True, console=False)
