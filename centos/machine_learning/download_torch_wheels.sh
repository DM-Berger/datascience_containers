#!/usr/bin/env bash
THIS_SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
cd "$THIS_SCRIPT_DIR" || exit 1
mkdir -p build_files
cd "$THIS_SCRIPT_DIR/build_files" || exit 1

pip download --python-version 3.10.8 --no-deps torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116 --dest .