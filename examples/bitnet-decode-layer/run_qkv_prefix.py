#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Command-line runner for the strict Qwen3 Q/K/V prefix slice."""

from __future__ import annotations

import argparse

from cases import full_layer_qkv_prefix_runner as runner


def main() -> None:
    parser = argparse.ArgumentParser(prog="qwen3 strict QKV-prefix runner")
    parser.add_argument("--current-token", type=int, default=31)
    parser.add_argument("--check-only", action="store_true")
    parser.add_argument("--build-only", action="store_true")
    args = parser.parse_args()

    if args.check_only:
        ok = runner.check_only(current_token=args.current_token)
    elif args.build_only:
        ok = runner.build_only(current_token=args.current_token)
    else:
        ok = runner.run(current_token=args.current_token)
    raise SystemExit(0 if ok else 1)


if __name__ == "__main__":
    main()
