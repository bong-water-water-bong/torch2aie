#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Run the isolated Main16 Q4NX scheduler NPU numerical microbench."""

from __future__ import annotations

import argparse
from pathlib import Path

import npu_build
import numpy as np
from aie.utils.hostruntime.xrtruntime.tensor import XRTTensor
from ml_dtypes import bfloat16

from cases import kernel_main16_q4nx_generate as generate
from q4nx_reference import ACT_SLICE_BF16, CHUNK_BYTES, make_q4nx_chunk, q4nx_matvec_from_chunk

EXPERIMENT_DIR = Path(__file__).parent
ABS_TOL = 0.02
REL_TOL = 0.05


def _build_kernel(mode: str, profile_cycles: bool) -> tuple[Path, Path]:
    build_name = generate.case_name_for(mode, profile_cycles=profile_cycles)
    build_dir = EXPERIMENT_DIR / "build" / build_name
    build_dir.mkdir(parents=True, exist_ok=True)
    mlir_path = build_dir / "design.mlir"
    xclbin_path = build_dir / "design.xclbin"
    insts_path = build_dir / "design.bin"

    mlir_text = generate.generate_mlir(mode=mode, profile_cycles=profile_cycles)
    mlir_path.write_text(mlir_text)
    errors = generate.validate_generated_mlir(mlir_text, mode=mode, profile_cycles=profile_cycles)
    if errors:
        raise RuntimeError("\n".join(f"  MAIN16-Q4NX STRUCTURE FAIL: {error}" for error in errors))
    npu_build.compile_mlir(mlir_path, xclbin_path, insts_path)
    return xclbin_path, insts_path


def _make_activation_chunks(rng: np.random.Generator, total_chunks: int) -> np.ndarray:
    values = rng.normal(
        loc=0.0,
        scale=0.42,
        size=(total_chunks, ACT_SLICE_BF16),
    ).astype(np.float32)
    return np.clip(values, -1.5, 1.5).astype(bfloat16)


def _pack_bf16_i32(values: np.ndarray) -> np.ndarray:
    return np.frombuffer(values.astype(bfloat16).tobytes(), dtype=np.int32).copy()


def _make_fixture(seed: int, mode: str) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
    spec = generate.mode_spec(mode)
    rng = np.random.default_rng(seed)
    activation_chunks = _make_activation_chunks(rng, spec.total_chunks)
    weight_chunks = np.stack([make_q4nx_chunk(rng) for _ in range(spec.total_chunks)])
    activation_words = _pack_bf16_i32(activation_chunks.reshape(-1))
    weight_words = np.frombuffer(weight_chunks.reshape(-1).tobytes(), dtype=np.int32).copy()
    if activation_words.shape != (spec.activation_input_dwords,):
        raise RuntimeError(
            f"activation shape mismatch: {activation_words.shape} != {(spec.activation_input_dwords,)}"
        )
    if weight_words.shape != (spec.weight_input_dwords,):
        raise RuntimeError(f"weight shape mismatch: {weight_words.shape} != {(spec.weight_input_dwords,)}")
    records = np.empty((spec.record_count, generate.RECORD_DWORDS), dtype=np.int32)
    chunk_index = 0
    record_index = 0
    for plan in spec.plans:
        for _block in range(plan.records):
            accum = np.zeros((32,), dtype=np.float32)
            for _chunk in range(plan.chunks_per_record):
                packed_chunk = weight_chunks[chunk_index]
                if packed_chunk.shape[0] != CHUNK_BYTES:
                    raise RuntimeError(f"Q4NX chunk shape mismatch: {packed_chunk.shape}")
                accum += q4nx_matvec_from_chunk(packed_chunk, activation_chunks[chunk_index])
                chunk_index += 1
            records[record_index, 0] = plan.header
            records[record_index, 1:] = _pack_bf16_i32(accum.astype(bfloat16))
            record_index += 1
    expected = records.reshape(-1)
    if expected.shape != (spec.record_output_dwords,):
        raise RuntimeError(f"expected records shape mismatch: {expected.shape}")
    return activation_words, weight_words, expected


def _bf16_record_stats(expected: np.ndarray, got: np.ndarray, mode: str) -> tuple[int, float, float]:
    spec = generate.mode_spec(mode)
    if expected.shape != got.shape:
        raise RuntimeError(f"record shape mismatch: {got.shape} != {expected.shape}")
    expected_records = expected.reshape(spec.record_count, generate.RECORD_DWORDS)
    got_records = got.reshape(spec.record_count, generate.RECORD_DWORDS)
    header_mismatches = int(np.count_nonzero(expected_records[:, 0] != got_records[:, 0]))
    expected_values = np.frombuffer(expected_records[:, 1:].reshape(-1).tobytes(), dtype=bfloat16).astype(np.float32)
    got_values = np.frombuffer(got_records[:, 1:].reshape(-1).tobytes(), dtype=bfloat16).astype(np.float32)
    abs_err = np.abs(expected_values - got_values)
    limit = np.maximum(ABS_TOL, REL_TOL * np.abs(expected_values))
    payload_mismatches = int(np.count_nonzero(abs_err > limit))
    return header_mismatches + payload_mismatches, float(np.max(abs_err)), float(np.mean(abs_err))


def _u64_pair(words: np.ndarray, index: int) -> int:
    low = int(np.uint32(words[index]))
    high = int(np.uint32(words[index + 1]))
    return low | (high << 32)


def _print_cycle_profile(records: np.ndarray) -> bool:
    shaped = records.reshape(generate.Q_BODY_RECORDS, generate.RECORD_DWORDS)
    header_mismatches = int(np.count_nonzero(shaped[:, 0] != 0x1))
    total_cycles = np.array([_u64_pair(record, 2) for record in shaped], dtype=np.uint64)
    compute_cycles = np.array([_u64_pair(record, 4) for record in shaped], dtype=np.uint64)
    lock_dma_cycles = total_cycles.astype(np.int64) - compute_cycles.astype(np.int64)
    print("  cycle profile records: header=0x1, payload=(block,total_cycles,compute_cycles,chunks,lanes,rows)")
    print(
        "  total_cycles: "
        f"min={int(total_cycles.min())} median={int(np.median(total_cycles))} max={int(total_cycles.max())}"
    )
    print(
        "  compute_cycles: "
        f"min={int(compute_cycles.min())} median={int(np.median(compute_cycles))} max={int(compute_cycles.max())}"
    )
    print(
        "  lock_dma_cycles: "
        f"min={int(lock_dma_cycles.min())} median={int(np.median(lock_dma_cycles))} max={int(lock_dma_cycles.max())}"
    )
    print(f"  first_profile_record: {shaped[0, :9].tolist()}")
    if header_mismatches:
        print(f"  FAIL: profile record headers mismatched: {header_mismatches}")
        return False
    print("  PASS: Main16 Q4NX cycle-profile run")
    return True


def run(seed: int, build_only: bool, profile_cycles: bool, mode: str) -> bool:
    print("=" * 78)
    case_name = generate.case_name_for(mode, profile_cycles=profile_cycles)
    spec = generate.mode_spec(mode)
    print(f"qwen3 isolated kernel microbench: {case_name}")
    print("=" * 78)
    if profile_cycles:
        print("  kernel=main_projection_q4nx_profile.o only")
        print("  ABI=debug profile records on the Main16 17-dword output path")
        print("  metric=per-record total cycles and compute-only cycles")
    else:
        print("  kernel=main_projection_q4nx_fast.o only")
        print(
            f"  ABI=mode {mode}: phase_limit={spec.phase_limit}, "
            f"{spec.total_chunks} weight chunks -> {spec.record_count} strict 17-dword records"
        )
        plan_text = ", ".join(
            f"{plan.label}:{plan.records}x{plan.chunks_per_record}/0x{plan.header:x}"
            for plan in spec.plans
        )
        print(f"  MyLM body plan={plan_text}")
        print("  oracle=Q4NX dequant + bf16 record payload, MyLM record headers")
    print()

    xclbin_path, insts_path = _build_kernel(mode=mode, profile_cycles=profile_cycles)
    print(f"  xclbin={xclbin_path}")
    print(f"  insts={insts_path}")
    if build_only:
        return True

    activation_words, weight_words, expected = _make_fixture(seed, mode)
    activation_buf = XRTTensor(activation_words.copy(), dtype=np.int32)
    weight_buf = XRTTensor(weight_words.copy(), dtype=np.int32)
    record_buf = XRTTensor(np.full((spec.record_output_dwords,), -1, dtype=np.int32), dtype=np.int32)

    print("  Loading NPU kernel...")
    handle = npu_build.load_kernel(xclbin_path, insts_path)
    print("  Running on NPU...")
    result = npu_build.run(handle, [activation_buf, weight_buf, record_buf])
    got = record_buf.numpy().astype(np.int32)
    if profile_cycles:
        print(f"  NPU time: {result.npu_time / 1e3:.1f} us")
        return _print_cycle_profile(got)

    mismatches, max_abs, mean_abs = _bf16_record_stats(expected, got, mode)
    print(f"  NPU time: {result.npu_time / 1e3:.1f} us")
    print(f"  main16_{mode}_records: max_abs={max_abs:.9f} mean_abs={mean_abs:.9f} mismatches={mismatches}")
    print(f"  expected[0:8]: {expected[:8].tolist()}")
    print(f"  got[0:8]:      {got[:8].tolist()}")
    if mismatches:
        print("  FAIL: Main16 Q4NX isolated numerical validation failed")
        return False
    print(f"  PASS: Main16 Q4NX isolated numerical validation ({mode})")
    return True


def main() -> None:
    parser = argparse.ArgumentParser(prog="qwen3 main16 Q4NX kernel microbench")
    parser.add_argument("--seed", type=int, default=23)
    parser.add_argument("--mode", choices=sorted(generate.MODE_SPECS), default="q")
    parser.add_argument("--build-only", action="store_true")
    parser.add_argument("--profile-cycles", action="store_true")
    args = parser.parse_args()
    if args.profile_cycles and args.mode != "q":
        parser.error("--profile-cycles currently supports only --mode q")

    ok = run(seed=args.seed, build_only=args.build_only, profile_cycles=args.profile_cycles, mode=args.mode)
    raise SystemExit(0 if ok else 1)


if __name__ == "__main__":
    main()
