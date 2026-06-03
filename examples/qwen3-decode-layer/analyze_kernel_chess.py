#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Compile role kernels with Chess and summarize their .lst files.

This is the fast pre-full-run gate for Qwen3 decode-layer kernel work.  It keeps
small Chess experiments honest: compile only the touched role object, inspect
opcode/NOP/loop shape, and only then pay for a full 27-core xclbin build.
"""

from __future__ import annotations

import argparse
import re
import subprocess
from dataclasses import dataclass
from pathlib import Path

import npu_build


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

NOP_OPCODES = ("NOPX", "NOPA", "NOPB", "NOPS", "NOPM", "NOPV")
WARNING_RE = re.compile(r"\bwarning\b|^Warning\b", re.IGNORECASE)
INSTRUCTION_RE = re.compile(r"^\s*\d+\s+(?:0x[0-9a-fA-F]+\s+)+")


@dataclass(frozen=True)
class KernelReport:
    object_name: str
    source_name: str
    object_path: Path
    listing_path: Path
    object_bytes: int
    listing_bytes: int
    instruction_lines: int
    loop_count: int
    max_loop_listing_lines: int
    software_stalls: int
    warning_lines: tuple[str, ...]
    opcode_counts: dict[str, int]


def compile_object(object_name: str, verbose: bool) -> tuple[str, str]:
    source_names = npu_build.ROLE_KERNEL_SOURCES[object_name]
    if len(source_names) != 1:
        raise ValueError(f"expected one source for {object_name}: {source_names}")
    src = npu_build.EXPERIMENT_DIR / source_names[0]
    obj = npu_build.ROLE_OBJECT_DIR / object_name
    obj.parent.mkdir(parents=True, exist_ok=True)
    cmd = [
        str(npu_build.TOOLCHAIN_DIR / "bin" / "xchesscc_wrapper"),
        "aie2p",
        f"-I{npu_build.EXPERIMENT_DIR}",
        f"-I{npu_build.AIETOOLS_DIR / 'include'}",
        f"-I{npu_build.MLIR_AIE_DIR / 'include'}",
        f"-I{npu_build.MLIR_AIE_DIR / 'include/aie_kernels'}",
        f"-I{npu_build.MLIR_AIE_DIR / 'include/aie_kernels/aie2p'}",
        "-c",
        str(src),
        "-o",
        str(obj),
    ]
    completed = subprocess.run(cmd, check=True, capture_output=True, text=True)
    if verbose and completed.stdout:
        print(completed.stdout, end="")
    if verbose and completed.stderr:
        print(completed.stderr, end="")
    return completed.stdout, completed.stderr


def strings_text(path: Path) -> str:
    completed = subprocess.run(("strings", str(path)), check=True, capture_output=True, text=True)
    return completed.stdout


def count_opcode(text: str, opcode: str) -> int:
    pattern = rf"(?<![A-Z0-9_.]){re.escape(opcode)}(?![A-Z0-9_.])"
    return len(re.findall(pattern, text, flags=re.IGNORECASE))


def loop_line_lengths(lines: list[str]) -> list[int]:
    stack: list[int] = []
    lengths: list[int] = []
    for index, line in enumerate(lines, start=1):
        if ".begin_of_loop" in line:
            stack.append(index)
        elif ".end_of_loop" in line and stack:
            lengths.append(index - stack.pop() + 1)
    return lengths


def warning_lines(stdout: str, stderr: str) -> tuple[str, ...]:
    warnings: list[str] = []
    for line in (stdout + "\n" + stderr).splitlines():
        if WARNING_RE.search(line):
            warnings.append(line.strip())
    return tuple(warnings)


def analyze_object(object_name: str, compile_stdout: str, compile_stderr: str) -> KernelReport:
    source_name = npu_build.ROLE_KERNEL_SOURCES[object_name][0]
    object_path = npu_build.ROLE_OBJECT_DIR / object_name
    listing_path = object_path.with_suffix(object_path.suffix + ".lst")
    if not object_path.exists():
        raise FileNotFoundError(object_path)
    if not listing_path.exists():
        raise FileNotFoundError(listing_path)

    text = strings_text(listing_path)
    lines = text.splitlines()
    counts = {opcode: count_opcode(text, opcode) for opcode in OPCODES}
    loops = loop_line_lengths(lines)
    return KernelReport(
        object_name=object_name,
        source_name=source_name,
        object_path=object_path,
        listing_path=listing_path,
        object_bytes=object_path.stat().st_size,
        listing_bytes=listing_path.stat().st_size,
        instruction_lines=sum(1 for line in lines if INSTRUCTION_RE.match(line)),
        loop_count=len(loops),
        max_loop_listing_lines=max(loops) if loops else 0,
        software_stalls=sum(1 for line in lines if ".swstall" in line),
        warning_lines=warning_lines(compile_stdout, compile_stderr),
        opcode_counts=counts,
    )


def print_report(report: KernelReport) -> None:
    nop_total = sum(report.opcode_counts[opcode] for opcode in NOP_OPCODES)
    print(f"{report.object_name}:")
    print(f"  source: {report.source_name}")
    print(f"  object: {report.object_path}")
    print(f"  listing: {report.listing_path}")
    print(f"  object_bytes: {report.object_bytes}")
    print(f"  listing_bytes: {report.listing_bytes}")
    print(f"  instruction_lines: {report.instruction_lines}")
    print(f"  loop_count: {report.loop_count}")
    print(f"  max_loop_listing_lines: {report.max_loop_listing_lines}")
    print(f"  software_stalls: {report.software_stalls}")
    print(f"  compiler_warning_count: {len(report.warning_lines)}")
    for line in report.warning_lines:
        print(f"    warning: {line}")
    print("  opcode_counts:")
    for opcode in OPCODES:
        print(f"    {opcode}: {report.opcode_counts[opcode]}")
    print(f"    NOP_TOTAL: {nop_total}")


def selected_objects(kernel_args: list[str]) -> tuple[str, ...]:
    if not kernel_args:
        return tuple(npu_build.ROLE_KERNEL_SOURCES)
    known = set(npu_build.ROLE_KERNEL_SOURCES)
    unknown = sorted(set(kernel_args) - known)
    if unknown:
        raise ValueError(f"unknown kernel object(s): {', '.join(unknown)}")
    return tuple(kernel_args)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--kernel",
        action="append",
        default=[],
        help="Role object to compile/analyze, e.g. postprocess_qkv.o. May be repeated.",
    )
    parser.add_argument("--no-compile", action="store_true", help="Only parse existing .lst files.")
    parser.add_argument("--verbose-compile", action="store_true", help="Print full Chess compiler output.")
    args = parser.parse_args()

    objects = selected_objects(args.kernel)
    print("qwen3_kernel_chess_report:")
    for object_name in objects:
        stdout = ""
        stderr = ""
        if not args.no_compile:
            stdout, stderr = compile_object(object_name, args.verbose_compile)
        report = analyze_object(object_name, stdout, stderr)
        print_report(report)


if __name__ == "__main__":
    main()
