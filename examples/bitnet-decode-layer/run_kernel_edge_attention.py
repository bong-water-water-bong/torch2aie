#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Run the isolated edge_attention NPU numerical microbench."""

from __future__ import annotations

import argparse
from pathlib import Path

import npu_build
import numpy as np
from aie.utils.hostruntime.xrtruntime.tensor import XRTTensor
from ml_dtypes import bfloat16

from cases import kernel_edge_attention_generate as generate
from cases.qwen3_8b_decode_layer_reference import (
    ATTENTION_CONTEXT,
    ATTENTION_HEADS_PER_WINDOW,
    ATTENTION_KV_HEADS_PER_WINDOW,
    HEAD_DIM,
    _attention_score_bf16_npu,
    _fast_exp_npu,
    bf16_compare_stats,
    format_bf16_compare_stats,
)

EXPERIMENT_DIR = Path(__file__).parent
ABS_TOL = 0.01
REL_TOL = 0.02
PROFILE_MARKER = 0x41545450


def _build_kernel(profile_cycles: bool) -> tuple[Path, Path]:
    build_name = generate.PROFILE_CASE_NAME if profile_cycles else generate.CASE_NAME
    build_dir = EXPERIMENT_DIR / "build" / build_name
    build_dir.mkdir(parents=True, exist_ok=True)
    mlir_path = build_dir / "design.mlir"
    xclbin_path = build_dir / "design.xclbin"
    insts_path = build_dir / "design.bin"

    mlir_text = generate.generate_mlir(profile_cycles=profile_cycles)
    mlir_path.write_text(mlir_text)
    errors = generate.validate_generated_mlir(mlir_text, profile_cycles=profile_cycles)
    if errors:
        raise RuntimeError("\n".join(f"  EDGE-ATTENTION STRUCTURE FAIL: {error}" for error in errors))
    npu_build.compile_mlir(mlir_path, xclbin_path, insts_path)
    return xclbin_path, insts_path


def _pack_bf16_i32(values: np.ndarray) -> np.ndarray:
    return np.frombuffer(values.astype(bfloat16).tobytes(), dtype=np.int32).copy()


def _pack_kv_kernel_layout(values: np.ndarray) -> np.ndarray:
    expected = (ATTENTION_CONTEXT, ATTENTION_KV_HEADS_PER_WINDOW, HEAD_DIM)
    if values.shape != expected:
        raise RuntimeError(f"KV block shape mismatch: {values.shape} != {expected}")
    kernel_order = np.transpose(values, (1, 0, 2)).reshape(-1)
    return _pack_bf16_i32(kernel_order)


def _make_inputs(seed: int) -> tuple[np.ndarray, np.ndarray, np.ndarray, np.ndarray]:
    rng = np.random.default_rng(seed)
    q = rng.normal(
        loc=0.0,
        scale=0.38,
        size=(ATTENTION_HEADS_PER_WINDOW, HEAD_DIM),
    ).astype(np.float32)
    k_blocks = rng.normal(
        loc=0.0,
        scale=0.34,
        size=(generate.BLOCKS, ATTENTION_CONTEXT, ATTENTION_KV_HEADS_PER_WINDOW, HEAD_DIM),
    ).astype(np.float32)
    v_blocks = rng.normal(
        loc=0.0,
        scale=0.29,
        size=(generate.BLOCKS, ATTENTION_CONTEXT, ATTENTION_KV_HEADS_PER_WINDOW, HEAD_DIM),
    ).astype(np.float32)
    q_bf16 = np.clip(q, -1.5, 1.5).astype(bfloat16)
    k_bf16 = np.clip(k_blocks, -1.5, 1.5).astype(bfloat16)
    v_bf16 = np.clip(v_blocks, -1.5, 1.5).astype(bfloat16)
    input_words = np.concatenate(
        (
            _pack_bf16_i32(q_bf16.reshape(-1)),
            _pack_kv_kernel_layout(k_bf16[0]),
            _pack_kv_kernel_layout(k_bf16[1]),
            _pack_kv_kernel_layout(v_bf16[0]),
            _pack_kv_kernel_layout(v_bf16[1]),
        )
    ).astype(np.int32)
    if input_words.shape != (generate.INPUT_DWORDS,):
        raise RuntimeError(f"edge attention input shape mismatch: {input_words.shape} != {(generate.INPUT_DWORDS,)}")
    expected = _expected_output(q_bf16, k_bf16, v_bf16)
    return input_words, expected, q_bf16, v_bf16


def _expected_output(
    q_window: np.ndarray,
    k_blocks: np.ndarray,
    v_blocks: np.ndarray,
) -> np.ndarray:
    q_f32 = q_window.astype(np.float32)
    k_f32 = k_blocks.astype(np.float32)
    v_f32 = v_blocks.astype(np.float32)
    accum = np.zeros((ATTENTION_HEADS_PER_WINDOW, HEAD_DIM), dtype=np.float32)
    state_max = np.zeros((ATTENTION_HEADS_PER_WINDOW,), dtype=np.float32)
    state_sum = np.zeros((ATTENTION_HEADS_PER_WINDOW,), dtype=np.float32)
    for block in range(generate.BLOCKS):
        valid_tokens = ATTENTION_CONTEXT if block + 1 < generate.BLOCKS else generate.TAIL_TOKENS
        k_block = k_f32[block, :valid_tokens]
        v_block = v_f32[block, :valid_tokens]
        weights = np.zeros((ATTENTION_HEADS_PER_WINDOW, ATTENTION_CONTEXT), dtype=np.float32)
        block_max = np.zeros((ATTENTION_HEADS_PER_WINDOW,), dtype=np.float32)
        block_sum = np.zeros((ATTENTION_HEADS_PER_WINDOW,), dtype=np.float32)
        for q_head in range(ATTENTION_HEADS_PER_WINDOW):
            running_max = _attention_score_bf16_npu(q_f32, k_block, q_head, 0)
            scores = np.zeros((ATTENTION_CONTEXT,), dtype=np.float32)
            scores[0] = running_max
            for token in range(1, valid_tokens):
                scores[token] = _attention_score_bf16_npu(q_f32, k_block, q_head, token)
                if scores[token] > running_max:
                    running_max = scores[token]
            weight_sum = np.float32(0.0)
            for token in range(ATTENTION_CONTEXT):
                weight = np.float32(0.0)
                if token < valid_tokens:
                    weight = _fast_exp_npu(np.float32(scores[token] - running_max))
                    weight_sum = np.float32(weight_sum + weight)
                weights[q_head, token] = np.array(weight, dtype=bfloat16).astype(np.float32)
            block_max[q_head] = running_max
            block_sum[q_head] = weight_sum
        for q_head in range(ATTENTION_HEADS_PER_WINDOW):
            old_sum = state_sum[q_head]
            new_max = block_max[q_head]
            old_scale = np.float32(0.0)
            block_scale = np.float32(1.0)
            if old_sum != np.float32(0.0):
                old_max = state_max[q_head]
                new_max = old_max if old_max > block_max[q_head] else block_max[q_head]
                old_scale = _fast_exp_npu(np.float32(old_max - new_max))
                block_scale = _fast_exp_npu(np.float32(block_max[q_head] - new_max))
            kv_head = q_head // (ATTENTION_HEADS_PER_WINDOW // ATTENTION_KV_HEADS_PER_WINDOW)
            for dim in range(HEAD_DIM):
                block_total = np.float32(0.0)
                for token in range(valid_tokens):
                    block_total = np.float32(
                        block_total + np.float32(weights[q_head, token] * v_block[token, kv_head, dim])
                    )
                accum[q_head, dim] = np.float32(
                    np.float32(accum[q_head, dim] * old_scale) + np.float32(block_total * block_scale)
                )
            state_max[q_head] = new_max
            state_sum[q_head] = np.float32(
                np.float32(old_sum * old_scale) + np.float32(block_sum[q_head] * block_scale)
            )
    output = np.empty((ATTENTION_HEADS_PER_WINDOW, HEAD_DIM), dtype=bfloat16)
    for q_head in range(ATTENTION_HEADS_PER_WINDOW):
        for dim in range(HEAD_DIM):
            output[q_head, dim] = np.array(np.float32(accum[q_head, dim] / state_sum[q_head]), dtype=bfloat16)
    return _pack_bf16_i32(output.reshape(-1))


def _u64_pair(words: np.ndarray, index: int) -> int:
    low = int(np.uint32(words[index]))
    high = int(np.uint32(words[index + 1]))
    return low | (high << 32)


def _print_cycle_profile(output_words: np.ndarray) -> bool:
    marker = int(np.uint32(output_words[0]))
    if marker != PROFILE_MARKER:
        print(f"  FAIL: profile marker mismatch: 0x{marker:08x} != 0x{PROFILE_MARKER:08x}")
        print(f"  output[0:12]: {output_words[:12].tolist()}")
        return False
    init_cycles = _u64_pair(output_words, 1)
    carrier_cycles = _u64_pair(output_words, 3)
    accum_cycles = _u64_pair(output_words, 5)
    finish_cycles = _u64_pair(output_words, 7)
    carrier_calls = int(output_words[9])
    accum_calls = int(output_words[10])
    print("  cycle profile summary: marker=0x41545450")
    print(f"  init_cycles:    {init_cycles}")
    print(f"  carrier_cycles: {carrier_cycles} across {carrier_calls} call(s)")
    print(f"  accum_cycles:   {accum_cycles} across {accum_calls} call(s)")
    print(f"  finish_cycles:  {finish_cycles}")
    print(f"  output[0:12]: {output_words[:12].tolist()}")
    print("  PASS: edge_attention cycle-profile run")
    return True


def run(seed: int, build_only: bool, profile_cycles: bool) -> bool:
    print("=" * 78)
    case_name = generate.PROFILE_CASE_NAME if profile_cycles else generate.CASE_NAME
    print(f"qwen3 isolated kernel microbench: {case_name}")
    print("=" * 78)
    if profile_cycles:
        print("  kernel=edge_attention_profile.o only")
        print("  ABI=debug cycle summary on the final attention output path")
    else:
        print("  kernel=edge_attention.o only")
        print("  ABI=Q window + two K/V blocks -> bf16 attention output")
        print("  oracle=bf16 carrier + NPU fast_exp streaming softmax")
    print()

    xclbin_path, insts_path = _build_kernel(profile_cycles=profile_cycles)
    print(f"  xclbin={xclbin_path}")
    print(f"  insts={insts_path}")
    if build_only:
        return True

    input_words, expected, _q_bf16, _v_bf16 = _make_inputs(seed)
    input_buf = XRTTensor(input_words.copy(), dtype=np.int32)
    output_buf = XRTTensor(np.full((generate.OUTPUT_DWORDS,), -1, dtype=np.int32), dtype=np.int32)

    print("  Loading NPU kernel...")
    handle = npu_build.load_kernel(xclbin_path, insts_path)
    print("  Running on NPU...")
    result = npu_build.run(handle, [input_buf, output_buf])
    got = output_buf.numpy().astype(np.int32)
    if profile_cycles:
        print(f"  NPU time: {result.npu_time / 1e3:.1f} us")
        return _print_cycle_profile(got)

    stats = bf16_compare_stats("edge_attention_output", expected, got, ABS_TOL, REL_TOL)
    print(f"  NPU time: {result.npu_time / 1e3:.1f} us")
    print("  " + format_bf16_compare_stats(stats))
    if stats.mismatch_count:
        print("  FAIL: edge_attention isolated numerical validation failed")
        return False
    print("  PASS: edge_attention isolated numerical validation")
    return True


def main() -> None:
    parser = argparse.ArgumentParser(prog="qwen3 edge_attention kernel microbench")
    parser.add_argument("--seed", type=int, default=17)
    parser.add_argument("--build-only", action="store_true")
    parser.add_argument("--profile-cycles", action="store_true")
    args = parser.parse_args()

    ok = run(seed=args.seed, build_only=args.build_only, profile_cycles=args.profile_cycles)
    raise SystemExit(0 if ok else 1)


if __name__ == "__main__":
    main()
