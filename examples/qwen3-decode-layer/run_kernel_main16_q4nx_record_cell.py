#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Run the Main16 Q4NX record-cell acc32 NPU numerical microbench."""

from __future__ import annotations

import argparse
from pathlib import Path

import npu_build
import numpy as np
from aie.utils.hostruntime.xrtruntime.tensor import XRTTensor
from ml_dtypes import bfloat16

from cases import kernel_main16_q4nx_record_cell_generate as generate

EXPERIMENT_DIR = Path(__file__).parent


def _pack_bf16_i32(values: np.ndarray) -> np.ndarray:
    return np.frombuffer(values.astype(bfloat16).tobytes(), dtype=np.int32).copy()


def _bf16_words(words: np.ndarray) -> np.ndarray:
    return np.frombuffer(words.astype(np.int32).tobytes(), dtype=bfloat16)


def _make_fixture(seed: int) -> tuple[np.ndarray, np.ndarray, np.ndarray, np.ndarray, np.ndarray]:
    rng = np.random.default_rng(seed)
    q4 = rng.integers(
        0,
        256,
        size=generate.LANES * generate.GROUPS * generate.Q4_GROUP_BYTES_PER_LANE,
        dtype=np.uint8,
    )
    scales = rng.uniform(0.001, 0.012, size=(generate.GROUPS, generate.ROWS)).astype(bfloat16)
    offsets = rng.uniform(-0.095, -0.015, size=(generate.GROUPS, generate.ROWS)).astype(bfloat16)
    activation = rng.normal(0.0, 0.42, size=(generate.GROUPS, generate.GROUP_SIZE)).astype(np.float32)
    activation = np.clip(activation, -1.5, 1.5).astype(bfloat16)
    payload = _oracle_payload(q4, scales, offsets, activation)
    expected = np.empty((generate.OUTPUT_DWORDS,), dtype=np.int32)
    expected[0] = 0x1
    expected[1:] = _pack_bf16_i32(payload)
    return (
        np.frombuffer(q4.tobytes(), dtype=np.int32).copy(),
        _pack_bf16_i32(scales.reshape(-1)),
        _pack_bf16_i32(offsets.reshape(-1)),
        _pack_bf16_i32(activation.reshape(-1)),
        expected,
    )


def _oracle_payload(
    q4: np.ndarray,
    scales: np.ndarray,
    offsets: np.ndarray,
    activation: np.ndarray,
) -> np.ndarray:
    q4_lanes = q4.reshape(
        generate.LANES,
        generate.GROUPS,
        generate.GROUP_SIZE,
        generate.ROWS_PER_LANE // 2,
    )
    output = np.zeros((generate.LANES, generate.ROWS_PER_LANE), dtype=np.float32)
    scale_f = scales.astype(np.float32)
    offset_f = offsets.astype(np.float32)
    act_f = activation.astype(np.float32)
    for group in range(generate.GROUPS):
        for lane in range(generate.LANES):
            row_base = lane * generate.ROWS_PER_LANE
            weights = np.empty((generate.ROWS_PER_LANE, generate.GROUP_SIZE), dtype=np.float32)
            for byte_idx in range(generate.ROWS_PER_LANE // 2):
                row0 = byte_idx * 2
                row1 = row0 + 1
                byte_values = q4_lanes[lane, group, :, byte_idx]
                weights[row0, :] = (byte_values & 0x0F).astype(np.float32)
                weights[row1, :] = (byte_values >> 4).astype(np.float32)
            for dim in range(generate.GROUP_SIZE):
                scaled = (
                    weights[:, dim] * scale_f[group, row_base : row_base + generate.ROWS_PER_LANE]
                ).astype(bfloat16).astype(np.float32)
                coeff = (
                    scaled + offset_f[group, row_base : row_base + generate.ROWS_PER_LANE]
                ).astype(bfloat16).astype(np.float32)
                np.add(output[lane], coeff * act_f[group, dim], out=output[lane])
    return output.reshape(-1).astype(bfloat16)


def _build_kernel() -> tuple[Path, Path]:
    build_dir = EXPERIMENT_DIR / "build" / generate.case_name()
    build_dir.mkdir(parents=True, exist_ok=True)
    mlir_path = build_dir / "design.mlir"
    xclbin_path = build_dir / "design.xclbin"
    insts_path = build_dir / "design.bin"

    mlir_text = generate.generate_mlir()
    mlir_path.write_text(mlir_text)
    errors = generate.validate_generated_mlir(mlir_text)
    if errors:
        raise RuntimeError("\n".join(f"  RECORD-CELL STRUCTURE FAIL: {error}" for error in errors))
    npu_build.compile_mlir(mlir_path, xclbin_path, insts_path)
    return xclbin_path, insts_path


def _print_first_mismatch(expected: np.ndarray, got: np.ndarray) -> None:
    mismatch = np.flatnonzero(expected != got)
    if mismatch.size == 0:
        return
    idx = int(mismatch[0])
    print(f"  first_mismatch_word: idx={idx} expected=0x{expected[idx] & 0xffffffff:08x} got=0x{got[idx] & 0xffffffff:08x}")
    if idx > 0:
        expected_values = _bf16_words(expected[1:]).astype(np.float32)
        got_values = _bf16_words(got[1:]).astype(np.float32)
        lane = (idx - 1) * 2
        print(
            f"  first_payload_pair: lane={lane} "
            f"expected={expected_values[lane:lane + 2].tolist()} "
            f"got={got_values[lane:lane + 2].tolist()}"
        )


def run(seed: int, build_only: bool) -> bool:
    print("=" * 78)
    print(f"qwen3 isolated kernel microbench: {generate.case_name()}")
    print("=" * 78)
    print(f"  kernel={generate.OBJECT_NAME} only")
    print("  ABI=2 Q4NX groups, one 17-dword Main16 record")
    print("  oracle=sequential exact Q4NX dequant + header 0x1")
    print()

    xclbin_path, insts_path = _build_kernel()
    print(f"  xclbin={xclbin_path}")
    print(f"  insts={insts_path}")
    if build_only:
        return True

    q4_words, scale_words, offset_words, activation_words, expected = _make_fixture(seed)
    q4_buf = XRTTensor(q4_words.copy(), dtype=np.int32)
    scale_buf = XRTTensor(scale_words.copy(), dtype=np.int32)
    offset_buf = XRTTensor(offset_words.copy(), dtype=np.int32)
    activation_buf = XRTTensor(activation_words.copy(), dtype=np.int32)
    output_buf = XRTTensor(np.full((generate.OUTPUT_DWORDS,), -1, dtype=np.int32), dtype=np.int32)

    print("  Loading NPU kernel...")
    handle = npu_build.load_kernel(xclbin_path, insts_path)
    print("  Running on NPU...")
    result = npu_build.run(handle, [q4_buf, scale_buf, offset_buf, activation_buf, output_buf])
    got = output_buf.numpy().astype(np.int32)
    mismatches = int(np.count_nonzero(expected != got))
    print(f"  NPU time: {result.npu_time / 1e3:.1f} us")
    print(f"  record_words: mismatches={mismatches}")
    print(f"  expected[0:8]: {expected[:8].tolist()}")
    print(f"  got[0:8]:      {got[:8].tolist()}")
    if mismatches:
        _print_first_mismatch(expected, got)
        print("  FAIL: record-cell Main16 Q4NX numerical validation failed")
        return False
    print("  PASS: record-cell Main16 Q4NX numerical validation")
    return True


def main() -> None:
    parser = argparse.ArgumentParser(prog="qwen3 record-cell Main16 Q4NX microbench")
    parser.add_argument("--seed", type=int, default=37)
    parser.add_argument("--build-only", action="store_true")
    args = parser.parse_args()
    ok = run(seed=args.seed, build_only=args.build_only)
    raise SystemExit(0 if ok else 1)


if __name__ == "__main__":
    main()
