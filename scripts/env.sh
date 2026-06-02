#!/usr/bin/env bash
set -euo pipefail

if [ -n "${BASH_SOURCE[0]:-}" ]; then
  _torch2aie_env_path="${BASH_SOURCE[0]}"
else
  _torch2aie_env_path="$0"
fi

export TORCH2AIE_ROOT
TORCH2AIE_ROOT="$(cd "$(dirname "$_torch2aie_env_path")/.." && pwd)"

export TORCH2AIE_TOOLCHAIN="$TORCH2AIE_ROOT/toolchain"
export TORCH2AIE_VENV="${TORCH2AIE_VENV:-$TORCH2AIE_ROOT/.venv}"
export TORCH2AIE_PYTHON="${TORCH2AIE_PYTHON:-$TORCH2AIE_VENV/bin/python}"
export TORCH2AIE_SYSROOT="$TORCH2AIE_TOOLCHAIN/sysroot"
export TORCH2AIE_AIETOOLS="$TORCH2AIE_TOOLCHAIN/aietools"
export MLIR_AIE_DIR="$TORCH2AIE_TOOLCHAIN/mlir_aie"

if [ ! -x "$TORCH2AIE_PYTHON" ]; then
  echo "missing uv-managed Python environment: $TORCH2AIE_VENV" >&2
  echo "run: $TORCH2AIE_ROOT/scripts/setup_python.sh" >&2
  if [ "${BASH_SOURCE[0]:-}" != "$0" ]; then
    return 1
  fi
  exit 1
fi

export AIETOOLS="$TORCH2AIE_AIETOOLS"
export AIETOOLS_DIR="$TORCH2AIE_AIETOOLS"
export XILINX_VITIS_AIETOOLS="$TORCH2AIE_AIETOOLS"
export XILINX_XRT="$TORCH2AIE_TOOLCHAIN/xrt"

if [ -f "$TORCH2AIE_ROOT/licenses/Xilinx.lic" ]; then
  export XILINXD_LICENSE_FILE="${XILINXD_LICENSE_FILE:-$TORCH2AIE_ROOT/licenses/Xilinx.lic}"
  export LM_LICENSE_FILE="${LM_LICENSE_FILE:-$TORCH2AIE_ROOT/licenses/Xilinx.lic}"
fi

export PYTHONNOUSERSITE=1
export PYTHONPATH="$TORCH2AIE_TOOLCHAIN:$MLIR_AIE_DIR/python:$MLIR_AIE_DIR/src/python${PYTHONPATH:+:$PYTHONPATH}"

export PATH="$TORCH2AIE_VENV/bin:$TORCH2AIE_TOOLCHAIN/bin:$MLIR_AIE_DIR/bin:$TORCH2AIE_AIETOOLS/bin:$TORCH2AIE_TOOLCHAIN/xrt/bin:$PATH"
export LD_LIBRARY_PATH="$TORCH2AIE_SYSROOT/usr/lib64:$TORCH2AIE_TOOLCHAIN/mlir_aie.libs:$MLIR_AIE_DIR/lib:$TORCH2AIE_AIETOOLS/lib:$TORCH2AIE_AIETOOLS/lib/lnx64.o:$TORCH2AIE_TOOLCHAIN/xrt/lib64${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
export LIBRARY_PATH="$TORCH2AIE_SYSROOT/usr/lib64${LIBRARY_PATH:+:$LIBRARY_PATH}"
export CPATH="$TORCH2AIE_SYSROOT/usr/include:$TORCH2AIE_AIETOOLS/include${CPATH:+:$CPATH}"
export CMAKE_PREFIX_PATH="$TORCH2AIE_TOOLCHAIN/xrt:$MLIR_AIE_DIR${CMAKE_PREFIX_PATH:+:$CMAKE_PREFIX_PATH}"
