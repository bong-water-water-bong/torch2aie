#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Run the isolated full_vector_station NPU numerical microbench."""

from __future__ import annotations

import argparse
from dataclasses import dataclass
from pathlib import Path

import npu_build
import numpy as np
from aie.utils.hostruntime.xrtruntime.tensor import XRTTensor
from ml_dtypes import bfloat16

from cases import kernel_full_vector_station_generate as generate
from cases import qwen3_8b_decode_layer_runner as full_runner
from cases.full_layer_engine_reference import (
    HIDDEN_DWORDS,
    _post_attention_residual_and_replay,
    input_norm_activation,
)
from cases.qwen3_8b_decode_layer_reference import (
    DEFAULT_LAYER,
    bf16_compare_stats,
    format_bf16_compare_stats,
    make_reference_inputs,
    validate_model_assets,
)
from qwen3_model import DEFAULT_QWEN3_8B_MODEL_PATH, Qwen3Q4NXModel

EXPERIMENT_DIR = Path(__file__).parent
ABS_TOL = 0.01
REL_TOL = 0.02
PROFILE_MARKER = 0x46564C50


@dataclass(frozen=True)
class FullVectorFixture:
    compacts: np.ndarray
    side_vectors: np.ndarray
    expected_replay: np.ndarray
    expected_output: np.ndarray
    hidden: np.ndarray
    input_norm: np.ndarray
    post_norm: np.ndarray
    o_values: np.ndarray
    down_values: np.ndarray


def _model_path(model_path: Path | None) -> Path:
    return DEFAULT_QWEN3_8B_MODEL_PATH if model_path is None else model_path


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
        raise RuntimeError("\n".join(f"  FULL-VECTOR STRUCTURE FAIL: {error}" for error in errors))
    npu_build.compile_mlir(mlir_path, xclbin_path, insts_path)
    return xclbin_path, insts_path


def _pack_bf16_i32(values: np.ndarray) -> np.ndarray:
    return np.frombuffer(values.astype(bfloat16).tobytes(), dtype=np.int32).copy()


def _make_compacts(values: np.ndarray, header: int) -> np.ndarray:
    packed = _pack_bf16_i32(values)
    if packed.shape != (HIDDEN_DWORDS,):
        raise RuntimeError(f"compact source shape mismatch: {packed.shape} != {(HIDDEN_DWORDS,)}")
    packets = np.empty((generate.O_BODY_RECORDS, generate.COMPACT_PACKET_DWORDS), dtype=np.int32)
    payload = packed.reshape(generate.O_BODY_RECORDS, generate.COMPACT_PACKET_DWORDS - 1)
    packets[:, 0] = header
    packets[:, 1:] = payload
    return packets.reshape(-1)


def _make_values(seed: int) -> tuple[np.ndarray, np.ndarray]:
    rng = np.random.default_rng(seed)
    o_values = rng.normal(loc=0.0, scale=0.22, size=HIDDEN_DWORDS * 2).astype(np.float32)
    down_values = rng.normal(loc=0.0, scale=0.18, size=HIDDEN_DWORDS * 2).astype(np.float32)
    return o_values.astype(bfloat16), down_values.astype(bfloat16)


def _make_fixture(
    model: Qwen3Q4NXModel,
    layer: int,
    current_token: int,
    seed: int,
) -> FullVectorFixture:
    inputs = make_reference_inputs(current_token)
    input_norm, post_norm, _q_norm, _k_norm = model.layer_norm_weights(layer)
    o_values, down_values = _make_values(seed)

    hidden_words = _pack_bf16_i32(inputs.hidden)
    input_norm_words = _pack_bf16_i32(input_norm)
    post_norm_words = _pack_bf16_i32(post_norm)
    side_vectors = np.concatenate((hidden_words, input_norm_words, post_norm_words)).astype(np.int32)
    if side_vectors.shape != (generate.SIDE_INPUT_DWORDS,):
        raise RuntimeError(f"side vector shape mismatch: {side_vectors.shape} != {(generate.SIDE_INPUT_DWORDS,)}")

    o_compacts = _make_compacts(o_values, 0x4)
    down_compacts = _make_compacts(down_values, 0x4)
    compacts = np.concatenate((o_compacts, down_compacts)).astype(np.int32)
    if compacts.shape != (generate.COMPACT_INPUT_DWORDS,):
        raise RuntimeError(f"compact input shape mismatch: {compacts.shape} != {(generate.COMPACT_INPUT_DWORDS,)}")

    input_payload = _pack_bf16_i32(input_norm_activation(inputs.hidden, input_norm))
    residual, post_payload_values = _post_attention_residual_and_replay(inputs.hidden, o_values, post_norm)
    post_payload = _pack_bf16_i32(post_payload_values)
    output = _pack_bf16_i32((residual.astype(np.float32) + down_values.astype(np.float32)).astype(bfloat16))
    expected_replay = np.concatenate(
        (
            np.tile(input_payload, generate.C1R2_QKV_REPLAYS),
            np.tile(post_payload, generate.C1R2_UPGATE_REPLAYS),
        )
    ).astype(np.int32)
    if expected_replay.shape != (generate.REPLAY_OUTPUT_DWORDS,):
        raise RuntimeError(f"replay output shape mismatch: {expected_replay.shape}")
    return FullVectorFixture(
        compacts=compacts,
        side_vectors=side_vectors,
        expected_replay=expected_replay,
        expected_output=output,
        hidden=inputs.hidden,
        input_norm=input_norm,
        post_norm=post_norm,
        o_values=o_values,
        down_values=down_values,
    )


def _print_first_mismatch(stage: str, expected: np.ndarray, got: np.ndarray) -> None:
    expected_values = np.frombuffer(expected.tobytes(), dtype=bfloat16).astype(np.float32)
    got_values = np.frombuffer(got.tobytes(), dtype=bfloat16).astype(np.float32)
    abs_err = np.abs(expected_values - got_values)
    limit = np.maximum(ABS_TOL, REL_TOL * np.abs(expected_values))
    mismatch = np.flatnonzero(abs_err > limit)
    if mismatch.size == 0:
        return
    lane = int(mismatch[0])
    print(
        f"  {stage} first_mismatch: lane={lane} "
        f"expected={float(expected_values[lane]):.9f} got={float(got_values[lane]):.9f} "
        f"abs={float(abs_err[lane]):.9f} limit={float(limit[lane]):.9f}"
    )


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
    input_cycles = _u64_pair(output_words, 1)
    post_cycles = _u64_pair(output_words, 3)
    o_cycles = _u64_pair(output_words, 5)
    down_cycles = _u64_pair(output_words, 7)
    o_blocks = int(output_words[9])
    down_blocks = int(output_words[10])
    print("  cycle profile summary: marker=0x46564c50")
    print(f"  input_norm_cycles: {input_cycles}")
    print(f"  post_norm_cycles:  {post_cycles}")
    print(f"  o_residual_cycles: {o_cycles} across {o_blocks} block(s)")
    print(f"  down_write_cycles: {down_cycles} across {down_blocks} block(s)")
    print(f"  output[0:12]: {output_words[:12].tolist()}")
    print("  PASS: full_vector_station cycle-profile run")
    return True


def run(
    current_token: int,
    model_path: Path | None,
    layer: int,
    seed: int,
    download_model: bool,
    build_only: bool,
    profile_cycles: bool,
) -> bool:
    model = full_runner._load_model(model_path, download_model)
    errors = validate_model_assets(model, layer)
    if errors:
        for error in errors:
            print(f"  QWEN3-8B ASSET FAIL: {error}")
        return False

    print("=" * 78)
    case_name = generate.PROFILE_CASE_NAME if profile_cycles else generate.CASE_NAME
    print(f"qwen3 isolated kernel microbench: {case_name}")
    print("=" * 78)
    print(f"  model={_model_path(model_path)}")
    print(f"  layer={layer}")
    print(f"  current_token={current_token}")
    if profile_cycles:
        print("  kernel=full_vector_station_profile.o only")
        print("  ABI=debug cycle summary on the final output path")
    else:
        print("  kernel=full_vector_station.o only")
        print("  ABI=hidden/norm vectors + O/down compact packets -> replay + final output")
    print()

    xclbin_path, insts_path = _build_kernel(profile_cycles=profile_cycles)
    print(f"  xclbin={xclbin_path}")
    print(f"  insts={insts_path}")
    if build_only:
        return True

    print("  Preparing compact payloads and CPU oracle...")
    fixture = _make_fixture(model, layer, current_token, seed)
    compact_buf = XRTTensor(fixture.compacts.copy(), dtype=np.int32)
    side_buf = XRTTensor(fixture.side_vectors.copy(), dtype=np.int32)
    replay_buf = XRTTensor(np.full((generate.REPLAY_OUTPUT_DWORDS,), -1, dtype=np.int32), dtype=np.int32)
    output_buf = XRTTensor(np.full((generate.OUTPUT_DWORDS,), -1, dtype=np.int32), dtype=np.int32)

    print("  Loading NPU kernel...")
    handle = npu_build.load_kernel(xclbin_path, insts_path)
    print("  Running on NPU...")
    result = npu_build.run(handle, [compact_buf, side_buf, replay_buf, output_buf])
    got_replay = replay_buf.numpy().astype(np.int32)
    got_output = output_buf.numpy().astype(np.int32)
    if profile_cycles:
        print(f"  NPU time: {result.npu_time / 1e3:.1f} us")
        return _print_cycle_profile(got_output)

    replay_stats = bf16_compare_stats(
        "full_vector_replay_stream",
        fixture.expected_replay,
        got_replay,
        ABS_TOL,
        REL_TOL,
    )
    output_stats = bf16_compare_stats(
        "full_vector_output",
        fixture.expected_output,
        got_output,
        ABS_TOL,
        REL_TOL,
    )
    print(f"  NPU time: {result.npu_time / 1e3:.1f} us")
    for stats in (replay_stats, output_stats):
        print("  " + format_bf16_compare_stats(stats))
    if replay_stats.mismatch_count or output_stats.mismatch_count:
        _print_first_mismatch("full_vector_replay_stream", fixture.expected_replay, got_replay)
        _print_first_mismatch("full_vector_output", fixture.expected_output, got_output)
        print("  FAIL: full_vector_station isolated numerical validation failed")
        return False
    print("  PASS: full_vector_station isolated numerical validation")
    return True


def main() -> None:
    parser = argparse.ArgumentParser(prog="qwen3 full_vector_station kernel microbench")
    parser.add_argument("--current-token", type=int, default=31)
    parser.add_argument("--model-path", type=Path, default=None)
    parser.add_argument("--layer", type=int, default=DEFAULT_LAYER)
    parser.add_argument("--seed", type=int, default=11)
    parser.add_argument("--download-model", action="store_true")
    parser.add_argument("--build-only", action="store_true")
    parser.add_argument("--profile-cycles", action="store_true")
    args = parser.parse_args()

    ok = run(
        current_token=args.current_token,
        model_path=args.model_path,
        layer=args.layer,
        seed=args.seed,
        download_model=args.download_model,
        build_only=args.build_only,
        profile_cycles=args.profile_cycles,
    )
    raise SystemExit(0 if ok else 1)


if __name__ == "__main__":
    main()
