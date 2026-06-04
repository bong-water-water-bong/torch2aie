#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Run the isolated c1r2 full-vector add NPU numerical microbench."""

from __future__ import annotations

import argparse
from pathlib import Path

import npu_build
import numpy as np
from aie.utils.hostruntime.xrtruntime.tensor import XRTTensor
from ml_dtypes import bfloat16

from cases import kernel_full_vector_add_generate as generate
from cases.full_layer_engine_reference import HIDDEN_DWORDS
from cases.qwen3_8b_decode_layer_reference import (
    bf16_compare_stats,
    format_bf16_compare_stats,
)
from contract import COMPACT_PACKET_DWORDS

EXPERIMENT_DIR = Path(__file__).parent
ABS_TOL = 0.0
REL_TOL = 0.0


def _pack_bf16_i32(values: np.ndarray) -> np.ndarray:
    return np.frombuffer(values.astype(bfloat16).tobytes(), dtype=np.int32).copy()


def _make_fixture(seed: int) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
    rng = np.random.default_rng(seed)
    hidden = rng.normal(loc=0.0, scale=0.7, size=HIDDEN_DWORDS * 2).astype(np.float32).astype(bfloat16)
    compact_payload = rng.normal(loc=0.0, scale=0.3, size=(COMPACT_PACKET_DWORDS - 1) * 2)
    compact_payload = compact_payload.astype(np.float32).astype(bfloat16)
    compact = np.empty((COMPACT_PACKET_DWORDS,), dtype=np.int32)
    compact[0] = 0x4
    compact[1:] = _pack_bf16_i32(compact_payload)
    expected = hidden.copy()
    expected[: compact_payload.shape[0]] = (
        hidden[: compact_payload.shape[0]].astype(np.float32)
        + compact_payload.astype(np.float32)
    ).astype(bfloat16)
    return compact, _pack_bf16_i32(hidden), _pack_bf16_i32(expected)


def _build_kernel() -> tuple[Path, Path]:
    build_dir = EXPERIMENT_DIR / "build" / generate.CASE_NAME
    build_dir.mkdir(parents=True, exist_ok=True)
    mlir_path = build_dir / "design.mlir"
    xclbin_path = build_dir / "design.xclbin"
    insts_path = build_dir / "design.bin"

    mlir_text = generate.generate_mlir()
    mlir_path.write_text(mlir_text)
    errors = generate.validate_generated_mlir(mlir_text)
    if errors:
        raise RuntimeError("\n".join(f"  FULL-VECTOR-ADD STRUCTURE FAIL: {error}" for error in errors))
    npu_build.compile_mlir(mlir_path, xclbin_path, insts_path)
    return xclbin_path, insts_path


def _print_first_mismatch(expected: np.ndarray, got: np.ndarray) -> None:
    expected_values = np.frombuffer(expected.tobytes(), dtype=bfloat16).astype(np.float32)
    got_values = np.frombuffer(got.tobytes(), dtype=bfloat16).astype(np.float32)
    mismatch = np.flatnonzero(expected_values != got_values)
    if mismatch.size == 0:
        return
    lane = int(mismatch[0])
    print(
        f"  first_mismatch: lane={lane} "
        f"expected={float(expected_values[lane]):.9f} got={float(got_values[lane]):.9f}"
    )


def run(seed: int, build_only: bool) -> bool:
    print("=" * 78)
    print(f"qwen3 isolated kernel microbench: {generate.CASE_NAME}")
    print("=" * 78)
    print("  kernel=full_vector_station.o only")
    print("  ABI=hidden + one compact packet -> updated hidden")
    print()

    xclbin_path, insts_path = _build_kernel()
    print(f"  xclbin={xclbin_path}")
    print(f"  insts={insts_path}")
    if build_only:
        return True

    compact, hidden, expected = _make_fixture(seed)
    compact_buf = XRTTensor(compact.copy(), dtype=np.int32)
    hidden_buf = XRTTensor(hidden.copy(), dtype=np.int32)
    output_buf = XRTTensor(np.full((HIDDEN_DWORDS,), -1, dtype=np.int32), dtype=np.int32)

    print("  Loading NPU kernel...")
    handle = npu_build.load_kernel(xclbin_path, insts_path)
    print("  Running on NPU...")
    result = npu_build.run(handle, [compact_buf, hidden_buf, output_buf])
    got = output_buf.numpy().astype(np.int32)
    stats = bf16_compare_stats("full_vector_add_hidden", expected, got, ABS_TOL, REL_TOL)
    print(f"  NPU time: {result.npu_time / 1e3:.1f} us")
    print("  " + format_bf16_compare_stats(stats))
    if stats.mismatch_count:
        _print_first_mismatch(expected, got)
        print("  FAIL: full_vector add-only numerical validation failed")
        return False
    print("  PASS: full_vector add-only numerical validation")
    return True


def main() -> None:
    parser = argparse.ArgumentParser(prog="qwen3 full_vector add kernel microbench")
    parser.add_argument("--seed", type=int, default=23)
    parser.add_argument("--build-only", action="store_true")
    args = parser.parse_args()

    ok = run(seed=args.seed, build_only=args.build_only)
    raise SystemExit(0 if ok else 1)


if __name__ == "__main__":
    main()
