#!/usr/bin/env bash
set -euo pipefail

echo "
-------------------------------------------------------------------------------
"

echo "Prolog: $(basename $0)" | sudo tee -a /tmp/slurmdebug.log
env

echo "
-------------------------------------------------------------------------------
"