#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
root="$(cd "$script_dir/.." && pwd)"

if [ ! -x "${TORCH2AIE_VENV:-$root/.venv}/bin/python" ]; then
  "$root/scripts/setup_python.sh"
fi

# shellcheck source=env.sh
source "$root/scripts/env.sh"

config="${1:-${GEMM_ATB_CONFIG:-config2}}"
case "$config" in
  config1)
    default_m=4096
    default_k=4096
    default_n=2048
    default_target_tflops=24.3
    ;;
  config2)
    default_m=3072
    default_k=4096
    default_n=1536
    default_target_tflops=31.3
    ;;
  config2_w4a16)
    default_m=3072
    default_k=4096
    default_n=1536
    default_target_tflops=31.3
    ;;
  config3)
    default_m=4096
    default_k=4096
    default_n=2048
    default_target_tflops=28.5
    ;;
  *)
    echo "unknown ATB config: $config" >&2
    echo "valid configs: config1 config2 config2_w4a16 config3" >&2
    exit 2
    ;;
esac

example_dir="$root/examples/gemm_asymmetric_tile_buffering"
config_dir="$example_dir/$config"

M="${GEMM_M:-$default_m}"
K="${GEMM_K:-$default_k}"
N="${GEMM_N:-$default_n}"
warmup="${GEMM_WARMUP:-20}"
iters="${GEMM_ITERS:-20}"
verify="${GEMM_VERIFY:-false}"
verbosity="${GEMM_VERBOSITY:-1}"
opt_perf="${GEMM_OPT_PERF:-1}"
run="${GEMM_RUN:-1}"
target_tflops="${GEMM_TARGET_TFLOPS:-$default_target_tflops}"

runargs="-v $verbosity --warmup $warmup --iters $iters --verify=$verify"
if [ "$config" != "config2_w4a16" ] && [ "${GEMM_W4A16_PREDEQUANT:-0}" = "1" ]; then
  runargs="$runargs --w4a16-predequant=true"
  runargs="$runargs --w4-group-size ${GEMM_W4_GROUP_SIZE:-128}"
  runargs="$runargs --w4-symmetric=${GEMM_W4_SYMMETRIC:-false}"
fi
if [ "$config" = "config2_w4a16" ]; then
  runargs="$runargs --w4-group-size ${GEMM_W4_GROUP_SIZE:-32}"
  runargs="$runargs --w4-symmetric=${GEMM_W4_SYMMETRIC:-false}"
fi

"$TORCH2AIE_PYTHON" - "$config" "$M" "$K" "$N" "$target_tflops" <<'PY'
import sys

config = sys.argv[1]
M, K, N = (int(x) for x in sys.argv[2:5])
target = float(sys.argv[5])
ops = 2 * M * K * N
target_us = ops / (target * 1e12) * 1e6
print(f"ATB GEMM {config}: MxKxN={M}x{K}x{N}")
print(f"work: {ops:,} ops ({ops / 1e12:.6f} TOP-equivalent)")
print(f"target at {target:.2f} TFLOPS: {target_us:.1f} us")
PY

make_args=(
  "use_chess=1"
  "use_placed=1"
  "devicename=npu2"
  "opt_perf=$opt_perf"
  "M=$M"
  "K=$K"
  "N=$N"
)

make -C "$config_dir" "${make_args[@]}" all

if [ "$run" = "1" ]; then
  make -C "$config_dir" "${make_args[@]}" "runargs=$runargs" run
else
  echo "build complete; set GEMM_RUN=1 to run on the NPU"
fi
