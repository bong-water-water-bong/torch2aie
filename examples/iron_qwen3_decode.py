#!/usr/bin/env python3
"""IRON-based fused Qwen3-0.6B decode layer.
Uses ObjectFifo for deadlock-free lock protocol across all cores.
"""
import sys, os, math
from pathlib import Path

REPO = Path(__file__).parent.parent  # torch2aie
IRON = Path("/home/bcloud/iron")
MLIR_TC = Path("/home/bcloud/mlir-aie/npu2_40_toolchain/python")
XRT_PY = Path("/home/bcloud/torch2aie/toolchain/xrt/python")
sys.path.insert(0, str(IRON))
sys.path.insert(0, str(MLIR_TC))
sys.path.insert(0, str(XRT_PY))

from iron.common.sequence import OperatorSequence
from iron.operators import GEMV, ElementwiseAdd
from iron.operators.rms_norm.op import RMSNorm
from iron.operators.rope.op import RoPE

# Qwen3-0.6B dimensions
H = 1024; NH = 16; NKV = 8; HD = 128; IM = 3072
N_COLS = 8

def build_fused_decode(context):
    """Single transformer block decode (M=1, using GEMV)."""
    print(f"Building fused decode: H={H} NH={NH} NKV={NKV} HD={HD} IM={IM} cols={N_COLS}")

    # GEMV for all linear projections (decode: M=1)
    # GEMV: M=output_dim, K=input_dim. M must be multiple of cols.
    # QKV: out=4096, in=H=1024
    qkv_n = NH * HD + 2 * NKV * HD  # 4096
    qkv = GEMV(M=qkv_n, K=H, num_aie_columns=N_COLS, context=context)
    # O: out=H=1024, in=NH*HD=2048
    attn_o = GEMV(M=H, K=NH*HD, num_aie_columns=N_COLS, context=context)
    # FFN gate/up: out=IM=3072, in=H=1024
    ffn_gate = GEMV(M=IM, K=H, num_aie_columns=N_COLS, context=context)
    ffn_up = GEMV(M=IM, K=H, num_aie_columns=N_COLS, context=context)
    # FFN down: out=H=1024, in=IM=3072
    ffn_down = GEMV(M=H, K=IM, num_aie_columns=N_COLS, context=context)

    rms1 = RMSNorm(size=H, num_aie_columns=N_COLS, num_channels=1, tile_size=128, weighted=True, context=context)
    rms2 = RMSNorm(size=H, num_aie_columns=N_COLS, num_channels=1, tile_size=128, weighted=True, context=context)
    rope_q = RoPE(rows=NH, cols=HD, angle_rows=1, context=context)
    rope_k = RoPE(rows=NKV, cols=HD, angle_rows=1, context=context)

    from iron.operators.silu.op import SiLU
    silu = SiLU(size=IM, num_aie_columns=N_COLS, tile_size=384, context=context)
    add = ElementwiseAdd(size=H, num_aie_columns=N_COLS, tile_size=128, context=context)
    ew_mul = ElementwiseAdd(size=IM, num_aie_columns=N_COLS, tile_size=384, context=context)

    runlist = [
        (rms1, "x", "W_norm1", "x_norm"),
        (qkv, "W_qkv", "x_norm", "qkv"),
        (rope_q, "q", "rope_angles", "q_rotated"),
        (rope_k, "k", "rope_angles", "k_rotated"),
        (attn_o, "W_o", "qkv", "attn_out"),
        (add, "x", "attn_out", "x"),
        (rms2, "x", "W_norm2", "x_norm"),
        (ffn_gate, "W_gate", "x_norm", "gate"),
        (ffn_up, "W_up", "x_norm", "up"),
        (silu, "gate", "gate_act"),
        (ew_mul, "gate_act", "up", "ffn_hidden"),
        (ffn_down, "W_down", "ffn_hidden", "ffn_out"),
        (add, "x", "ffn_out", "x"),
    ]

    seq = OperatorSequence("qwen3_decode", runlist,
        input_args=["x", "rope_angles"],
        output_args=["x"],
        buffer_sizes={},
        context=context)
    return seq


def main():
    from iron.common.context import AIEContext
    context = AIEContext()
    context.build_dir = Path("/home/bcloud/torch2aie/examples/build/iron_fused_test")
    context.build_dir.mkdir(parents=True, exist_ok=True)

    stray = Path("/home/bcloud/mlir-aie/npu2_40_toolchain/python/iron")
    if stray.exists():
        stray.rename(stray.with_name("iron_stray"))
    try:
        seq = build_fused_decode(context)
        print("Compiling fused sequence...")
        seq.compile()
        print("✅ Fused ELF compiled!")
        callable = seq.get_callable()
        print(f"Callable: {type(callable).__name__}")
        print(f"Buffers: {list(callable.get_buffers().keys())}")
    finally:
        stray2 = stray.with_name("iron_stray")
        if stray2.exists():
            stray2.rename(stray)

if __name__ == "__main__":
    main()
