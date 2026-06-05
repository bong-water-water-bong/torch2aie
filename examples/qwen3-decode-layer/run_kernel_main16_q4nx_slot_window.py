#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Run the production-layout short-window Main16 Q4NX microbench."""

from __future__ import annotations

import argparse
from pathlib import Path

import npu_build
import numpy as np
from aie.utils.hostruntime.xrtruntime.tensor import XRTTensor
from ml_dtypes import bfloat16

from cases import kernel_main16_q4nx_chunk_slot_generate as generate
from run_kernel_main16_q4nx_chunk_slot import (
    DATA_OFFSET_BYTES,
    GROUP_SIZE,
    GROUPS,
    Q4_DATA_BYTES_PER_LANE,
    Q4_GROUP_BYTES_PER_LANE,
    ROWS,
    ROWS_PER_TILE,
    SCALE_BYTES,
    OFFSET_BYTES,
    _bf16_words,
    _dequant,
    _make_fixture,
    _pack_bf16_i32,
    _unpack_dim,
)

EXPERIMENT_DIR = Path(__file__).parent
PAIR_LIMIT = 2

generate.CASE_NAME = "qwen3-kernel-main16-q4nx-slot-window"
generate.OBJECT_NAME = "main16_q4nx_slot_window_probe.o"
generate.ENTRY_NAME = "main16_q4nx_slot_window_i32_probe"


def _slot_window_oracle(weight_words: np.ndarray, activation_words: np.ndarray) -> np.ndarray:
    weight_bytes = weight_words.astype(np.int32).tobytes()
    scales = np.frombuffer(weight_bytes[:SCALE_BYTES], dtype=bfloat16).reshape(GROUPS, ROWS_PER_TILE)
    offsets = np.frombuffer(
        weight_bytes[SCALE_BYTES : SCALE_BYTES + OFFSET_BYTES],
        dtype=bfloat16,
    ).reshape(GROUPS, ROWS_PER_TILE)
    packed = np.frombuffer(weight_bytes[DATA_OFFSET_BYTES:], dtype=np.uint8)
    activation = _bf16_words(activation_words).astype(np.float32).reshape(GROUPS, GROUP_SIZE)

    out = np.zeros((ROWS_PER_TILE,), dtype=np.float32)
    low_group = packed[:Q4_GROUP_BYTES_PER_LANE]
    high_group = packed[Q4_DATA_BYTES_PER_LANE : Q4_DATA_BYTES_PER_LANE + Q4_GROUP_BYTES_PER_LANE]
    for dim in range(PAIR_LIMIT * 2):
        low_coeff = _dequant(_unpack_dim(low_group, dim), scales[0, :ROWS], offsets[0, :ROWS])
        high_coeff = _dequant(_unpack_dim(high_group, dim), scales[0, ROWS:], offsets[0, ROWS:])
        act = np.float32(activation[0, dim])
        np.add(out[:ROWS], low_coeff * act, out=out[:ROWS])
        np.add(out[ROWS:], high_coeff * act, out=out[ROWS:])
    return _pack_bf16_i32(out)


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
        raise RuntimeError("\n".join(f"  SLOT-WINDOW STRUCTURE FAIL: {error}" for error in errors))
    npu_build.compile_mlir(mlir_path, xclbin_path, insts_path)
    return xclbin_path, insts_path


def _print_first_mismatch(expected: np.ndarray, got: np.ndarray) -> None:
    expected_values = _bf16_words(expected).astype(np.float32)
    got_values = _bf16_words(got).astype(np.float32)
    mismatch = np.flatnonzero(expected_values != got_values)
    if mismatch.size == 0:
        return
    lane = int(mismatch[0])
    print(
        f"  first_mismatch: lane={lane} "
        f"expected={expected_values[lane]:.9f} got={got_values[lane]:.9f}"
    )


def run(seed: int, build_only: bool) -> bool:
    print("=" * 78)
    print(f"qwen3 isolated kernel microbench: {generate.CASE_NAME}")
    print("=" * 78)
    print(f"  kernel={generate.OBJECT_NAME} only")
    print("  ABI=production Main16 one chunk: activation=128 dword, weight=1280 dword")
    print(f"  window=group0, pair_limit={PAIR_LIMIT}, dims={PAIR_LIMIT * 2}")
    print("  oracle=exact Q4NX dequant for the short slot-window body")
    print()

    xclbin_path, insts_path = _build_kernel()
    print(f"  xclbin={xclbin_path}")
    print(f"  insts={insts_path}")
    if build_only:
        return True

    activation_words, weight_words, _ = _make_fixture(seed)
    expected = _slot_window_oracle(weight_words, activation_words)
    activation_buf = XRTTensor(activation_words.copy(), dtype=np.int32)
    weight_buf = XRTTensor(weight_words.copy(), dtype=np.int32)
    output_buf = XRTTensor(np.full((generate.OUTPUT_DWORDS,), -1, dtype=np.int32), dtype=np.int32)

    print("  Loading NPU kernel...")
    handle = npu_build.load_kernel(xclbin_path, insts_path)
    print("  Running on NPU...")
    result = npu_build.run(handle, [activation_buf, weight_buf, output_buf])
    got = output_buf.numpy().astype(np.int32)
    mismatches = int(np.count_nonzero(expected != got))
    print(f"  NPU time: {result.npu_time / 1e3:.1f} us")
    print(f"  output_words: mismatches={mismatches}")
    print(f"  expected[0:8]: {expected[:8].tolist()}")
    print(f"  got[0:8]:      {got[:8].tolist()}")
    if mismatches:
        _print_first_mismatch(expected, got)
        print("  FAIL: slot-window numerical validation failed")
        return False
    print("  PASS: slot-window numerical validation")
    return True


def main() -> None:
    parser = argparse.ArgumentParser(prog="qwen3 Main16 Q4NX slot-window probe")
    parser.add_argument("--seed", type=int, default=37)
    parser.add_argument("--build-only", action="store_true")
    args = parser.parse_args()

    ok = run(seed=args.seed, build_only=args.build_only)
    raise SystemExit(0 if ok else 1)


if __name__ == "__main__":
    main()
