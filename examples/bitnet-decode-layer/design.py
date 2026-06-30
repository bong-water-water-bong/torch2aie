#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Emit the strict Qwen3 Q/K/V prefix MLIR-AIE design.

This is a thin local wrapper around the ported IRON generator.  The ABI is the
one documented in /home/taowen/projects/IRON/explain-qwen3-layer.md: fixed
Main16 buffers, locks, BDs, 17-dword records, row1 65-dword column compact, and
c1r1 257-dword global compact.
"""

from __future__ import annotations

import argparse
from pathlib import Path

from cases.decode_cache_reference import make_decode_schedule
from cases.full_layer_qkv_prefix_generate import (
    generate_mlir,
    validate_generated_mlir,
)


def main() -> None:
    parser = argparse.ArgumentParser(
        prog="qwen3-decode-layer strict QKV-prefix design",
        description="Generate the strict MLIR-AIE QKV-prefix slice.",
    )
    parser.add_argument("-o", "--output-file-path", default="build/qkv_prefix/design.mlir")
    parser.add_argument("--current-token", type=int, default=31)
    parser.add_argument("--check-only", action="store_true")
    args = parser.parse_args()

    schedule = make_decode_schedule(args.current_token)
    mlir_text = generate_mlir(schedule)
    errors = validate_generated_mlir(mlir_text, schedule)
    if errors:
        raise SystemExit("\n".join(f"QKV-prefix ABI check failed: {error}" for error in errors))

    if args.check_only:
        print("PASS: strict QKV-prefix MLIR matches the ported IRON ABI checks")
        return

    output = Path(args.output_file_path)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(mlir_text)
    print(output)


if __name__ == "__main__":
    main()
