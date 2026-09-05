#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$(readlink -f "$0")")"
python3 -m pip install --upgrade -r requirements.txt pyinstaller torch
python3 pdf_reader.py --self-test
rm -rf build dist
pyinstaller --clean --noconfirm aava-pdf-reader.spec
platform=linux
if [[ "${RUNNER_OS:-}" == "Windows" ]]; then platform=windows; fi
if command -v zip >/dev/null 2>&1; then (cd dist && zip -r "aava-pdf-reader-${platform}.zip" aava-pdf-reader >/dev/null); fi
