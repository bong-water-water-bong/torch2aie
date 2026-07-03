"""Generate an isolated Q4NX weight-path MLIR-AIE microbench."""

from __future__ import annotations

from pathlib import Path

from contract import CHUNK_BF16, MAIN_COLUMNS, MAIN_ROWS, ROWS_PER_PATCH
from cases.full_layer_engine_reference import (
    AUX_DWORDS,
    COLUMN_WEIGHT_BF16,
    PATCH_WEIGHT_BF16,
    TOTAL_WEIGHT_AND_AUX_I32,
)
from mlir_utils import flow, npu_address_patch, npu_push_queue, npu_sync, npu_writebd
from projection_schedule import (
    DOWN_WEIGHT_CHUNKS,
    FULL_LAYER_DOWN_WEIGHT_CHUNK_BASE,
    FULL_LAYER_O_WEIGHT_CHUNK_BASE,
    FULL_LAYER_UPGATE_WEIGHT_CHUNK_BASE,
    O_WEIGHT_CHUNKS,
    QKV_BODY_WEIGHT_CHUNKS,
    Q_WEIGHT_CHUNK_BASE,
    UPGATE_WEIGHT_CHUNKS,
)
from weight_stream import (
    WeightStreamConfig,
    weight_stream_buffers,
    weight_stream_input_rings,
    weight_stream_lock_defs,
    weight_stream_row_streams,
)

CASE_NAME = "qwen3-weight-path"
MAIN16_KERNEL_OBJECT = "main_projection_q4nx_fast.o"
MAIN16_WEIGHT_CONSUMER = "q4nx_main16_weight_stream_consume"
MAIN16_PHASE_LIMIT_FULL = 7
MAIN_WEIGHT_EMPTY_LOCK = 2
MAIN_WEIGHT_FULL_LOCK = 3
MAIN_WEIGHT_BDS = (2, 3)
WEIGHT_PATCH_INPUT_BDS = ((4, 5), (32, 33))
WEIGHT_ROW_BDS = ((6, 7), (28, 29), (8, 9), (30, 31))
WEIGHT_PATCH_BD_IDS = (
    (0, 2, 4, 6, 8, 10, 12, 14),
    (1, 3, 5, 7, 9, 11, 13, 15),
)
WEIGHT_SPAN_CHUNKS = QKV_BODY_WEIGHT_CHUNKS


def _main_symbol(group: int, row: int) -> str:
    return f"m{group}_{row}"


def _split_weight_span(chunk_base: int, chunks: int) -> tuple[tuple[int, int], ...]:
    spans: list[tuple[int, int]] = []
    for offset in range(0, chunks, WEIGHT_SPAN_CHUNKS):
        spans.append((chunk_base + offset, min(WEIGHT_SPAN_CHUNKS, chunks - offset)))
    return tuple(spans)


def _full_weight_spans() -> tuple[tuple[int, int], ...]:
    spans = (
        (Q_WEIGHT_CHUNK_BASE, QKV_BODY_WEIGHT_CHUNKS),
        (FULL_LAYER_O_WEIGHT_CHUNK_BASE, O_WEIGHT_CHUNKS),
        *_split_weight_span(FULL_LAYER_UPGATE_WEIGHT_CHUNK_BASE, UPGATE_WEIGHT_CHUNKS),
        *_split_weight_span(FULL_LAYER_DOWN_WEIGHT_CHUNK_BASE, DOWN_WEIGHT_CHUNKS),
    )
    if len(spans) != len(WEIGHT_PATCH_BD_IDS[0]):
        raise RuntimeError(f"bad full-layer weight span count: {len(spans)}")
    return spans


def _weight_runtime_sequence() -> str:
    lines = [f"    aie.runtime_sequence(%weights: memref<{TOTAL_WEIGHT_AND_AUX_I32}xi32>) {{"]
    weight_spans = _full_weight_spans()
    chunk_pair_bytes = ROWS_PER_PATCH * CHUNK_BF16 * 2
    for group, column in enumerate(MAIN_COLUMNS):
        column_base = AUX_DWORDS * 4 + group * COLUMN_WEIGHT_BF16 * 2
        for patch, bd_ids in enumerate(WEIGHT_PATCH_BD_IDS):
            patch_base = column_base + patch * PATCH_WEIGHT_BF16 * 2
            for span_idx, (chunk_base, chunk_count) in enumerate(weight_spans):
                bd_id = bd_ids[span_idx]
                has_next = span_idx + 1 < len(weight_spans)
                next_bd = bd_ids[span_idx + 1] if has_next else 0
                byte_offset = patch_base + chunk_base * chunk_pair_bytes
                dwords = chunk_count * ROWS_PER_PATCH * CHUNK_BF16 // 2
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
    lines.append("    }")
    return "\n".join(lines)


def _weight_column_memtile(group: int) -> str:
    tile = f"mt{group}"
    weight_config = WeightStreamConfig(
        group=group,
        input_channels=(4, 5),
        patch_input_bds=WEIGHT_PATCH_INPUT_BDS,
        row_bds=WEIGHT_ROW_BDS,
        row_block_prefix="wt_row",
        row_terminal_label="^end",
        input_block_prefix="q4nx_",
    )
    return f"""
{weight_stream_buffers(tile)}
{weight_stream_lock_defs(tile, 0)}

    %{tile}_dma = aie.memtile_dma(%{tile}) {{
{weight_stream_input_rings(weight_config)}

{weight_stream_row_streams(weight_config)}
    ^end:
      aie.end
    }}
"""


def _main_tile(group: int, row: int) -> str:
    tile = _main_symbol(group, row)
    return f"""
    %{tile}_wt_ping = aie.buffer(%{tile}) {{address = 10240 : i32, sym_name = "{tile}_wt_ping"}} : memref<{CHUNK_BF16}xbf16>
    %{tile}_wt_pong = aie.buffer(%{tile}) {{address = 16384 : i32, sym_name = "{tile}_wt_pong"}} : memref<{CHUNK_BF16}xbf16>
    %{tile}_wt_empty = aie.lock(%{tile}, {MAIN_WEIGHT_EMPTY_LOCK}) {{init = 2 : i32, sym_name = "{tile}_wt_empty"}}
    %{tile}_wt_full = aie.lock(%{tile}, {MAIN_WEIGHT_FULL_LOCK}) {{init = 0 : i32, sym_name = "{tile}_wt_full"}}

    %{tile}_core = aie.core(%{tile}) {{
      %group_i32 = arith.constant {group} : i32
      %row_i32 = arith.constant {row} : i32
      %phase_limit_i32 = arith.constant {MAIN16_PHASE_LIMIT_FULL} : i32
      func.call @{MAIN16_WEIGHT_CONSUMER}(%{tile}_wt_ping, %{tile}_wt_pong, %group_i32, %row_i32, %phase_limit_i32)
        : (memref<{CHUNK_BF16}xbf16>, memref<{CHUNK_BF16}xbf16>, i32, i32, i32) -> ()
      aie.end
    }}

    %{tile}_mem = aie.mem(%{tile}) {{
      %wt_dma = aie.dma_start(S2MM, 1, ^wt_ping, ^end)
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
    ^end:
      aie.end
    }}
"""


def generate_mlir() -> str:
    experiment_dir = Path(__file__).parent.parent.resolve()
    tile_defs: list[str] = []
    for group, column in enumerate(MAIN_COLUMNS):
        tile_defs.append(f"    %shim{group} = aie.tile({column}, 0)")
        tile_defs.append(f"    %mt{group} = aie.tile({column}, 1)")
        for row_idx, row in enumerate(MAIN_ROWS):
            tile_defs.append(f"    %{_main_symbol(group, row_idx)} = aie.tile({column}, {row})")

    flows = [f"    // case marker {CASE_NAME}"]
    for group in range(len(MAIN_COLUMNS)):
        flows.append(flow(f"shim{group}", 0, f"mt{group}", 4))
        flows.append(flow(f"shim{group}", 1, f"mt{group}", 5))
        for row in range(len(MAIN_ROWS)):
            flows.append(flow(f"mt{group}", row, _main_symbol(group, row), 1))

    blocks: list[str] = []
    for group in range(len(MAIN_COLUMNS)):
        blocks.append(_weight_column_memtile(group))
        for row in range(len(MAIN_ROWS)):
            blocks.append(_main_tile(group, row))

    return f"""module {{
  aie.device(npu2) {{
{chr(10).join(tile_defs)}

{chr(10).join(flows)}

    func.func private @{MAIN16_WEIGHT_CONSUMER}(memref<{CHUNK_BF16}xbf16>, memref<{CHUNK_BF16}xbf16>, i32, i32, i32) attributes {{link_with = "{experiment_dir}/{MAIN16_KERNEL_OBJECT}"}}

{chr(10).join(blocks)}
{_weight_runtime_sequence()}
  }}
}}
"""


def validate_generated_mlir(mlir: str) -> list[str]:
    required = (
        f"case marker {CASE_NAME}",
        MAIN16_WEIGHT_CONSUMER,
        "aie.runtime_sequence(%weights",
        "aie.dma_start(S2MM, 1, ^wt_ping, ^end)",
        "aie.dma_start(S2MM, 4",
        "aie.dma_start(MM2S, 0",
    )
    return [f"missing required marker: {marker}" for marker in required if marker not in mlir]
