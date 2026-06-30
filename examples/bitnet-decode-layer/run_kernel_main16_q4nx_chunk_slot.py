#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Run the production-layout one-chunk Main16 Q4NX slot-body microbench."""

from __future__ import annotations

import argparse
from pathlib import Path

import npu_build
import numpy as np
from aie.utils.hostruntime.xrtruntime.tensor import XRTTensor
from ml_dtypes import bfloat16

from cases import kernel_main16_q4nx_chunk_slot_generate as generate

EXPERIMENT_DIR = Path(__file__).parent
ROWS = 16
ROWS_PER_TILE = 32
GROUP_SIZE = 32
GROUPS = 8
SCALE_BF16 = ROWS_PER_TILE * GROUPS
SCALE_BYTES = SCALE_BF16 * 2
OFFSET_BYTES = SCALE_BYTES
DATA_OFFSET_BYTES = SCALE_BYTES + OFFSET_BYTES
Q4_GROUP_BYTES_PER_LANE = GROUP_SIZE * (ROWS // 2)
Q4_DATA_BYTES_PER_LANE = GROUPS * Q4_GROUP_BYTES_PER_LANE


def _pack_bf16_i32(values: np.ndarray) -> np.ndarray:
    return np.frombuffer(values.astype(bfloat16).tobytes(), dtype=np.int32).copy()


def _bf16_words(words: np.ndarray) -> np.ndarray:
    return np.frombuffer(words.astype(np.int32).tobytes(), dtype=bfloat16)


def _unpack_dim(group_bytes: np.ndarray, dim: int) -> np.ndarray:
    row_bytes = group_bytes.reshape(GROUP_SIZE, ROWS // 2)[dim]
    q = np.empty((ROWS,), dtype=np.float32)
    q[0::2] = (row_bytes & 0x0F).astype(np.float32)
    q[1::2] = (row_bytes >> 4).astype(np.float32)
    return q


def _dequant(q: np.ndarray, scale: np.ndarray, offset: np.ndarray) -> np.ndarray:
    scaled = (q * scale.astype(np.float32)).astype(bfloat16).astype(np.float32)
    return (scaled + offset.astype(np.float32)).astype(bfloat16).astype(np.float32)


def _chunk_oracle(weight_words: np.ndarray, activation_words: np.ndarray) -> np.ndarray:
    weight_bytes = weight_words.astype(np.int32).tobytes()
    scales = np.frombuffer(weight_bytes[:SCALE_BYTES], dtype=bfloat16).reshape(GROUPS, ROWS_PER_TILE)
    offsets = np.frombuffer(
        weight_bytes[SCALE_BYTES : SCALE_BYTES + OFFSET_BYTES],
        dtype=bfloat16,
    ).reshape(GROUPS, ROWS_PER_TILE)
    packed = np.frombuffer(weight_bytes[DATA_OFFSET_BYTES:], dtype=np.uint8)
    activation = _bf16_words(activation_words).astype(np.float32).reshape(GROUPS, GROUP_SIZE)

    out = np.zeros((ROWS_PER_TILE,), dtype=np.float32)
    for group in range(GROUPS):
        low_base = group * Q4_GROUP_BYTES_PER_LANE
        high_base = Q4_DATA_BYTES_PER_LANE + group * Q4_GROUP_BYTES_PER_LANE
        low_group = packed[low_base : low_base + Q4_GROUP_BYTES_PER_LANE]
        high_group = packed[high_base : high_base + Q4_GROUP_BYTES_PER_LANE]
        for dim in range(GROUP_SIZE):
            low_coeff = _dequant(
                _unpack_dim(low_group, dim),
                scales[group, :ROWS],
                offsets[group, :ROWS],
            )
            high_coeff = _dequant(
                _unpack_dim(high_group, dim),
                scales[group, ROWS:],
                offsets[group, ROWS:],
            )
            act = np.float32(activation[group, dim])
            np.add(out[:ROWS], low_coeff * act, out=out[:ROWS])
            np.add(out[ROWS:], high_coeff * act, out=out[ROWS:])
    return _pack_bf16_i32(out)


def _make_fixture(seed: int) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
    rng = np.random.default_rng(seed)
    activation = rng.normal(0.0, 0.42, size=(GROUPS, GROUP_SIZE)).astype(np.float32)
    activation = np.clip(activation, -1.5, 1.5).astype(bfloat16)
    scales = rng.uniform(0.001, 0.012, size=(GROUPS, ROWS_PER_TILE)).astype(bfloat16)
    offsets = rng.uniform(-0.095, -0.015, size=(GROUPS, ROWS_PER_TILE)).astype(bfloat16)
    q4 = rng.integers(0, 256, size=Q4_DATA_BYTES_PER_LANE * 2, dtype=np.uint8)

    weight_bytes = bytearray(generate.WEIGHT_DWORDS * 4)
    weight_bytes[:SCALE_BYTES] = scales.tobytes()
    weight_bytes[SCALE_BYTES : SCALE_BYTES + OFFSET_BYTES] = offsets.tobytes()
    weight_bytes[DATA_OFFSET_BYTES:] = q4.tobytes()
    weight_words = np.frombuffer(bytes(weight_bytes), dtype=np.int32).copy()
    activation_words = _pack_bf16_i32(activation.reshape(-1))
    expected = _chunk_oracle(weight_words, activation_words)
    return activation_words, weight_words, expected


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
        raise RuntimeError("\n".join(f"  CHUNK-SLOT STRUCTURE FAIL: {error}" for error in errors))
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
    print("  output=16 dword record payload, no header")
    print("  oracle=exact Q4NX dequant, accfloat accumulate, bf16 final store")
    print()

    xclbin_path, insts_path = _build_kernel()
    print(f"  xclbin={xclbin_path}")
    print(f"  insts={insts_path}")
    if build_only:
        return True

    activation_words, weight_words, expected = _make_fixture(seed)
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
        print("  FAIL: chunk-slot numerical validation failed")
        return False
    print("  PASS: chunk-slot numerical validation")
    return True


def main() -> None:
    parser = argparse.ArgumentParser(prog="qwen3 Main16 Q4NX chunk-slot probe")
    parser.add_argument("--seed", type=int, default=37)
    parser.add_argument("--build-only", action="store_true")
    args = parser.parse_args()

    ok = run(seed=args.seed, build_only=args.build_only)
    raise SystemExit(0 if ok else 1)


if __name__ == "__main__":
    main()
