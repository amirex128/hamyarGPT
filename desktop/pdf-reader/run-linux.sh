#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$(readlink -f "$0")")"
PYTHON_BIN="${AAVA_PYTHON:-python3}"
exec "$PYTHON_BIN" pdf_reader.py "$@"
