#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Run the isolated mac_elem_16_conf semantic matrix NPU microbench."""

from __future__ import annotations

from pathlib import Path

import npu_build
import numpy as np
from aie.utils.hostruntime.xrtruntime.tensor import XRTTensor
from ml_dtypes import bfloat16

from cases import kernel_main16_mac_elem_matrix_generate as generate

EXPERIMENT_DIR = Path(__file__).parent
PATTERN_NAMES = ("lo_z", "z_hi", "lo_hi", "hi_lo", "lo_lo", "hi_hi")
CONF_NAMES = (
    "z0_m0_a0",
    "z1_m0_a0",
    "z0_m1_a0",
    "z1_m1_a0",
    "z0_m0_a1",
    "z1_m0_a1",
    "z0_m1_a1",
    "z1_m1_a1",
)
SIGN_NAMES = ("sx0_sy0", "sx1_sy0", "sx0_sy1", "sx1_sy1")
MAC32_FOLD_NAMES = ("mac32_lo", "mac32_hi", "mac32_lo_plus_hi")


def _pack_bf16_i32(values: np.ndarray) -> np.ndarray:
    return np.frombuffer(values.astype(bfloat16).tobytes(), dtype=np.int32).copy()


def _bf16_words(words: np.ndarray) -> np.ndarray:
    return np.frombuffer(words.astype(np.int32).tobytes(), dtype=bfloat16).astype(np.float32)


def _fixture() -> tuple[np.ndarray, dict[str, np.ndarray]]:
    rows = np.arange(generate.ROWS, dtype=np.float32)
    values = {
        "coeff_lo": (rows + 1.0).astype(bfloat16),
        "coeff_hi": (rows + 17.0).astype(bfloat16),
        "act_lo": (rows % 5 + 2.0).astype(bfloat16),
        "act_hi": (rows % 7 + 9.0).astype(bfloat16),
        "one": np.ones((generate.ROWS,), dtype=np.float32).astype(bfloat16),
        "base": np.full((generate.ROWS,), 10.0, dtype=np.float32).astype(bfloat16),
    }
    packed = _pack_bf16_i32(
        np.concatenate(
            [
                values["coeff_lo"],
                values["coeff_hi"],
                values["act_lo"],
                values["act_hi"],
                values["one"],
                values["base"],
            ]
        )
    )
    return packed, values


def _pattern(kind: int, lo: np.ndarray, hi: np.ndarray) -> tuple[np.ndarray, np.ndarray]:
    zero = np.zeros_like(lo)
    patterns = (
        (lo, zero),
        (zero, hi),
        (lo, hi),
        (hi, lo),
        (lo, lo),
        (hi, hi),
    )
    return patterns[kind]


def _bf16_word_vector(values: np.ndarray) -> np.ndarray:
    return _pack_bf16_i32(values.astype(np.float32).astype(bfloat16))


def _candidate_words(
    a_lo: np.ndarray,
    a_hi: np.ndarray,
    b_lo: np.ndarray,
    b_hi: np.ndarray,
    base: np.ndarray | None = None,
) -> dict[str, np.ndarray]:
    base_f = np.zeros_like(a_lo, dtype=np.float32) if base is None else base.astype(np.float32)
    terms = {
        "acc": base_f,
        "lo_lo": base_f + a_lo.astype(np.float32) * b_lo.astype(np.float32),
        "hi_hi": base_f + a_hi.astype(np.float32) * b_hi.astype(np.float32),
        "lo_hi": base_f + a_lo.astype(np.float32) * b_hi.astype(np.float32),
        "hi_lo": base_f + a_hi.astype(np.float32) * b_lo.astype(np.float32),
        "same_sum": base_f
        + a_lo.astype(np.float32) * b_lo.astype(np.float32)
        + a_hi.astype(np.float32) * b_hi.astype(np.float32),
        "cross_sum": base_f
        + a_lo.astype(np.float32) * b_hi.astype(np.float32)
        + a_hi.astype(np.float32) * b_lo.astype(np.float32),
    }
    return {name: _bf16_word_vector(vec) for name, vec in terms.items()}


def _term_values(
    a_lo: np.ndarray,
    a_hi: np.ndarray,
    b_lo: np.ndarray,
    b_hi: np.ndarray,
) -> dict[str, np.ndarray]:
    a0 = a_lo.astype(np.float32)
    a1 = a_hi.astype(np.float32)
    b0 = b_lo.astype(np.float32)
    b1 = b_hi.astype(np.float32)
    return {
        "lo_lo": a0 * b0,
        "hi_hi": a1 * b1,
        "lo_hi": a0 * b1,
        "hi_lo": a1 * b0,
        "same_sum": a0 * b0 + a1 * b1,
        "cross_sum": a0 * b1 + a1 * b0,
    }


def _classify(got_words: np.ndarray, candidates: dict[str, np.ndarray]) -> str:
    matches = [name for name, expected in candidates.items() if np.array_equal(got_words, expected)]
    if matches:
        return "|".join(matches)
    got = _bf16_words(got_words)
    best_name = "unclassified"
    best_abs = float("inf")
    for name, expected in candidates.items():
        diff = np.max(np.abs(got - _bf16_words(expected)))
        if diff < best_abs:
            best_abs = float(diff)
            best_name = name
    return f"UNCLASSIFIED nearest={best_name} max_abs={best_abs:.6g}"


def _signed_candidate_words(
    base: np.ndarray,
    terms: dict[str, np.ndarray],
) -> dict[str, np.ndarray]:
    out: dict[str, np.ndarray] = {}
    for term_name, term in terms.items():
        out[f"+{term_name}"] = _bf16_word_vector(base + term)
        out[f"-{term_name}"] = _bf16_word_vector(base - term)
    return out


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
        raise RuntimeError("\n".join(f"  MAC-ELEM-MATRIX STRUCTURE FAIL: {error}" for error in errors))
    npu_build.compile_mlir(mlir_path, xclbin_path, insts_path)
    return xclbin_path, insts_path


def _analyze(got_words: np.ndarray, values: dict[str, np.ndarray]) -> bool:
    rows_per_variant = generate.ROWS // 2
    unclassified: list[str] = []
    slot = 0
    print("  pattern matrix, conf=(zero_acc=0, sub_mul=0, sub_acc=0):")
    for a_kind, a_name in enumerate(PATTERN_NAMES):
        labels: list[str] = []
        a_lo, a_hi = _pattern(a_kind, values["coeff_lo"], values["coeff_hi"])
        for b_kind, b_name in enumerate(PATTERN_NAMES):
            b_lo, b_hi = _pattern(b_kind, values["act_lo"], values["act_hi"])
            got = got_words[slot * rows_per_variant : (slot + 1) * rows_per_variant]
            label = _classify(got, _candidate_words(a_lo, a_hi, b_lo, b_hi))
            if label.startswith("UNCLASSIFIED"):
                unclassified.append(f"{a_name}/{b_name}: {label}")
            labels.append(f"{b_name}={label}")
            slot += 1
        print(f"    A {a_name}: " + ", ".join(labels))

    print("  conf matrix for A=lo_hi, B=lo_hi, base_acc=10:")
    a_lo, a_hi = values["coeff_lo"], values["coeff_hi"]
    b_lo, b_hi = values["act_lo"], values["act_hi"]
    product_values = _term_values(a_lo, a_hi, b_lo, b_hi)
    base = values["base"].astype(np.float32)
    for conf_idx, conf_name in enumerate(CONF_NAMES):
        got = got_words[slot * rows_per_variant : (slot + 1) * rows_per_variant]
        zero_acc = (conf_idx & 1) != 0
        sub_mul = (conf_idx & 2) != 0
        sub_acc = (conf_idx & 4) != 0
        base_effect = np.zeros_like(base) if zero_acc else (-base if sub_acc else base)
        prefix = "-" if sub_mul else "+"
        candidates = {
            f"{prefix}{term_name}": _bf16_word_vector(
                base_effect + (-term if sub_mul else term)
            )
            for term_name, term in product_values.items()
        }
        label = _classify(got, candidates)
        if label.startswith("UNCLASSIFIED"):
            unclassified.append(f"{conf_name}: {label}")
        print(f"    {conf_name}: {label}")
        slot += 1

    print("  sign overload matrix for A=lo_hi, B=lo_hi, base_acc=10:")
    sign_candidates = _signed_candidate_words(base, product_values)
    for sign_name in SIGN_NAMES:
        got = got_words[slot * rows_per_variant : (slot + 1) * rows_per_variant]
        label = _classify(got, sign_candidates)
        if label.startswith("UNCLASSIFIED"):
            unclassified.append(f"{sign_name}: {label}")
        print(f"    {sign_name}: {label}")
        slot += 1

    print("  mac_elem_32_conf fold matrix for A=lo_hi, B=lo_hi:")
    fold_candidates = _candidate_words(a_lo, a_hi, b_lo, b_hi)
    for fold_name in MAC32_FOLD_NAMES:
        got = got_words[slot * rows_per_variant : (slot + 1) * rows_per_variant]
        label = _classify(got, fold_candidates)
        if label.startswith("UNCLASSIFIED"):
            unclassified.append(f"{fold_name}: {label}")
        print(f"    {fold_name}: {label}")
        slot += 1

    if unclassified:
        print("  unclassified outputs:")
        for item in unclassified[:12]:
            print(f"    {item}")
        if len(unclassified) > 12:
            print(f"    ... {len(unclassified) - 12} more")
    return not unclassified


def run(build_only: bool) -> bool:
    print("=" * 78)
    print(f"qwen3 isolated kernel microbench: {generate.CASE_NAME}")
    print("=" * 78)
    print("  kernel=main16_mac_elem_matrix_probe.o only")
    print("  ABI=packed bf16 input vectors -> mac_elem_16_conf result matrix")
    print()

    xclbin_path, insts_path = _build_kernel()
    print(f"  xclbin={xclbin_path}")
    print(f"  insts={insts_path}")
    if build_only:
        return True

    input_words, values = _fixture()
    input_buf = XRTTensor(input_words.copy(), dtype=np.int32)
    output_buf = XRTTensor(np.full((generate.OUTPUT_DWORDS,), -1, dtype=np.int32), dtype=np.int32)

    print("  Loading NPU kernel...")
    handle = npu_build.load_kernel(xclbin_path, insts_path)
    print("  Running on NPU...")
    result = npu_build.run(handle, [input_buf, output_buf])
    got = output_buf.numpy().astype(np.int32)
    print(f"  NPU time: {result.npu_time / 1e3:.1f} us")
    ok = _analyze(got, values)
    if not ok:
        print("  FAIL: mac_elem matrix produced unclassified rows")
        return False
    print("  PASS: mac_elem matrix classified all rows")
    return True


def main() -> None:
    import argparse

    parser = argparse.ArgumentParser(prog="qwen3 mac_elem_16_conf matrix probe")
    parser.add_argument("--build-only", action="store_true")
    args = parser.parse_args()
    ok = run(build_only=args.build_only)
    raise SystemExit(0 if ok else 1)


if __name__ == "__main__":
    main()
