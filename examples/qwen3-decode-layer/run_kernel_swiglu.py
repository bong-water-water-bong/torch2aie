#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Run the isolated SwiGLU NPU numerical microbench."""

from __future__ import annotations

import argparse
from pathlib import Path

import npu_build
import numpy as np
from aie.utils.hostruntime.xrtruntime.tensor import XRTTensor
from ml_dtypes import bfloat16

from cases import kernel_swiglu_generate as generate
from cases.full_layer_engine_reference import _swiglu_bf16_inputs
from cases.qwen3_8b_decode_layer_reference import bf16_compare_stats, format_bf16_compare_stats

EXPERIMENT_DIR = Path(__file__).parent
BUILD_NAME = generate.CASE_NAME
ABS_TOL = 0.01
REL_TOL = 0.02


def _build_kernel() -> tuple[Path, Path]:
    build_dir = EXPERIMENT_DIR / "build" / BUILD_NAME
    build_dir.mkdir(parents=True, exist_ok=True)
    mlir_path = build_dir / "design.mlir"
    xclbin_path = build_dir / "design.xclbin"
    insts_path = build_dir / "design.bin"

    mlir_text = generate.generate_mlir()
    mlir_path.write_text(mlir_text)
    errors = generate.validate_generated_mlir(mlir_text)
    if errors:
        raise RuntimeError("\n".join(f"  SWIGLU STRUCTURE FAIL: {error}" for error in errors))
    npu_build.compile_mlir(mlir_path, xclbin_path, insts_path)
    return xclbin_path, insts_path


def _make_input(seed: int) -> np.ndarray:
    rng = np.random.default_rng(seed)
    values = rng.normal(loc=0.0, scale=1.25, size=generate.C6R2_INPUT_DWORDS * 2).astype(np.float32)
    values = np.clip(values, -4.0, 4.0).astype(bfloat16)
    packed = np.frombuffer(values.tobytes(), dtype=np.int32).copy()
    if packed.shape != (generate.C6R2_INPUT_DWORDS,):
        raise RuntimeError(f"SwiGLU input shape mismatch: {packed.shape} != {(generate.C6R2_INPUT_DWORDS,)}")
    return packed


def run(seed: int, build_only: bool) -> bool:
    print("=" * 78)
    print(f"qwen3 isolated kernel microbench: {generate.CASE_NAME}")
    print("=" * 78)
    print("  kernel=swiglu.o only")
    print("  ABI=512 dword up/gate compact payload -> 256 dword bf16 SwiGLU output")
    print("  oracle=MyLM 64-segment SiLU linear LUT")
    print()

    xclbin_path, insts_path = _build_kernel()
    print(f"  xclbin={xclbin_path}")
    print(f"  insts={insts_path}")
    if build_only:
        return True

    input_words = _make_input(seed)
    expected_values = _swiglu_bf16_inputs(input_words)
    expected = np.frombuffer(expected_values.tobytes(), dtype=np.int32).copy()
    if expected.shape != (generate.SWIGLU_OUTPUT_DWORDS,):
        raise RuntimeError(f"SwiGLU expected shape mismatch: {expected.shape} != {(generate.SWIGLU_OUTPUT_DWORDS,)}")

    input_buf = XRTTensor(input_words.copy(), dtype=np.int32)
    output_buf = XRTTensor(np.full((generate.SWIGLU_OUTPUT_DWORDS,), -1, dtype=np.int32), dtype=np.int32)

    print("  Loading NPU kernel...")
    handle = npu_build.load_kernel(xclbin_path, insts_path)
    print("  Running on NPU...")
    result = npu_build.run(handle, [input_buf, output_buf])
    got = output_buf.numpy().astype(np.int32)
    stats = bf16_compare_stats("swiglu_output", expected, got, ABS_TOL, REL_TOL)
    print(f"  NPU time: {result.npu_time / 1e3:.1f} us")
    print("  " + format_bf16_compare_stats(stats))
    if stats.mismatch_count:
        print("  FAIL: SwiGLU isolated numerical validation failed")
        return False
    print("  PASS: SwiGLU isolated numerical validation")
    return True


def main() -> None:
    parser = argparse.ArgumentParser(prog="qwen3 swiglu kernel microbench")
    parser.add_argument("--seed", type=int, default=7)
    parser.add_argument("--build-only", action="store_true")
    args = parser.parse_args()

    ok = run(seed=args.seed, build_only=args.build_only)
    raise SystemExit(0 if ok else 1)


if __name__ == "__main__":
    main()
