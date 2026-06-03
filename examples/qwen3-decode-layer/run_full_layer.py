#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Command-line runner for the real Qwen3-8B full-layer frontier."""

from __future__ import annotations

import argparse
from pathlib import Path

from cases import qwen3_8b_decode_layer_runner as runner


def main() -> None:
    parser = argparse.ArgumentParser(prog="qwen3 strict full-layer runner")
    parser.add_argument("--current-token", type=int, default=31)
    parser.add_argument("--model-path", type=Path, default=None)
    parser.add_argument("--layer", type=int, default=0)
    parser.add_argument("--download-model", action="store_true")
    parser.add_argument("--check-only", action="store_true")
    parser.add_argument("--build-only", action="store_true")
    args = parser.parse_args()

    if args.check_only and args.build_only:
        parser.error("--check-only and --build-only are mutually exclusive")

    if args.check_only:
        ok = runner.check_only(
            current_token=args.current_token,
            model_path=args.model_path,
            layer=args.layer,
            download_model=args.download_model,
        )
    elif args.build_only:
        ok = runner.build_only(
            current_token=args.current_token,
            model_path=args.model_path,
            layer=args.layer,
            download_model=args.download_model,
        )
    else:
        ok = runner.run(
            current_token=args.current_token,
            model_path=args.model_path,
            layer=args.layer,
            download_model=args.download_model,
        )
    raise SystemExit(0 if ok else 1)


if __name__ == "__main__":
    main()
