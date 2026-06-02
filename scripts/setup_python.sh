#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
root="$(cd "$script_dir/.." && pwd)"
venv="${TORCH2AIE_VENV:-$root/.venv}"

uv venv --python 3.12 --allow-existing "$venv"
VIRTUAL_ENV="$venv" uv pip install -r "$root/requirements-python.txt"

echo "Python environment ready: $venv"
