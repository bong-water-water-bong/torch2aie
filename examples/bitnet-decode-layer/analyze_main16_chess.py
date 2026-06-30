#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Report the current Main16 Chess code shape.

This is intentionally a whole-core static report.  It is not a replacement for
cycle-accurate profiling, but it makes each Q4NX microkernel experiment answer
the same first questions: did the generated code get closer to the MyLM opcode
shape, did NOP/control traffic shrink, and is the requested layer time even
compatible with the known weight payload.
"""

from __future__ import annotations

import argparse
import re
import subprocess
from pathlib import Path

from contract import TOTAL_WEIGHT_BF16


EXPERIMENT_DIR = Path(__file__).resolve().parent
REPO_ROOT = EXPERIMENT_DIR.parents[1]
DEFAULT_PROJECT_DIR = REPO_ROOT / "build" / "qwen3_decode_layer_compile" / "design.mlir.prj"
DEFAULT_CORE = "main_core_2_2"
DEFAULT_CURRENT_US = 55493.6
DEFAULT_WEIGHT_STREAM_US = 41204.5
DEFAULT_WEIGHT_PATH_US = 8031.0
DEFAULT_IRON_FULL_US = 24802.0
DEFAULT_IRON_ROW1_US = 8717.0
DEFAULT_TARGET_US = 5000.0
ROLE_INPUTS = (
    "qwen3_decode_kernels.cc",
    "qwen3_constants.h",
    "record_format.h",
)

OPCODES = (
    "VMAC.F",
    "VMAC",
    "VEXTBCST.16",
    "VEXTBCST.32",
    "VUNPACK",
    "VUPS.4X",
    "VUPS.2X",
    "VCONV.BF16.FP32",
    "VCONV.FP32.BF16",
    "VMUL.F",
    "VADD.F",
    "VSUB.F",
    "VLDA",
    "VLDB",
    "VST",
    "CRUNPACKSIZE",
    "CRUPSMODE",
    "NOPX",
    "NOPA",
    "NOPB",
    "NOPS",
    "NOPM",
    "NOPV",
)

MYLM_RAW_HOT_LOOP_STATIC = {
    "VMAC.F": 264,
    "VEXTBCST.16": 256,
    "VUNPACK": 64,
    "VUPS.4X": 64,
    "VCONV.BF16.FP32": 136,
    "VST": 0,
}


def run_text(cmd: tuple[str, ...]) -> str:
    completed = subprocess.run(cmd, check=True, capture_output=True, text=True)
    return completed.stdout


def strings_text(path: Path) -> str:
    try:
        return run_text(("strings", str(path)))
    except (FileNotFoundError, subprocess.CalledProcessError):
        return path.read_bytes().decode("utf-8", errors="ignore")


def count_opcode(text: str, opcode: str) -> int:
    pattern = rf"(?<![A-Z0-9_.]){re.escape(opcode)}(?![A-Z0-9_.])"
    return len(re.findall(pattern, text, flags=re.IGNORECASE))


def text_size_bytes(elf: Path) -> int:
    output = run_text(("readelf", "-W", "-S", str(elf)))
    total = 0
    for line in output.splitlines():
        match = re.match(
            r"\s*\[\s*\d+\]\s+\.text\s+\S+\s+[0-9a-fA-F]+"
            r"\s+[0-9a-fA-F]+\s+([0-9a-fA-F]+)\s",
            line,
        )
        if match is not None:
            total += int(match.group(1), 16)
    return total


def loop_line_lengths(lines: list[str]) -> list[int]:
    stack: list[int] = []
    lengths: list[int] = []
    for index, line in enumerate(lines, start=1):
        if ".begin_of_loop" in line:
            stack.append(index)
        elif ".end_of_loop" in line and stack:
            lengths.append(index - stack.pop() + 1)
    return lengths


def gib_per_s(byte_count: int, microseconds: float) -> float:
    return byte_count / (microseconds / 1_000_000.0) / (1024.0 ** 3)


def print_bandwidth(byte_count: int, label: str, microseconds: float) -> None:
    print(f"    {label}: {microseconds:.1f} us -> {gib_per_s(byte_count, microseconds):.3f} GiB/s")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--project-dir", type=Path, default=DEFAULT_PROJECT_DIR)
    parser.add_argument("--core", default=DEFAULT_CORE)
    parser.add_argument("--elf", type=Path, default=None)
    parser.add_argument("--cmic2", type=Path, default=None)
    parser.add_argument("--current-us", type=float, default=DEFAULT_CURRENT_US)
    parser.add_argument("--weight-stream-us", type=float, default=DEFAULT_WEIGHT_STREAM_US)
    parser.add_argument("--weight-path-us", type=float, default=DEFAULT_WEIGHT_PATH_US)
    parser.add_argument("--iron-full-us", type=float, default=DEFAULT_IRON_FULL_US)
    parser.add_argument("--iron-row1-us", type=float, default=DEFAULT_IRON_ROW1_US)
    parser.add_argument("--target-us", type=float, default=DEFAULT_TARGET_US)
    args = parser.parse_args()

    elf = args.elf or args.project_dir / f"{args.core}.elf"
    cmic2 = args.cmic2 or args.project_dir / f"{args.core}.elf.cmic2"
    if not elf.exists():
        raise FileNotFoundError(elf)
    if not cmic2.exists():
        raise FileNotFoundError(cmic2)

    text = strings_text(cmic2)
    lines = text.splitlines()
    counts = {opcode: count_opcode(text, opcode) for opcode in OPCODES}
    nop_total = sum(counts[opcode] for opcode in ("NOPX", "NOPA", "NOPB", "NOPS", "NOPM", "NOPV"))
    loop_lengths = loop_line_lengths(lines)
    weight_bytes = TOTAL_WEIGHT_BF16 * 2
    stale_inputs = tuple(
        str(EXPERIMENT_DIR / name)
        for name in ROLE_INPUTS
        if (EXPERIMENT_DIR / name).exists()
        and (EXPERIMENT_DIR / name).stat().st_mtime > cmic2.stat().st_mtime
    )

    print("main16_chess_analysis:")
    print(f"  core: {elf}")
    print(f"  cmic2: {cmic2}")
    if stale_inputs:
        print("  warning: analysis artifact is older than role source/header inputs")
        for path in stale_inputs:
            print(f"    newer_input: {path}")
    print(f"  elf_text_bytes: {text_size_bytes(elf)}")
    print(f"  cmic2_instruction_lines: {sum(1 for line in lines if 'cycles_taken=' in line)}")
    print(f"  cmic2_loop_count: {len(loop_lengths)}")
    if loop_lengths:
        print(f"  cmic2_max_loop_listing_lines: {max(loop_lengths)}")
    print(f"  q4nx_full_layer_weight_payload: {weight_bytes} bytes ({weight_bytes / 1024 / 1024:.3f} MiB)")
    print("  required_weight_bandwidth:")
    print_bandwidth(weight_bytes, "current_full_layer", args.current_us)
    print_bandwidth(weight_bytes, "full_graph_weight_stream_probe", args.weight_stream_us)
    print_bandwidth(weight_bytes, "isolated_weight_path_probe", args.weight_path_us)
    print_bandwidth(weight_bytes, "iron_full_layer", args.iron_full_us)
    print_bandwidth(weight_bytes, "iron_row1_stream", args.iron_row1_us)
    print_bandwidth(weight_bytes, "target_full_layer", args.target_us)
    print("  opcode_counts_whole_core:")
    for opcode in OPCODES:
        print(f"    {opcode}: {counts[opcode]}")
    print(f"    NOP_TOTAL: {nop_total}")
    print("  mylm_raw_hot_loop_static_reference:")
    for opcode, count in MYLM_RAW_HOT_LOOP_STATIC.items():
        print(f"    {opcode}: {count}")
    print("  note: current opcode counts are whole linked-core static counts, not isolated hot-loop dynamic counts.")


if __name__ == "__main__":
    main()
