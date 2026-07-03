#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Runner for the exact row1/c1r1 compact-tree weight microbench."""

from __future__ import annotations

import argparse
import os
from pathlib import Path

os.environ.setdefault("QWEN3_MAIN16_KERNEL_SOURCE", "qwen3_decode_weight_compact.cc")

import npu_build
import numpy as np
from aie.utils.hostruntime.xrtruntime.tensor import XRTTensor

from cases import qwen3_8b_decode_layer_runner as full_runner
from cases import weight_compact_microbench_generate as generate
from cases.full_layer_engine_reference import aux_as_i32, packed_as_i32
from qwen3_model import DEFAULT_QWEN3_8B_MODEL_PATH, Qwen3Q4NXModel

EXPERIMENT_DIR = Path(__file__).parent
BUILD_NAME = "qwen3-weight-compact"


def _model_path(model_path: Path | None) -> Path:
    return DEFAULT_QWEN3_8B_MODEL_PATH if model_path is None else model_path


def _make_weight_buffer(
    model: Qwen3Q4NXModel,
    layer: int,
    current_token: int,
) -> tuple[np.ndarray, int]:
    input_norm, post_norm, q_norm, k_norm = model.layer_norm_weights(layer)
    packed = model.layer_weight_stream(layer)
    aux_i32 = aux_as_i32(current_token, input_norm, post_norm, q_norm, k_norm, model.config.rope_theta)
    weights_i32 = np.concatenate((aux_i32, packed_as_i32(packed))).astype(np.int32)
    return weights_i32, int(packed.shape[0])


def build_kernel() -> tuple[Path, Path]:
    build_dir = EXPERIMENT_DIR / "build" / BUILD_NAME
    build_dir.mkdir(parents=True, exist_ok=True)
    mlir_path = build_dir / "design.mlir"
    xclbin_path = build_dir / "design.xclbin"
    insts_path = build_dir / "design.bin"

    mlir_text = generate.generate_mlir()
    mlir_path.write_text(mlir_text)
    errors = generate.validate_generated_mlir(mlir_text)
    if errors:
        raise RuntimeError("\n".join(f"  QWEN3 WEIGHT-COMPACT STRUCTURE FAIL: {error}" for error in errors))
    npu_build.compile_mlir(mlir_path, xclbin_path, insts_path)
    return xclbin_path, insts_path


def _expected_headers() -> np.ndarray:
    headers = [0x1] * 12
    headers.extend([0x4] * 8)
    headers.extend([0x8] * 48)
    headers.extend([0x4] * 8)
    return np.asarray(headers, dtype=np.int32)


def _validate_sink(sink: np.ndarray) -> list[str]:
    errors: list[str] = []
    if sink.shape != (generate.SINK_DWORDS,):
        errors.append(f"sink shape mismatch: {sink.shape} != {(generate.SINK_DWORDS,)}")
        return errors
    packets = sink.reshape(generate.GLOBAL_COMPACT_PACKETS, generate.COMPACT_PACKET_DWORDS)
    got_headers = packets[:, 0].astype(np.int32)
    expected_headers = _expected_headers()
    if not np.array_equal(got_headers, expected_headers):
        errors.append(f"compact header sequence mismatch: got {got_headers.tolist()}")
    payload_nonzero = int(np.count_nonzero(packets[:, 1:]))
    if payload_nonzero:
        errors.append(f"expected zero compact payload, got {payload_nonzero} nonzero dwords")
    return errors


def run(
    current_token: int,
    model_path: Path | None,
    layer: int,
    download_model: bool,
    build_only: bool,
) -> bool:
    model = full_runner._load_model(model_path, download_model)
    errors = full_runner.validate_model_assets(model, layer)
    if errors:
        for error in errors:
            print(f"  QWEN3 ASSET FAIL: {error}")
        return False

    print("=" * 78)
    print(f"qwen3-layer exact compact-tree weight microbench: {generate.CASE_NAME}")
    print("=" * 78)
    print(f"  model={_model_path(model_path)}")
    print(f"  layer={layer}")
    print("  topology=weights BO -> row1 weight stream -> Main16 records -> row1/c1r1 compact -> host sink")
    print("  numerics=disabled; no activation, attention, or FFN downstream path is generated")
    print()

    xclbin_path, insts_path = build_kernel()
    print(f"  xclbin={xclbin_path}")
    print(f"  insts={insts_path}")
    if build_only:
        return True

    print("  Loading NPU kernel...")
    handle = npu_build.load_kernel(xclbin_path, insts_path)
    print("  Preparing real aux-prefixed Q4NX weight stream and compact sink...")
    model_current_token = full_runner.DEFAULT_CURRENT_TOKEN if current_token is None else current_token
    weights_i32, weight_bytes = _make_weight_buffer(model, layer, model_current_token)
    weights_buf = XRTTensor(weights_i32.copy(), dtype=np.int32)
    sink_buf = XRTTensor(np.full((generate.SINK_DWORDS,), -1, dtype=np.int32), dtype=np.int32)

    print("  Running on NPU...")
    result = npu_build.run(handle, [weights_buf, sink_buf])
    npu_time_us = result.npu_time / 1e3
    npu_time_s = result.npu_time / 1e9
    weight_gib_s = weight_bytes / npu_time_s / (1024**3)
    sink = sink_buf.numpy().astype(np.int32)
    print(f"  NPU time: {npu_time_us:.1f} us")
    print(f"  weight_stream_bytes={weight_bytes}")
    print(f"  weight_stream_mib={weight_bytes / (1024**2):.3f}")
    print(f"  weight_chunks_5120B={weight_bytes // 5120}")
    print(f"  compact_global_packets={generate.GLOBAL_COMPACT_PACKETS}")
    print(f"  compact_sink_dwords={generate.SINK_DWORDS}")
    print(f"  effective_weight_payload_bandwidth={weight_gib_s:.3f} GiB/s")
    errors = _validate_sink(sink)
    if errors:
        print(f"  FAIL: {len(errors)} compact sink mismatches")
        for error in errors:
            print(f"    {error}")
        return False
    print("  PASS: exact compact-tree weight microbench completed")
    return True


def main() -> None:
    parser = argparse.ArgumentParser(prog="qwen3 exact compact-tree weight microbench runner")
    parser.add_argument("--current-token", type=int, default=31)
    parser.add_argument("--model-path", type=Path, default=None)
    parser.add_argument("--layer", type=int, default=0)
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
