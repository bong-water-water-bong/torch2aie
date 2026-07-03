#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Run the isolated postprocess_qkv NPU numerical microbench."""

from __future__ import annotations

import argparse
from pathlib import Path

import npu_build
import numpy as np
from aie.utils.hostruntime.xrtruntime.tensor import XRTTensor

from cases import kernel_postprocess_qkv_generate as generate
from cases import qwen3_8b_decode_layer_runner as full_runner
from cases.full_layer_engine_reference import (
    QK_ROPE_DWORDS,
    current_k_payload_body,
    current_v_payload_body,
    input_norm_activation,
    k_body_compact,
    q_body_compact,
    q_payload_body,
    qk_rope_side_bf16,
    v_body_compact,
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
BUILD_NAME = generate.CASE_NAME
ABS_TOL = 0.01
REL_TOL = 0.02


def _model_path(model_path: Path | None) -> Path:
    return DEFAULT_QWEN3_8B_MODEL_PATH if model_path is None else model_path


def _build_kernel(current_token: int) -> tuple[Path, Path]:
    build_dir = EXPERIMENT_DIR / "build" / BUILD_NAME
    build_dir.mkdir(parents=True, exist_ok=True)
    mlir_path = build_dir / "design.mlir"
    xclbin_path = build_dir / "design.xclbin"
    insts_path = build_dir / "design.bin"

    mlir_text = generate.generate_mlir(current_token)
    mlir_path.write_text(mlir_text)
    errors = generate.validate_generated_mlir(mlir_text)
    if errors:
        raise RuntimeError("\n".join(f"  POSTPROCESS-QKV STRUCTURE FAIL: {error}" for error in errors))
    npu_build.compile_mlir(mlir_path, xclbin_path, insts_path)
    return xclbin_path, insts_path


def _compact_payloads(*compacts: np.ndarray) -> np.ndarray:
    payloads: list[np.ndarray] = []
    for compact in compacts:
        packets = compact.reshape(-1, generate.COMPACT_PACKET_DWORDS)
        payloads.append(packets[:, 1:].reshape(-1))
    combined = np.concatenate(payloads).astype(np.int32)
    if combined.shape != (generate.QKV_PAYLOAD_DWORDS,):
        raise RuntimeError(f"qkv payload shape mismatch: {combined.shape} != {(generate.QKV_PAYLOAD_DWORDS,)}")
    return combined


def _current_stream_order(payload: np.ndarray) -> np.ndarray:
    if payload.shape != (generate.CURRENT_DWORDS,):
        raise RuntimeError(f"current payload shape mismatch: {payload.shape} != {(generate.CURRENT_DWORDS,)}")
    words = payload.reshape(8, 64)
    even_words = words[:, 0::2].reshape(-1)
    odd_words = words[:, 1::2].reshape(-1)
    return np.concatenate((even_words, odd_words)).astype(np.int32)


def _make_fixture(
    model: Qwen3Q4NXModel,
    layer: int,
    current_token: int,
) -> tuple[np.ndarray, np.ndarray, np.ndarray, np.ndarray]:
    inputs = make_reference_inputs(current_token)
    input_norm, _post_norm, q_norm, k_norm = model.layer_norm_weights(layer)
    activation = input_norm_activation(inputs.hidden, input_norm)
    packed = model.layer_weight_stream(layer)

    q_compact = q_body_compact(packed, activation)
    k_compact = k_body_compact(packed, activation)
    v_compact = v_body_compact(packed, activation)
    qkv_payloads = _compact_payloads(q_compact, k_compact, v_compact)

    side_bf16 = qk_rope_side_bf16(current_token, q_norm, k_norm, model.config.rope_theta)
    qk_rope_side = np.frombuffer(side_bf16.tobytes(), dtype=np.int32).copy()
    if qk_rope_side.shape != (QK_ROPE_DWORDS,):
        raise RuntimeError(f"qk_rope_side shape mismatch: {qk_rope_side.shape} != {(QK_ROPE_DWORDS,)}")

    expected_q = q_payload_body(packed, activation, q_norm, current_token, model.config.rope_theta)
    expected_k = _current_stream_order(
        current_k_payload_body(packed, activation, k_norm, current_token, model.config.rope_theta)
    )
    expected_v = _current_stream_order(current_v_payload_body(packed, activation))
    expected_current = np.concatenate((expected_k, expected_v)).astype(np.int32)
    return qkv_payloads, qk_rope_side, expected_q, expected_current


def run(
    current_token: int,
    model_path: Path | None,
    layer: int,
    download_model: bool,
    build_only: bool,
) -> bool:
    model = full_runner._load_model(model_path, download_model)
    errors = validate_model_assets(model, layer)
    if errors:
        for error in errors:
            print(f"  QWEN3 ASSET FAIL: {error}")
        return False

    print("=" * 78)
    print(f"qwen3 isolated kernel microbench: {generate.CASE_NAME}")
    print("=" * 78)
    print(f"  model={_model_path(model_path)}")
    print(f"  layer={layer}")
    print(f"  current_token={current_token}")
    print("  kernel=postprocess_qkv.o only")
    print("  ABI=12 compact payload records -> Q payload + current K/V stream")
    print()

    xclbin_path, insts_path = _build_kernel(current_token)
    print(f"  xclbin={xclbin_path}")
    print(f"  insts={insts_path}")
    if build_only:
        return True

    print("  Preparing compact payloads and CPU oracle...")
    qkv_payloads, qk_rope_side, expected_q, expected_current = _make_fixture(model, layer, current_token)
    qkv_buf = XRTTensor(qkv_payloads.copy(), dtype=np.int32)
    side_buf = XRTTensor(qk_rope_side.copy(), dtype=np.int32)
    q_out_buf = XRTTensor(np.full((generate.Q_DWORDS,), -1, dtype=np.int32), dtype=np.int32)
    current_out_buf = XRTTensor(np.full((generate.CURRENT_STREAM_DWORDS,), -1, dtype=np.int32), dtype=np.int32)

    print("  Loading NPU kernel...")
    handle = npu_build.load_kernel(xclbin_path, insts_path)
    print("  Running on NPU...")
    result = npu_build.run(handle, [qkv_buf, side_buf, q_out_buf, current_out_buf])
    got_q = q_out_buf.numpy().astype(np.int32)
    got_current = current_out_buf.numpy().astype(np.int32)
    q_stats = bf16_compare_stats("postprocess_q_payload", expected_q, got_q, ABS_TOL, REL_TOL)
    k_stats = bf16_compare_stats(
        "postprocess_current_k_stream",
        expected_current[: generate.CURRENT_DWORDS],
        got_current[: generate.CURRENT_DWORDS],
        ABS_TOL,
        REL_TOL,
    )
    v_stats = bf16_compare_stats(
        "postprocess_current_v_stream",
        expected_current[generate.CURRENT_DWORDS :],
        got_current[generate.CURRENT_DWORDS :],
        ABS_TOL,
        REL_TOL,
    )
    print(f"  NPU time: {result.npu_time / 1e3:.1f} us")
    for stats in (q_stats, k_stats, v_stats):
        print("  " + format_bf16_compare_stats(stats))
    if q_stats.mismatch_count or k_stats.mismatch_count or v_stats.mismatch_count:
        print("  FAIL: postprocess_qkv isolated numerical validation failed")
        return False
    print("  PASS: postprocess_qkv isolated numerical validation")
    return True


def main() -> None:
    parser = argparse.ArgumentParser(prog="qwen3 postprocess_qkv kernel microbench")
    parser.add_argument("--current-token", type=int, default=31)
    parser.add_argument("--model-path", type=Path, default=None)
    parser.add_argument("--layer", type=int, default=DEFAULT_LAYER)
    parser.add_argument("--download-model", action="store_true")
    parser.add_argument("--build-only", action="store_true")
    args = parser.parse_args()

    ok = run(
        current_token=args.current_token,
        model_path=args.model_path,
        layer=args.layer,
        download_model=args.download_model,
        build_only=args.build_only,
    )
    raise SystemExit(0 if ok else 1)


if __name__ == "__main__":
    main()
