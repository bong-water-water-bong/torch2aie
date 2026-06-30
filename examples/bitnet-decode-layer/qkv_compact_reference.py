"""Single source of truth for bitnet compact record and packet protocol."""

from __future__ import annotations

from contract import (
    ATTENTION_BF16,
    ATTENTION_PACKET_DWORDS,
    DOWN_PACKET_DWORDS,
    HIDDEN_DIM,
    PHASE_NAMES,
    RECORD_DWORDS,
    RECORD_PAYLOAD_DWORDS,
    ROWS_PER_COLUMN,
)

Q_PHASE = 0
K_PHASE = 1
V_PHASE = 2
O_PHASE = 3
UP_PHASE = 4
GATE_PHASE = 5
DOWN_PHASE = 6

COLUMN_COMPACT_DWORDS = 1 + ROWS_PER_COLUMN * RECORD_PAYLOAD_DWORDS

WINDOW_DWORDS = 320  # BitNet: 5 Q heads per window × 128 dim / 2 = 320
Q_DWORDS = ATTENTION_BF16 // 2
KV_SIDE_DWORDS = WINDOW_DWORDS * 4
MAIN_CHUNK_DWORDS = 128

HIDDEN_DWORDS = HIDDEN_DIM // 2
OUTPUT_DWORDS = HIDDEN_DIM // 2
QK_ROPE_DWORDS = (ATTENTION_BF16 // 4) // 2 + 8

PACKET_ID_ATTENTION = 2
Q_GLOBAL_PACKET_ID = 0x1
K_GLOBAL_PACKET_ID = 0x1
V_GLOBAL_PACKET_ID = 0x1
O_GLOBAL_PACKET_ID = 0x4
FFN_GLOBAL_PACKET_ID = 7
DOWN_GLOBAL_PACKET_ID = 0x4

MAIN_PACKET_BASE = 16
COLUMN_PACKET_BASE = 4


def main_packet(group: int, row: int) -> int:
    return MAIN_PACKET_BASE + group * ROWS_PER_COLUMN + row


def column_packet(group: int) -> int:
    return COLUMN_PACKET_BASE + group


def mylm_record_header_for_phase(phase: int) -> int:
    if phase in (Q_PHASE, K_PHASE, V_PHASE):
        return 0x1
    if phase in (O_PHASE, 6):
        return 0x4
    if phase in (4, 5):
        return 7
    raise ValueError(f"unknown compact record phase: {phase}")


def phase_packet_id(phase: int) -> int:
    if phase == Q_PHASE:
        return Q_GLOBAL_PACKET_ID
    if phase == K_PHASE:
        return K_GLOBAL_PACKET_ID
    if phase == V_PHASE:
        return V_GLOBAL_PACKET_ID
    if phase == O_PHASE:
        return O_GLOBAL_PACKET_ID
    if phase in (4, 5):
        return FFN_GLOBAL_PACKET_ID
    if phase == 6:
        return DOWN_GLOBAL_PACKET_ID
    raise ValueError(f"unknown compact record phase: {phase}")


def record_header(phase: int, group: int, row: int) -> int:
    _ = (group, row)
    return mylm_record_header_for_phase(phase)


def body_record_header(phase: int, block: int, group: int, row: int) -> int:
    _ = (block, group, row)
    return mylm_record_header_for_phase(phase)


def qkv_payload_value(phase: int, group: int, row: int, lane: int) -> int:
    return phase * 4096 + group * 1024 + row * 256 + lane * 3 + 7


def make_qkv_record(phase: int, group: int, row: int):
    import numpy as np
    record = np.empty(RECORD_DWORDS, dtype=np.int32)
    record[0] = record_header(phase, group, row)
    for lane in range(RECORD_PAYLOAD_DWORDS):
        record[1 + lane] = qkv_payload_value(phase, group, row, lane)
    return record


def column_compact_from_records(records: list) -> "np.ndarray":
    import numpy as np
    compact = np.empty(COLUMN_COMPACT_DWORDS, dtype=np.int32)
    offset = 0
    for row, record in enumerate(records):
        segment = record if row == 0 else record[1:]
        compact[offset : offset + segment.shape[0]] = segment
        offset += segment.shape[0]
    return compact


def global_compact_from_columns(columns: list) -> "np.ndarray":
    import numpy as np
    compact = np.empty(COMPACT_PACKET_DWORDS, dtype=np.int32)
    offset = 0
    for group, column in enumerate(columns):
        segment = column if group == 0 else column[1:]
        compact[offset : offset + segment.shape[0]] = segment
        offset += segment.shape[0]
    return compact


def qkv_global_compact(phase: int) -> "np.ndarray":
    import numpy as np
    columns = []
    for group in range(len(MAIN_COLUMNS)):
        records = [make_qkv_record(phase, group, row) for row in range(ROWS_PER_COLUMN)]
        columns.append(column_compact_from_records(records))
    return global_compact_from_columns(columns)
