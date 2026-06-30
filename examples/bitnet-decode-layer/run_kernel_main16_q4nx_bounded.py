#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Run the bounded 8-group Main16 Q4NX section-cell NPU microbench."""

from __future__ import annotations

import argparse
from pathlib import Path

import npu_build
import numpy as np
from aie.utils.hostruntime.xrtruntime.tensor import XRTTensor
from ml_dtypes import bfloat16

from cases import kernel_main16_q4nx_bounded_generate as generate

EXPERIMENT_DIR = Path(__file__).parent


def _pack_bf16_i32(values: np.ndarray) -> np.ndarray:
    return np.frombuffer(values.astype(bfloat16).tobytes(), dtype=np.int32).copy()


def _bf16_words(words: np.ndarray) -> np.ndarray:
    return np.frombuffer(words.astype(np.int32).tobytes(), dtype=bfloat16)


def _make_fixture(
    seed: int, groups: int
) -> tuple[np.ndarray, np.ndarray, np.ndarray, np.ndarray, np.ndarray]:
    rng = np.random.default_rng(seed)
    q4 = rng.integers(
        0,
        256,
        size=generate.Q4_GROUP_BYTES * groups,
        dtype=np.uint8,
    )
    scales = rng.uniform(0.001, 0.012, size=(groups, generate.ROWS)).astype(bfloat16)
    offsets = rng.uniform(-0.095, -0.015, size=(groups, generate.ROWS)).astype(bfloat16)
    activation = rng.normal(0.0, 0.42, size=(groups, generate.GROUP_SIZE)).astype(np.float32)
    activation = np.clip(activation, -1.5, 1.5).astype(bfloat16)

    expected_values = _bounded_oracle(q4, scales, offsets, activation)
    return (
        np.frombuffer(q4.tobytes(), dtype=np.int32).copy(),
        _pack_bf16_i32(scales.reshape(-1)),
        _pack_bf16_i32(offsets.reshape(-1)),
        _pack_bf16_i32(activation.reshape(-1)),
        _pack_bf16_i32(expected_values),
    )


def _bounded_oracle(
    q4: np.ndarray,
    scales: np.ndarray,
    offsets: np.ndarray,
    activation: np.ndarray,
) -> np.ndarray:
    groups = scales.shape[0]
    weights = np.empty((groups, generate.ROWS, generate.GROUP_SIZE), dtype=np.float32)
    for group in range(groups):
        base = group * generate.Q4_GROUP_BYTES
        lane_bytes = q4[base : base + generate.Q4_GROUP_BYTES].reshape(
            generate.GROUP_SIZE,
            generate.ROWS // 2,
        )
        for byte_idx in range(generate.ROWS // 2):
            row0 = byte_idx * 2
            row1 = row0 + 1
            byte_values = lane_bytes[:, byte_idx]
            weights[group, row0, :] = (byte_values & 0x0F).astype(np.float32)
            weights[group, row1, :] = (byte_values >> 4).astype(np.float32)

    output = np.zeros((generate.ROWS,), dtype=np.float32)
    scale_f = scales.astype(np.float32)
    offset_f = offsets.astype(np.float32)
    act_f = activation.astype(np.float32)
    for group in range(groups):
        for dim in range(generate.GROUP_SIZE):
            scaled = (weights[group, :, dim] * scale_f[group]).astype(bfloat16).astype(np.float32)
            coeff = (scaled + offset_f[group]).astype(bfloat16).astype(np.float32)
            np.add(output, coeff * act_f[group, dim], out=output)
    return output.astype(bfloat16)


def _build_kernel(groups: int) -> tuple[Path, Path]:
    build_dir = EXPERIMENT_DIR / "build" / generate.case_name_for(groups)
    build_dir.mkdir(parents=True, exist_ok=True)
    mlir_path = build_dir / "design.mlir"
    xclbin_path = build_dir / "design.xclbin"
    insts_path = build_dir / "design.bin"

    mlir_text = generate.generate_mlir(groups=groups)
    mlir_path.write_text(mlir_text)
    errors = generate.validate_generated_mlir(mlir_text, groups=groups)
    if errors:
        raise RuntimeError("\n".join(f"  BOUNDED-Q4NX STRUCTURE FAIL: {error}" for error in errors))
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


def run(seed: int, groups: int, build_only: bool) -> bool:
    print("=" * 78)
    print(f"qwen3 isolated kernel microbench: {generate.case_name_for(groups)}")
    print("=" * 78)
    print(f"  kernel={generate.object_name_for(groups)} only")
    print("  ABI=8 single-lane Q4NX groups -> 16 bf16 output lanes")
    print("  body=MyLM-named fill/fill_to_steady/steady/pre_drain/drain sections")
    print("  oracle=sequential exact Q4NX dequant and bf16 final store")
    print()

    xclbin_path, insts_path = _build_kernel(groups)
    print(f"  xclbin={xclbin_path}")
    print(f"  insts={insts_path}")
    if build_only:
        return True

    q4_words, scale_words, offset_words, activation_words, expected = _make_fixture(seed, groups)
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
        print("  FAIL: bounded Main16 Q4NX numerical validation failed")
        return False
    print("  PASS: bounded Main16 Q4NX numerical validation")
    return True


def main() -> None:
    parser = argparse.ArgumentParser(prog="qwen3 bounded Main16 Q4NX kernel microbench")
    parser.add_argument("--seed", type=int, default=29)
    parser.add_argument("--groups", type=int, choices=(generate.GROUPS,), default=generate.GROUPS)
    parser.add_argument("--build-only", action="store_true")
    args = parser.parse_args()

    ok = run(seed=args.seed, groups=args.groups, build_only=args.build_only)
    raise SystemExit(0 if ok else 1)


if __name__ == "__main__":
    main()
