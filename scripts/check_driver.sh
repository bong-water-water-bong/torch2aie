#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

XDNA_SHIM="$ROOT/toolchain/xrt/lib64/libxrt_driver_xdna.so"

if [ -f "$XDNA_SHIM" ]; then
  echo "vendored XRT XDNA shim: $XDNA_SHIM"
else
  echo "vendored XRT XDNA shim missing: $XDNA_SHIM"
fi

if lsmod | grep -q '^amdxdna'; then
  echo "loaded module: amdxdna"
  modinfo -n amdxdna 2>/dev/null | sed 's/^/loaded module path: /'
else
  echo "loaded module: amdxdna not loaded"
fi
