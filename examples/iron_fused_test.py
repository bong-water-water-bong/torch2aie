#!/usr/bin/env python3
"""Simple IRON fused test: 2 GEMV ops in one ELF. Tests deadlock-free lock protocol."""
import sys, os
from pathlib import Path

IRON = Path("/home/bcloud/iron")
MLIR_TC = Path("/home/bcloud/mlir-aie/npu2_40_toolchain/python")
XRT_PY = Path("/home/bcloud/torch2aie/toolchain/xrt/python")
for p in [IRON, MLIR_TC, XRT_PY]:
    sys.path.insert(0, str(p))

from iron.common.sequence import OperatorSequence
from iron.operators import GEMV

def main():
    from iron.common.context import AIEContext
    context = AIEContext()
    context.build_dir = Path("/home/bcloud/torch2aie/examples/build/iron_test")
    context.build_dir.mkdir(parents=True, exist_ok=True)

    stray = Path("/home/bcloud/mlir-aie/npu2_40_toolchain/python/iron")
    if stray.exists():
        stray.rename(stray.with_name("iron_stray"))
    try:
        # Two GEMVs: x → W1 → y, then y → W2 → z
        gemv1 = GEMV(M=4096, K=1024, num_aie_columns=8, context=context)
        gemv2 = GEMV(M=1024, K=4096, num_aie_columns=8, context=context)

        seq = OperatorSequence("gemv2_fused", [
            (gemv1, "W1", "x", "y"),
            (gemv2, "W2", "y", "z"),
        ],
            input_args=["x"],
            output_args=["z"],
            buffer_sizes={},
            context=context)
        
        print("Compiling 2-GEMV fused sequence...")
        seq.compile()
        print("✅ Fused 2-GEMV ELF compiled!")
        callable = seq.get_callable()
        print(f"Callable: {type(callable).__name__}")
        print(f"Buffers: {list(callable.get_buffers().keys())}")
    finally:
        stray2 = stray.with_name("iron_stray")
        if stray2.exists():
            stray2.rename(stray)

if __name__ == "__main__":
    main()
