#!/bin/bash
THIS_SCRIPT_PARENT="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
cd "$THIS_SCRIPT_PARENT" || exit 1
CONTAINER="$THIS_SCRIPT_PARENT/alpine_app.sif"
SANDBOX="alpine_app"

sudo apptainer build --sandbox "$SANDBOX" "$CONTAINER"
