#!/bin/bash
THIS_SCRIPT_PARENT="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
cd "$THIS_SCRIPT_PARENT" || exit 1
PILFER="$THIS_SCRIPT_PARENT/pilfer_container_files.sh"

apptainer build --fakeroot --force debian_app.sif build_debian.def && bash "$PILFER"
