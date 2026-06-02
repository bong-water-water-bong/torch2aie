#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
root="$(cd "$script_dir/.." && pwd)"

if [ ! -x "${TORCH2AIE_VENV:-$root/.venv}/bin/python" ]; then
  "$root/scripts/setup_python.sh"
fi

# shellcheck source=env.sh
source "$root/scripts/env.sh"

seq_len="${ATTN_SEQ_LEN:-512}"
heads="${ATTN_HEADS:-1}"
kv_heads="${ATTN_KV_HEADS:-0}"
pipelines="${ATTN_PIPELINES:-8}"
head_dim="${ATTN_HEAD_DIM:-64}"
warmup="${ATTN_WARMUP:-2}"
iters="${ATTN_ITERS:-5}"
verify="${ATTN_VERIFY:-true}"
verbosity="${ATTN_VERBOSITY:-1}"
run="${ATTN_RUN:-1}"

"$TORCH2AIE_PYTHON" - "$seq_len" "$heads" "$kv_heads" "$pipelines" "$head_dim" <<'PY'
import math
import sys

seq_len, heads, kv_heads, pipelines, head_dim = (int(x) for x in sys.argv[1:])
effective_kv_heads = heads if kv_heads == 0 else kv_heads
seq_pad = math.ceil(seq_len / (64 * pipelines)) * (64 * pipelines)
score_ops = heads * seq_len * (seq_len + 1) * head_dim
pv_ops = heads * seq_len * (seq_len + 1) * head_dim
print(f"Prefill attention: heads={heads}, kv_heads={effective_kv_heads}, seq={seq_len}, padded_seq={seq_pad}, head_dim={head_dim}, pipelines={pipelines}")
print(f"causal QK+PV work: {(score_ops + pv_ops):,} multiply-add-equivalent ops")
PY

make_args=(
  "SEQ_LEN=$seq_len"
  "HEADS=$heads"
  "KV_HEADS=$kv_heads"
  "PIPELINES=$pipelines"
  "HEAD_DIM=$head_dim"
  "WARMUP=$warmup"
  "ITERS=$iters"
  "VERIFY=$verify"
  "VERBOSITY=$verbosity"
)

make -C "$root/examples/prefill_attention" "${make_args[@]}" all

if [ "$run" = "1" ]; then
  make -C "$root/examples/prefill_attention" "${make_args[@]}" run
else
  echo "build complete; set ATTN_RUN=1 to run on the NPU"
fi
