"""Qwen3-0.6B contract — port of contract.py for H=1024, IM=3072, NH=16, NKV=8.
   Identical tile layout to 8B version, smaller dimensions. All constants verified."""

from __future__ import annotations
from dataclasses import dataclass

# === Tile layout (same as 8B) ===
MAIN_COLUMNS = (2, 3, 4, 5)   # 4 columns of shim-memtile pairs
MAIN_ROWS = (2, 3, 4, 5)       # 4 main16 core rows per column
EDGE_COLUMNS = (0, 1, 6, 7)    # 4 edge columns
ROWS_PER_COLUMN = 4
M_PER_TILE = 32
OUTPUT_BLOCK_ROWS = 512

# === Model dimensions (Qwen3-0.6B) ===
HIDDEN_DIM = 1024
INTERMEDIATE_DIM = 3072
HEAD_DIM = 128
NUM_Q_HEADS = 16
NUM_KV_HEADS = 8
GQA_RATIO = NUM_Q_HEADS // NUM_KV_HEADS  # = 2

# === Q4NX weight chunk constants ===
K_CHUNK = 256
GROUP_SIZE = 32
ACT_SLICE_BF16 = 256
RECORD_DWORDS = 17
RECORD_PAYLOAD_DWORDS = RECORD_DWORDS - 1  # = 16

# === Phase definitions (7 phases per layer) ===
# Q: [H, NH*HD] = [1024, 2048]
# K: [H, NKV*HD] = [1024, 1024]
# V: [H, NKV*HD] = [1024, 1024]
# O: [NH*HD, H] = [2048, 1024]
# UP: [H, IM] = [1024, 3072]
# GATE: [H, IM] = [1024, 3072]
# DOWN: [IM, H] = [3072, 1024]

PHASE_NAMES = ("Q", "K", "V", "O", "UP", "GATE", "DOWN")
PHASE_INPUT_DIMS = (HIDDEN_DIM, HIDDEN_DIM, HIDDEN_DIM, ATTENTION_BF16 := NUM_Q_HEADS * HEAD_DIM,
                    HIDDEN_DIM, HIDDEN_DIM, INTERMEDIATE_DIM)
PHASE_OUTPUT_DIMS = (ATTENTION_BF16,          # Q: 16×128 = 2048
                     NUM_KV_HEADS * HEAD_DIM,  # K: 8×128 = 1024
                     NUM_KV_HEADS * HEAD_DIM,  # V: 8×128 = 1024
                     HIDDEN_DIM,               # O: 1024
                     INTERMEDIATE_DIM,          # UP: 3072
                     INTERMEDIATE_DIM,          # GATE: 3072
                     HIDDEN_DIM)               # DOWN: 1024
PHASE_BLOCKS = tuple(output_dim // OUTPUT_BLOCK_ROWS for output_dim in PHASE_OUTPUT_DIMS)
# = (4, 2, 2, 2, 6, 6, 2)
PHASE_CHUNKS = tuple(input_dim // K_CHUNK for input_dim in PHASE_INPUT_DIMS)
# = (4, 4, 4, 8, 4, 4, 12)
NUM_PHASES = len(PHASE_NAMES)
TOTAL_LOGICAL_BLOCKS = sum(PHASE_BLOCKS)  # = 24

# === Weight streaming ===
PATCHES_PER_COLUMN = 2
ROWS_PER_PATCH = 2
CHUNK_BF16 = 2560
PATCH_BF16_BY_PHASE = tuple(
    ROWS_PER_PATCH * PHASE_CHUNKS[phase] * CHUNK_BF16
    for phase in range(NUM_PHASES)
)
PHASE_PATCH_COUNTS = tuple(
    PHASE_BLOCKS[phase] * len(MAIN_COLUMNS) * PATCHES_PER_COLUMN
    for phase in range(NUM_PHASES)
)
PHASE_WEIGHT_BF16 = tuple(
    PHASE_PATCH_COUNTS[phase] * PATCH_BF16_BY_PHASE[phase]
    for phase in range(NUM_PHASES)
)
TOTAL_PATCHES = sum(PHASE_PATCH_COUNTS)
TOTAL_WEIGHT_BF16 = sum(PHASE_WEIGHT_BF16)
TOTAL_WEIGHT_I32 = TOTAL_WEIGHT_BF16 // 2

# === Compact/attention/down packet sizes ===
O_CHUNKS = ATTENTION_BF16 // ACT_SLICE_BF16           # = 2048/256 = 8
SWIGLU_SLICES = INTERMEDIATE_DIM // OUTPUT_BLOCK_ROWS  # = 3072/512 = 6
C1R2_PACKET_DWORDS = 1 + HIDDEN_DIM // 2              # = 1 + 512 = 513
C1R2_QKV_REPLAYS = PHASE_BLOCKS[0] + PHASE_BLOCKS[1] + PHASE_BLOCKS[2]  # = 4+2+2 = 8
C1R2_UPGATE_REPLAYS = PHASE_BLOCKS[4] + PHASE_BLOCKS[5]                 # = 6+6 = 12
C1R2_FINAL_REPLAYS = 1
C6R2_INPUT_DWORDS = 512
C6R2_HALF_DWORDS = C6R2_INPUT_DWORDS // 2
COMPACT_PACKET_DWORDS = 1 + len(MAIN_COLUMNS) * ROWS_PER_COLUMN * RECORD_PAYLOAD_DWORDS  # = 1 + 4×4×16 = 257
ATTENTION_PACKET_DWORDS = ATTENTION_BF16 // 2     # = 2048/2 = 1024
DOWN_PACKET_DWORDS = INTERMEDIATE_DIM // 2         # = 3072/2 = 1536
SHAPE_WINDOW_DWORDS = (NUM_Q_HEADS // 4) * HEAD_DIM // 2  # = 4×128/2 = 256
SHAPE_CARRIER_DWORDS = (0x100 + 0x40) // 4


@dataclass(frozen=True)
class PhaseSpec:
    name: str
    input_dim: int
    output_dim: int
    blocks: int
    chunks: int
    patches: int


@dataclass(frozen=True)
class OChunk:
    chunk: int
    head0: int
    head1: int
    values: int


@dataclass(frozen=True)
class C6R2Pair:
    slice_index: int
    up_packet: int
    gate_packet: int
    low_half: str
    high_half: str
    input_dwords: int


# Derived: build phase specs
PHASE_SPECS = tuple(
    PhaseSpec(
        name=PHASE_NAMES[i],
        input_dim=PHASE_INPUT_DIMS[i],
        output_dim=PHASE_OUTPUT_DIMS[i],
        blocks=PHASE_BLOCKS[i],
        chunks=PHASE_CHUNKS[i],
        patches=PHASE_PATCH_COUNTS[i],
    )
    for i in range(NUM_PHASES)
)

# === Qwen3-0.6B specific aux sizes ===
# RMSNorm weights: input_norm + post_norm = 2 * HIDDEN_DIM bf16 = HIDDEN_DIM i32.
# QK RoPE side-load: one Q norm head, one K norm head, and one RoPE cos/sin head.
RMS_NORM_DWORDS = HIDDEN_DIM
QK_ROPE_BF16 = 3 * HEAD_DIM
QK_ROPE_DWORDS = QK_ROPE_BF16 // 2
AUX_DWORDS = RMS_NORM_DWORDS + QK_ROPE_DWORDS
# = 1024 + (3 * 128) / 2 = 1216

# Hide-1D-to-KV cache lookup: 2 × NKV × HEAD_DIM × C // 2 (where C = context)
# For capacity build at C=127: 2 × 8 × 128 × 127 // 2 = 130048 i32 (already small)
HIDDEN_DWORDS = HIDDEN_DIM // 2   # = 512
OUTPUT_DWORDS = HIDDEN_DIM // 2   # = 512


def main16_tile_order() -> tuple[tuple[int, int], ...]:
    return tuple((column, row) for column in MAIN_COLUMNS for row in MAIN_ROWS)


def o_chunk(chunk: int) -> OChunk:
    if not 0 <= chunk < O_CHUNKS:
        raise ValueError(f"bad O chunk {chunk}")
    head0 = chunk * (ACT_SLICE_BF16 // HEAD_DIM)
    return OChunk(
        chunk=chunk,
        head0=head0,
        head1=head0 + 1,
        values=ACT_SLICE_BF16,
    )


def c6r2_pair(slice_index: int) -> C6R2Pair:
    if not 0 <= slice_index < SWIGLU_SLICES:
        raise ValueError(f"bad SwiGLU slice {slice_index}")
    return C6R2Pair(
        slice_index=slice_index,
        up_packet=slice_index * 2,
        gate_packet=slice_index * 2 + 1,
        low_half="up",
        high_half="gate",
        input_dwords=C6R2_INPUT_DWORDS,
    )


def q_head_to_kv_group(head: int) -> int:
    if not 0 <= head < NUM_Q_HEADS:
        raise ValueError(f"bad Q head {head}")
    return head // GQA_RATIO


def validate_contract() -> list[str]:
    errors: list[str] = []
    if PHASE_NAMES != ("Q", "K", "V", "O", "UP", "GATE", "DOWN"):
        errors.append(f"phase order mismatch: {PHASE_NAMES}")
    if PHASE_BLOCKS != (4, 2, 2, 2, 6, 6, 2):
        errors.append(f"phase blocks mismatch: {PHASE_BLOCKS}")
    if PHASE_CHUNKS != (4, 4, 4, 8, 4, 4, 12):
        errors.append(f"phase chunks mismatch: {PHASE_CHUNKS}")
    if TOTAL_PATCHES != 192:
        errors.append(f"patch count mismatch: {TOTAL_PATCHES}")
    if C1R2_QKV_REPLAYS != 8:
        errors.append(f"c1r2 Q/K/V replay mismatch: {C1R2_QKV_REPLAYS}")
    if C1R2_UPGATE_REPLAYS != 12:
        errors.append(f"c1r2 up/gate replay mismatch: {C1R2_UPGATE_REPLAYS}")
    if C1R2_PACKET_DWORDS != 513:
        errors.append(f"c1r2 packet mismatch: {C1R2_PACKET_DWORDS}")
    if O_CHUNKS != 8:
        errors.append(f"O chunk count mismatch: {O_CHUNKS}")
    if SWIGLU_SLICES != 6:
        errors.append(f"SwiGLU slice count mismatch: {SWIGLU_SLICES}")
    if C6R2_INPUT_DWORDS != 512 or C6R2_HALF_DWORDS != 256:
        errors.append(f"c6r2 input shape mismatch: {C6R2_INPUT_DWORDS}/{C6R2_HALF_DWORDS}")
    if COMPACT_PACKET_DWORDS != 257:
        errors.append(f"compact packet mismatch: {COMPACT_PACKET_DWORDS}")
    if ATTENTION_PACKET_DWORDS != 1024:
        errors.append(f"attention packet mismatch: {ATTENTION_PACKET_DWORDS}")
    if DOWN_PACKET_DWORDS != 1536:
        errors.append(f"down packet mismatch: {DOWN_PACKET_DWORDS}")
    if RMS_NORM_DWORDS != 1024 or QK_ROPE_DWORDS != 192 or AUX_DWORDS != 1216:
        errors.append(
            f"aux shape mismatch: rms={RMS_NORM_DWORDS} qk_rope={QK_ROPE_DWORDS} aux={AUX_DWORDS}"
        )
    if HIDDEN_DWORDS != 512 or OUTPUT_DWORDS != 512:
        errors.append(f"host dword shape mismatch: hidden={HIDDEN_DWORDS} output={OUTPUT_DWORDS}")
    if main16_tile_order()[0] != (2, 2) or main16_tile_order()[-1] != (5, 5):
        errors.append(f"unexpected main16 tile order: {main16_tile_order()}")
    for chunk in range(O_CHUNKS):
        chunk_spec = o_chunk(chunk)
        if chunk_spec.head1 >= NUM_Q_HEADS:
            errors.append(f"bad O chunk head range for chunk {chunk}: {chunk_spec}")
    for head in range(NUM_Q_HEADS):
        group = q_head_to_kv_group(head)
        if not 0 <= group < NUM_KV_HEADS:
            errors.append(f"bad GQA group for head {head}: {group}")
    return errors


def summary_lines() -> list[str]:
    lines = [
        "qwen3-dataflow contract:",
        f"  phases={','.join(PHASE_NAMES)}",
        f"  patches={TOTAL_PATCHES}",
        f"  main16_tiles={main16_tile_order()}",
        f"  c1r2_packet={C1R2_PACKET_DWORDS} dwords",
        f"  c1r2_replays=+{C1R2_QKV_REPLAYS}/+{C1R2_UPGATE_REPLAYS}/+{C1R2_FINAL_REPLAYS}",
        f"  attention_packet2={ATTENTION_PACKET_DWORDS} dwords -> {O_CHUNKS} O chunks",
        f"  c6r2_input={C6R2_INPUT_DWORDS} dwords, swiglu_slices={SWIGLU_SLICES}",
        f"  down_packet1={DOWN_PACKET_DWORDS} dwords",
        f"  aux={AUX_DWORDS} dwords",
    ]
    lines.extend(
        f"  phase {spec.name}: input={spec.input_dim} output={spec.output_dim} "
        f"blocks={spec.blocks} chunks={spec.chunks} patches={spec.patches}"
        for spec in PHASE_SPECS
    )
    return lines
