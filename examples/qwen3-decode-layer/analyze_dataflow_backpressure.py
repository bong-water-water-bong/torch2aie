#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

"""Report the full-layer dataflow pressure around the Main16 weight stream."""

from __future__ import annotations

import argparse

from analyze_main16_chess import (
    DEFAULT_CURRENT_US,
    DEFAULT_TARGET_US,
    DEFAULT_WEIGHT_PATH_US,
    DEFAULT_WEIGHT_STREAM_US,
    gib_per_s,
)
from contract import (
    C1R2_PACKET_DWORDS,
    C1R2_QKV_REPLAYS,
    C1R2_UPGATE_REPLAYS,
    CHUNK_BF16,
    COMPACT_PACKET_DWORDS,
    DOWN_PACKET_DWORDS,
    MAIN_COLUMNS,
    PHASE_BLOCKS,
    PHASE_CHUNKS,
    PHASE_NAMES,
    RECORD_DWORDS,
    RECORD_PAYLOAD_DWORDS,
    ROWS_PER_COLUMN,
    TOTAL_WEIGHT_BF16,
)
from qkv_compact_reference import COLUMN_COMPACT_DWORDS, MAIN_CHUNK_DWORDS


MAIN16_TILES = len(MAIN_COLUMNS) * ROWS_PER_COLUMN
WEIGHT_CHUNK_BYTES = CHUNK_BF16 * 2
ACTIVATION_CHUNK_BYTES = MAIN_CHUNK_DWORDS * 4
DEFAULT_WEIGHT_COMPACT_US = 9128.4
DEFAULT_WEIGHT_STREAM_LIGHT_EDGE_US = 10830.1
DEFAULT_WEIGHT_STREAM_LIGHT_ATTENTION_US = 28341.9


def phase_header(phase_index: int) -> int:
    if phase_index in (0, 1, 2):
        return 0x1
    if phase_index in (3, 6):
        return 0x4
    if phase_index in (4, 5):
        return 0x8
    raise ValueError(f"bad phase {phase_index}")


def phase_packet_label(phase_index: int) -> str:
    if phase_index in (0, 1, 2):
        return "qkv_compact_packet1"
    if phase_index == 3:
        return "o_compact_packet4"
    if phase_index in (4, 5):
        return "ffn_compact_packet8"
    if phase_index == 6:
        return "down_compact_packet4"
    raise ValueError(f"bad phase {phase_index}")


def fmt_bytes(byte_count: int) -> str:
    return f"{byte_count} bytes ({byte_count / 1024 / 1024:.3f} MiB)"


def print_bandwidth(byte_count: int, label: str, microseconds: float) -> None:
    print(f"    {label}: {microseconds:.1f} us -> {gib_per_s(byte_count, microseconds):.3f} GiB/s")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--current-us", type=float, default=DEFAULT_CURRENT_US)
    parser.add_argument("--weight-stream-us", type=float, default=DEFAULT_WEIGHT_STREAM_US)
    parser.add_argument("--weight-stream-light-edge-us", type=float, default=DEFAULT_WEIGHT_STREAM_LIGHT_EDGE_US)
    parser.add_argument("--weight-stream-light-attention-us", type=float, default=DEFAULT_WEIGHT_STREAM_LIGHT_ATTENTION_US)
    parser.add_argument("--weight-path-us", type=float, default=DEFAULT_WEIGHT_PATH_US)
    parser.add_argument("--weight-compact-us", type=float, default=DEFAULT_WEIGHT_COMPACT_US)
    parser.add_argument("--target-us", type=float, default=DEFAULT_TARGET_US)
    args = parser.parse_args()

    weight_bytes = TOTAL_WEIGHT_BF16 * 2
    records_per_main_tile = sum(PHASE_BLOCKS)
    weight_chunks_per_main_tile = sum(
        records * chunks for records, chunks in zip(PHASE_BLOCKS, PHASE_CHUNKS, strict=True)
    )
    activation_chunks_per_main_tile = weight_chunks_per_main_tile
    main_records_all_tiles = records_per_main_tile * MAIN16_TILES
    weight_chunks_all_tiles = weight_chunks_per_main_tile * MAIN16_TILES
    activation_chunks_all_tiles = activation_chunks_per_main_tile * MAIN16_TILES
    column_packets = records_per_main_tile * len(MAIN_COLUMNS)
    global_packets = records_per_main_tile

    print("qwen3_dataflow_backpressure:")
    print(f"  weight_payload: {fmt_bytes(weight_bytes)}")
    print(f"  main16_tiles: {MAIN16_TILES}")
    print(f"  weight_chunk: {WEIGHT_CHUNK_BYTES} bytes ({WEIGHT_CHUNK_BYTES // 4} dwords on DMA1)")
    print(f"  activation_chunk: {ACTIVATION_CHUNK_BYTES} bytes ({MAIN_CHUNK_DWORDS} dwords on DMA0)")
    print("  phase_schedule_per_main16_tile:")
    for phase, name in enumerate(PHASE_NAMES):
        records = PHASE_BLOCKS[phase]
        chunks = PHASE_CHUNKS[phase]
        phase_chunks = records * chunks
        print(
            f"    {name}: records={records} chunks_per_record={chunks} "
            f"weight_chunks={phase_chunks} all_tiles={phase_chunks * MAIN16_TILES} "
            f"header=0x{phase_header(phase):x} route={phase_packet_label(phase)}"
        )

    print("  current_full_graph_coupling:")
    print(f"    main16_records_per_tile: {records_per_main_tile}")
    print(f"    main16_records_all_tiles: {main_records_all_tiles}")
    print(f"    weight_chunks_per_tile: {weight_chunks_per_main_tile}")
    print(f"    weight_chunks_all_tiles: {weight_chunks_all_tiles}")
    print(f"    activation_dma0_chunks_per_tile: {activation_chunks_per_main_tile}")
    print(f"    activation_dma0_chunks_all_tiles: {activation_chunks_all_tiles}")
    print(f"    activation_dma0_payload: {fmt_bytes(activation_chunks_all_tiles * ACTIVATION_CHUNK_BYTES)}")
    print(f"    main_record_payload: {fmt_bytes(main_records_all_tiles * RECORD_DWORDS * 4)}")
    print(f"    row1_column_packets: {column_packets}")
    print(f"    row1_column_payload: {fmt_bytes(column_packets * COLUMN_COMPACT_DWORDS * 4)}")
    print(f"    c1r1_global_packets: {global_packets}")
    print(f"    c1r1_global_payload: {fmt_bytes(global_packets * COMPACT_PACKET_DWORDS * 4)}")
    print(f"    c1r1_payload_dwords_per_packet: {COMPACT_PACKET_DWORDS - 1}")
    print(f"    main_record_payload_dwords_per_core: {RECORD_PAYLOAD_DWORDS}")

    qkv_chunks = C1R2_QKV_REPLAYS * ((C1R2_PACKET_DWORDS - 1) // MAIN_CHUNK_DWORDS)
    upgate_chunks = C1R2_UPGATE_REPLAYS * ((C1R2_PACKET_DWORDS - 1) // MAIN_CHUNK_DWORDS)
    o_chunks = PHASE_BLOCKS[3] * (PHASE_CHUNKS[3])
    down_chunks = PHASE_BLOCKS[6] * (DOWN_PACKET_DWORDS // MAIN_CHUNK_DWORDS)
    print("  activation_replay_sources_per_main16_tile:")
    print(f"    qkv_c1r2_full_vector: replays={C1R2_QKV_REPLAYS} chunks={qkv_chunks}")
    print(f"    o_attention_output: packets={PHASE_BLOCKS[3]} chunks={o_chunks}")
    print(f"    upgate_c1r2_full_vector: replays={C1R2_UPGATE_REPLAYS} chunks={upgate_chunks}")
    print(f"    down_swiglu_output: packets={PHASE_BLOCKS[6]} chunks={down_chunks}")
    print(f"    total_chunks: {qkv_chunks + o_chunks + upgate_chunks + down_chunks}")

    print("  measured_weight_payload_bandwidth:")
    print_bandwidth(weight_bytes, "current_full_layer", args.current_us)
    print_bandwidth(weight_bytes, "full_graph_weight_stream_probe", args.weight_stream_us)
    print_bandwidth(weight_bytes, "full_graph_light_attention_probe", args.weight_stream_light_attention_us)
    print_bandwidth(weight_bytes, "full_graph_light_edge_probe", args.weight_stream_light_edge_us)
    print_bandwidth(weight_bytes, "exact_compact_tree_probe", args.weight_compact_us)
    print_bandwidth(weight_bytes, "isolated_weight_path_probe", args.weight_path_us)
    print_bandwidth(weight_bytes, "target_full_layer", args.target_us)

    print("  bottleneck_ratios:")
    print(f"    exact_compact_tree_probe_vs_isolated: {args.weight_compact_us / args.weight_path_us:.3f}x slower")
    print(
        "    full_graph_light_edge_probe_vs_exact_compact_tree: "
        f"{args.weight_stream_light_edge_us / args.weight_compact_us:.3f}x slower"
    )
    print(f"    full_graph_light_edge_probe_vs_isolated: {args.weight_stream_light_edge_us / args.weight_path_us:.3f}x slower")
    print(
        "    full_graph_weight_stream_probe_vs_light_edge: "
        f"{args.weight_stream_us / args.weight_stream_light_edge_us:.3f}x slower"
    )
    print(
        "    full_graph_light_attention_probe_vs_light_edge: "
        f"{args.weight_stream_light_attention_us / args.weight_stream_light_edge_us:.3f}x slower"
    )
    print(
        "    full_graph_weight_stream_probe_vs_light_attention: "
        f"{args.weight_stream_us / args.weight_stream_light_attention_us:.3f}x slower"
    )
    print(
        "    full_graph_weight_stream_probe_vs_exact_compact_tree: "
        f"{args.weight_stream_us / args.weight_compact_us:.3f}x slower"
    )
    print(f"    full_graph_weight_stream_probe_vs_isolated: {args.weight_stream_us / args.weight_path_us:.3f}x slower")
    print(f"    full_layer_vs_full_graph_weight_stream_probe: {args.current_us / args.weight_stream_us:.3f}x slower")
    print(f"    full_layer_vs_isolated_weight_path: {args.current_us / args.weight_path_us:.3f}x slower")
    print(
        "    target_bandwidth_vs_isolated_weight_path: "
        f"{gib_per_s(weight_bytes, args.target_us) / gib_per_s(weight_bytes, args.weight_path_us):.3f}x"
    )
    print("  conclusion:")
    print("    row1/c1r1 exact compact tree keeps row1-class bandwidth at about 12.3 GiB/s.")
    print("    full graph with light edge kernels reaches 10+ GiB/s, so the static weight dataflow is viable.")
    print("    production attention is only part of the 3.8x edge slowdown; full/post/swiglu still add about 2.6x.")


if __name__ == "__main__":
    main()
