"""Generate a Q4NX weight + exact compact-tree MLIR-AIE microbench."""

from __future__ import annotations

from pathlib import Path

from compact_dataflow import (
    BRIDGE_COMPACT_OUT_CHANNEL,
    COLUMN_OUT_CHANNEL,
    _bridge,
    compact_phase_trace,
    q4nx_weight_column_memtile,
)
from contract import CHUNK_BF16, COMPACT_PACKET_DWORDS, MAIN_COLUMNS, MAIN_ROWS, PHASE_BLOCKS
from cases.full_layer_engine_generate import (
    MAIN16_BUFFERS,
    MAIN16_PHASE_LIMIT_FULL,
    MAIN_RECORD_BDS,
    MAIN_WEIGHT_BDS,
    _full_weight_spans,
    _main_buffer_attr,
    _main_lock_decls,
    _main_record_dma_blocks,
    _main_symbol,
    _record_ping_name,
    _record_pong_name,
    _record_pingpong_type,
)
from cases.full_layer_engine_reference import (
    AUX_DWORDS,
    COLUMN_WEIGHT_BF16,
    PATCH_WEIGHT_BF16,
    TOTAL_WEIGHT_AND_AUX_I32,
)
from mlir_utils import flow, npu_address_patch, npu_push_queue, npu_sync, npu_writebd, packet_flow
from projection_schedule import QKV_BODY_WEIGHT_CHUNKS
from qkv_compact_reference import FFN_GLOBAL_PACKET_ID, O_GLOBAL_PACKET_ID, Q_GLOBAL_PACKET_ID

CASE_NAME = "qwen3-weight-compact"
MAIN16_KERNEL_OBJECT = "main_projection_q4nx_fast.o"
MAIN16_WEIGHT_COMPACT_CONSUMER = "q4nx_main16_weight_compact_consume"
WEIGHT_PATCH_BD_IDS = (
    (0, 2, 4, 6, 8, 10, 12, 14),
    (1, 3, 5, 7, 9, 11, 13, 15),
)
SINK_BD = 0
SINK_CHANNEL = 0
GLOBAL_COMPACT_PACKETS = sum(PHASE_BLOCKS)
SINK_DWORDS = GLOBAL_COMPACT_PACKETS * COMPACT_PACKET_DWORDS
QKV_BODY_PHASE_TRACE = compact_phase_trace(("q", "k", "v", "o", "upgate", "down"))


def _runtime_sequence() -> str:
    lines = [
        f"    aie.runtime_sequence(%weights: memref<{TOTAL_WEIGHT_AND_AUX_I32}xi32>, "
        f"%sink: memref<{SINK_DWORDS}xi32>) {{"
    ]
    lines.extend(
        (
            npu_writebd(1, SINK_BD, SINK_DWORDS, 0),
            npu_address_patch(1, SINK_BD, 1, 0),
            npu_push_queue(1, "S2MM", SINK_CHANNEL, SINK_BD),
        )
    )
    weight_spans = _full_weight_spans()
    chunk_pair_bytes = 2 * CHUNK_BF16 * 2
    for group, column in enumerate(MAIN_COLUMNS):
        column_base = AUX_DWORDS * 4 + group * COLUMN_WEIGHT_BF16 * 2
        for patch, bd_ids in enumerate(WEIGHT_PATCH_BD_IDS):
            patch_base = column_base + patch * PATCH_WEIGHT_BF16 * 2
            for span_idx, (chunk_base, chunk_count) in enumerate(weight_spans):
                bd_id = bd_ids[span_idx]
                has_next = span_idx + 1 < len(weight_spans)
                next_bd = bd_ids[span_idx + 1] if has_next else 0
                byte_offset = patch_base + chunk_base * chunk_pair_bytes
                dwords = chunk_count * 2 * CHUNK_BF16 // 2
                lines.extend(
                    (
                        npu_writebd(
                            column,
                            bd_id,
                            dwords,
                            0,
                            next_bd=next_bd,
                            use_next_bd=has_next,
                        ),
                        npu_address_patch(column, bd_id, 0, byte_offset),
                    )
                )
            lines.append(npu_push_queue(column, "MM2S", patch, bd_ids[0]))
    for column in MAIN_COLUMNS:
        lines.extend((npu_sync(column, 0, direction=1), npu_sync(column, 1, direction=1)))
    lines.append(npu_sync(1, SINK_CHANNEL))
    lines.append("    }")
    return "\n".join(lines)


def _main_tile(group: int, row: int) -> str:
    tile = _main_symbol(group, row)
    record_type = _record_pingpong_type()
    buffer_decls = "\n".join(
        f"    %{tile}_{buffer.name} = aie.buffer(%{tile}) "
        f'{_main_buffer_attr(f"{tile}_{buffer.name}", buffer.address)} : {buffer.memref}'
        for buffer in MAIN16_BUFFERS
    )
    return f"""
{buffer_decls}
{_main_lock_decls(tile, 2)}

    %{tile}_core = aie.core(%{tile}) {{
      %group_i32 = arith.constant {group} : i32
      %row_i32 = arith.constant {row} : i32
      %phase_limit_i32 = arith.constant {MAIN16_PHASE_LIMIT_FULL} : i32
      func.call @{MAIN16_WEIGHT_COMPACT_CONSUMER}(%{tile}_wt_ping, %{tile}_wt_pong, {_record_ping_name(tile)}, {_record_pong_name(tile)}, %group_i32, %row_i32, %phase_limit_i32)
        : (memref<{CHUNK_BF16}xbf16>, memref<{CHUNK_BF16}xbf16>, {record_type}, {record_type}, i32, i32, i32) -> ()
      aie.end
    }}

    %{tile}_mem = aie.mem(%{tile}) {{
      %wt_dma = aie.dma_start(S2MM, 1, ^wt_ping, ^record_start)
    ^wt_ping:
      aie.use_lock(%{tile}_wt_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%{tile}_wt_ping : memref<{CHUNK_BF16}xbf16>, 0, {CHUNK_BF16}) {{bd_id = {MAIN_WEIGHT_BDS[0]} : i32, next_bd_id = {MAIN_WEIGHT_BDS[1]} : i32}}
      aie.use_lock(%{tile}_wt_full, Release, 1)
      aie.next_bd ^wt_pong
    ^wt_pong:
      aie.use_lock(%{tile}_wt_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%{tile}_wt_pong : memref<{CHUNK_BF16}xbf16>, 0, {CHUNK_BF16}) {{bd_id = {MAIN_WEIGHT_BDS[1]} : i32, next_bd_id = {MAIN_WEIGHT_BDS[0]} : i32}}
      aie.use_lock(%{tile}_wt_full, Release, 1)
      aie.next_bd ^wt_ping

    ^record_start:
      %record_dma = aie.dma_start(MM2S, 1, ^record_ping, ^end)
{_main_record_dma_blocks(tile, row)}
    ^end:
      aie.end
    }}
"""


def generate_mlir() -> str:
    experiment_dir = Path(__file__).parent.parent.resolve()
    tile_defs = [
        "    %shim_out = aie.tile(1, 0)",
        "    %bridge = aie.tile(1, 1)",
    ]
    for group, column in enumerate(MAIN_COLUMNS):
        tile_defs.append(f"    %shim{group} = aie.tile({column}, 0)")
        tile_defs.append(f"    %mt{group} = aie.tile({column}, 1)")
        for row_idx, row in enumerate(MAIN_ROWS):
            tile_defs.append(f"    %{_main_symbol(group, row_idx)} = aie.tile({column}, {row})")

    flows = [f"    // case marker {CASE_NAME}"]
    for group in range(len(MAIN_COLUMNS)):
        for row in range(len(MAIN_ROWS)):
            flows.append(flow(_main_symbol(group, row), 1, f"mt{group}", row))
            flows.append(flow(f"mt{group}", row, _main_symbol(group, row), 1))
        flows.append(flow(f"mt{group}", COLUMN_OUT_CHANNEL, "bridge", group))
        flows.append(flow(f"shim{group}", 0, f"mt{group}", 4))
        flows.append(flow(f"shim{group}", 1, f"mt{group}", 5))
    flows.extend(
        (
            packet_flow(Q_GLOBAL_PACKET_ID, "bridge", BRIDGE_COMPACT_OUT_CHANNEL, "shim_out", SINK_CHANNEL, keep_pkt_header=True),
            packet_flow(O_GLOBAL_PACKET_ID, "bridge", BRIDGE_COMPACT_OUT_CHANNEL, "shim_out", SINK_CHANNEL, keep_pkt_header=True),
            packet_flow(FFN_GLOBAL_PACKET_ID, "bridge", BRIDGE_COMPACT_OUT_CHANNEL, "shim_out", SINK_CHANNEL, keep_pkt_header=True),
        )
    )

    blocks = [_bridge(QKV_BODY_PHASE_TRACE)]
    for group in range(len(MAIN_COLUMNS)):
        blocks.append(q4nx_weight_column_memtile(group, QKV_BODY_PHASE_TRACE))
        for row in range(len(MAIN_ROWS)):
            blocks.append(_main_tile(group, row))

    return f"""module {{
  aie.device(npu2) {{
{chr(10).join(tile_defs)}

{chr(10).join(flows)}

    func.func private @{MAIN16_WEIGHT_COMPACT_CONSUMER}(memref<{CHUNK_BF16}xbf16>, memref<{CHUNK_BF16}xbf16>, memref<128xi32>, memref<128xi32>, i32, i32, i32) attributes {{link_with = "{experiment_dir}/{MAIN16_KERNEL_OBJECT}"}}

{chr(10).join(blocks)}
{_runtime_sequence()}
  }}
}}
"""


def validate_generated_mlir(mlir: str) -> list[str]:
    required = (
        f"case marker {CASE_NAME}",
        MAIN16_WEIGHT_COMPACT_CONSUMER,
        "aie.runtime_sequence(%weights",
        f"memref<{SINK_DWORDS}xi32>",
        f"aie.packet_flow({Q_GLOBAL_PACKET_ID})",
        f"aie.packet_flow({O_GLOBAL_PACKET_ID})",
        f"aie.packet_flow({FFN_GLOBAL_PACKET_ID})",
        "keep_pkt_header = true",
        f"aie.dma_start(MM2S, {BRIDGE_COMPACT_OUT_CHANNEL}, ^compact_ping_out",
        f"aie.dma_start(S2MM, 1, ^wt_ping, ^record_start)",
        f"bd_id = {MAIN_RECORD_BDS[0]} : i32",
        "aie.dma_start(S2MM, 4, ^patch0_q4nx_ping, ^patch1_start)",
        "aie.dma_start(S2MM, 5, ^patch1_q4nx_ping, ^wt_row0_start)",
    )
    errors = [f"missing weight-compact marker: {marker}" for marker in required if marker not in mlir]
    if QKV_BODY_WEIGHT_CHUNKS != 192:
        errors.append(f"unexpected QKV body weight span: {QKV_BODY_WEIGHT_CHUNKS}")
    return errors
