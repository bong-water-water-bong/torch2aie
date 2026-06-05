#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Run the Main16 Q4NX steady-cell mixed-half chain NPU microbench."""

from __future__ import annotations

import argparse
from pathlib import Path

import npu_build
import numpy as np
from aie.utils.hostruntime.xrtruntime.tensor import XRTTensor
from ml_dtypes import bfloat16

from cases import kernel_main16_q4nx_steady_cell_generate as generate

EXPERIMENT_DIR = Path(__file__).parent


def _pack_bf16_i32(values: np.ndarray) -> np.ndarray:
    return np.frombuffer(values.astype(bfloat16).tobytes(), dtype=np.int32).copy()


def _bf16_words(words: np.ndarray) -> np.ndarray:
    return np.frombuffer(words.astype(np.int32).tobytes(), dtype=bfloat16)


def _coeff_for_dim(
    q4: np.ndarray,
    scales: np.ndarray,
    offsets: np.ndarray,
    group: int,
    dim: int,
) -> np.ndarray:
    group_bytes = q4[
        group * generate.Q4_GROUP_BYTES : (group + 1) * generate.Q4_GROUP_BYTES
    ].reshape(generate.GROUP_SIZE, generate.ROWS // 2)
    row_bytes = group_bytes[dim]
    q = np.empty((generate.ROWS,), dtype=np.float32)
    q[0::2] = (row_bytes & 0x0F).astype(np.float32)
    q[1::2] = (row_bytes >> 4).astype(np.float32)
    scaled = (q * scales[group].astype(np.float32)).astype(bfloat16).astype(np.float32)
    return (scaled + offsets[group].astype(np.float32)).astype(bfloat16).astype(np.float32)


def _steady_cell_oracle(
    q4: np.ndarray,
    scales: np.ndarray,
    offsets: np.ndarray,
    activation: np.ndarray,
) -> np.ndarray:
    out = np.zeros((generate.GROUP_SIZE,), dtype=np.float32)
    for pair in range(generate.PAIRS):
        dim_base = pair * 2
        for group in range(1, generate.GROUPS):
            low_coeff = _coeff_for_dim(q4, scales, offsets, group - 1, dim_base + 1)
            high_coeff = _coeff_for_dim(q4, scales, offsets, group, dim_base)
            low_act = np.float32(activation[group - 1, dim_base + 1])
            high_act = np.float32(activation[group, dim_base])
            np.add(out[: generate.ROWS], low_coeff * low_act, out=out[: generate.ROWS])
            np.add(out[generate.ROWS :], high_coeff * high_act, out=out[generate.ROWS :])
    return out.astype(bfloat16)


def _make_fixture(seed: int) -> tuple[np.ndarray, np.ndarray, np.ndarray, np.ndarray, np.ndarray]:
    rng = np.random.default_rng(seed)
    q4 = rng.integers(
        0,
        256,
        size=generate.GROUPS * generate.Q4_GROUP_BYTES,
        dtype=np.uint8,
    )
    scales = rng.uniform(0.001, 0.012, size=(generate.GROUPS, generate.ROWS)).astype(bfloat16)
    offsets = rng.uniform(-0.095, -0.015, size=(generate.GROUPS, generate.ROWS)).astype(bfloat16)
    activation = rng.normal(0.0, 0.42, size=(generate.GROUPS, generate.GROUP_SIZE)).astype(np.float32)
    activation = np.clip(activation, -1.5, 1.5).astype(bfloat16)
    expected = _steady_cell_oracle(q4, scales, offsets, activation)
    return (
        np.frombuffer(q4.tobytes(), dtype=np.int32).copy(),
        _pack_bf16_i32(scales.reshape(-1)),
        _pack_bf16_i32(offsets.reshape(-1)),
        _pack_bf16_i32(activation.reshape(-1)),
        _pack_bf16_i32(expected),
    )


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
        raise RuntimeError("\n".join(f"  STEADY-CELL STRUCTURE FAIL: {error}" for error in errors))
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
    print("  ABI=8 Q4NX groups -> one mixed half-cell v32accfloat result")
    print("  body=2 dim-pairs, each with 7 steady mixed-half MAC transitions")
    print("  oracle=exact chain: low half consumes previous dim1, high half consumes current dim0")
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
    print(f"  output_words: mismatches={mismatches}")
    print(f"  expected[0:8]: {expected[:8].tolist()}")
    print(f"  got[0:8]:      {got[:8].tolist()}")
    if mismatches:
        _print_first_mismatch(expected, got)
        print("  FAIL: steady-cell mixed-half numerical validation failed")
        return False
    print("  PASS: steady-cell mixed-half numerical validation")
    return True


def main() -> None:
    parser = argparse.ArgumentParser(prog="qwen3 Main16 Q4NX steady-cell probe")
    parser.add_argument("--seed", type=int, default=31)
    parser.add_argument("--build-only", action="store_true")
    args = parser.parse_args()

    ok = run(seed=args.seed, build_only=args.build_only)
    raise SystemExit(0 if ok else 1)


if __name__ == "__main__":
    main()
