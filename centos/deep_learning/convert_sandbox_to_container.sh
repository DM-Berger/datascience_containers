#!/bin/bash
THIS_SCRIPT_PARENT="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
cd "$THIS_SCRIPT_PARENT" || exit 1
CONTAINER="$THIS_SCRIPT_PARENT/centos_app.sif"
SANDBOX="centos_app"

sudo apptainer build "$CONTAINER" "$SANDBOX"
