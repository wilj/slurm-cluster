#!/usr/bin/env bash
set -euo pipefail
. $(dirname $(realpath $0))/lib.sh


httpEcho "
$(basename $0) 
$(env)
"