#!/usr/bin/env bash
set -euo pipefail
APP_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/aava-pdf-reader"
REPO_URL="https://github.com/amirex128/hamyarGPT/archive/refs/heads/master.tar.gz"
mkdir -p "$APP_HOME"
command -v python3 >/dev/null || { echo 'python3 is required'; exit 1; }
if command -v apt-get >/dev/null && command -v sudo >/dev/null; then sudo apt-get update -qq; sudo apt-get install -y python3-venv python3-tk; fi
if [ ! -f "$APP_HOME/pdf_reader.py" ]; then
  tmp=$(mktemp -d); trap 'rm -rf "$tmp"' EXIT
  curl -fsSL "$REPO_URL" | tar -xz -C "$tmp"
  cp "$tmp"/hamyarGPT-master/desktop/pdf-reader/{pdf_reader.py,requirements.txt} "$APP_HOME/"
fi
python3 -m venv "$APP_HOME/venv"
"$APP_HOME/venv/bin/pip" install --upgrade pip
"$APP_HOME/venv/bin/pip" install -r "$APP_HOME/requirements.txt" torch
exec "$APP_HOME/venv/bin/python" "$APP_HOME/pdf_reader.py"
