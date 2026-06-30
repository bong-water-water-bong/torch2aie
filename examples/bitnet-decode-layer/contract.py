"""Single source of truth for the BitNet b1.58-2B-4T full-layer ABI."""

from __future__ import annotations

from dataclasses import dataclass

MAIN_COLUMNS = (2, 3, 4, 5)
MAIN_ROWS = (2, 3, 4, 5)
EDGE_COLUMNS = (0, 1, 6, 7)
ROWS_PER_COLUMN = len(MAIN_ROWS)
M_PER_TILE = 32
OUTPUT_BLOCK_ROWS = 512
ACT_SLICE_BF16 = 256
K_CHUNK = 256
GROUP_SIZE = 32
RECORD_DWORDS = 17
RECORD_PAYLOAD_DWORDS = RECORD_DWORDS - 1
PHASE_NAMES = ("Q", "K", "V", "O", "UP", "GATE", "DOWN")

# BitNet b1.58-2B-4T dimensions
HIDDEN_DIM = 2560
INTERMEDIATE_DIM = 6912
HEAD_DIM = 128
NUM_Q_HEADS = 20
NUM_KV_HEADS = 5
GQA_RATIO = NUM_Q_HEADS // NUM_KV_HEADS  # = 4
ATTENTION_BF16 = NUM_Q_HEADS * HEAD_DIM  # = 2560
ATTENTION_PACKET_DWORDS = ATTENTION_BF16 // 2
Q_DWORDS = ATTENTION_PACKET_DWORDS

# Ceil division for partial blocks
PHASE_INPUT_DIMS = (HIDDEN_DIM, HIDDEN_DIM, HIDDEN_DIM, HIDDEN_DIM, HIDDEN_DIM, HIDDEN_DIM, INTERMEDIATE_DIM)
PHASE_OUTPUT_DIMS = (HIDDEN_DIM, NUM_KV_HEADS * HEAD_DIM, NUM_KV_HEADS * HEAD_DIM, HIDDEN_DIM, INTERMEDIATE_DIM, INTERMEDIATE_DIM, HIDDEN_DIM)

PHASE_BLOCKS = tuple(
    (output_dim + OUTPUT_BLOCK_ROWS - 1) // OUTPUT_BLOCK_ROWS
    for output_dim in PHASE_OUTPUT_DIMS
)

PHASE_CHUNKS = tuple(
    input_dim // K_CHUNK for input_dim in PHASE_INPUT_DIMS
)

# Derived sizes
SWIGLU_SLICES = INTERMEDIATE_DIM // OUTPUT_BLOCK_ROWS
C1R2_PACKET_DWORDS = 1 + HIDDEN_DIM // 2
C1R2_QKV_REPLAYS = PHASE_BLOCKS[0] + PHASE_BLOCKS[1] + PHASE_BLOCKS[2]
C1R2_UPGATE_REPLAYS = PHASE_BLOCKS[4] + PHASE_BLOCKS[5]
C1R2_FINAL_REPLAYS = 1
C6R2_INPUT_DWORDS = 512
C6R2_HALF_DWORDS = C6R2_INPUT_DWORDS // 2
COMPACT_PACKET_DWORDS = 1 + len(MAIN_COLUMNS) * ROWS_PER_COLUMN * RECORD_PAYLOAD_DWORDS
DOWN_PACKET_DWORDS = INTERMEDIATE_DIM // 2
DOWN_CHUNKS = DOWN_PACKET_DWORDS // 128  # MAIN_CHUNK_DWORDS = 128
O_CHUNKS = ATTENTION_BF16 // ACT_SLICE_BF16

# Patch and weight counts
NUM_PHASES = len(PHASE_NAMES)
CHUNK_BF16 = 2560  # Q4NX packed tile size (kept for Q4NX backward compatibility)
CHUNK_BF16_RAW = K_CHUNK * M_PER_TILE  # = 8192, full raw BF16 tile (32 rows × 256 cols)
ROWS_PER_PATCH = 2
PATCHES_PER_COLUMN = 2

PHASE_PATCH_COUNTS = tuple(
    PHASE_BLOCKS[phase] * len(MAIN_COLUMNS) * PATCHES_PER_COLUMN
    for phase in range(NUM_PHASES)
)

PATCH_BF16_BY_PHASE = tuple(
    ROWS_PER_PATCH * PHASE_CHUNKS[phase] * CHUNK_BF16
    for phase in range(NUM_PHASES)
)

PHASE_WEIGHT_BF16 = tuple(
    PHASE_PATCH_COUNTS[phase] * PATCH_BF16_BY_PHASE[phase]
    for phase in range(NUM_PHASES)
)

TOTAL_PATCHES = sum(PHASE_PATCH_COUNTS)
TOTAL_WEIGHT_BF16 = sum(PHASE_WEIGHT_BF16)

# Attention-related window sizes — BitNet: 20 Q heads, 5 KV heads, 4 windows
WINDOW_Q_HEADS = NUM_Q_HEADS // len(MAIN_COLUMNS)        # 5 Q heads per window
SHAPE_WINDOW_DWORDS = WINDOW_Q_HEADS * HEAD_DIM // 2      # = 320 (was 512 for Qwen3 8-head windows)
WINDOW_DWORDS = SHAPE_WINDOW_DWORDS                        # same: 320
MAIN_CHUNK_DWORDS = 128
Q_DWORDS = ATTENTION_BF16 // 2
ATTENTION_CONTEXT = 16                                     # tokens per attention block (fixed HW param)
K_WINDOW_DWORDS = 2 * ATTENTION_CONTEXT * HEAD_DIM // 2   # = 2048 (2 KV heads × 16 ctx × 128 / 2)
V_WINDOW_DWORDS = K_WINDOW_DWORDS
ACCUM_LANES = WINDOW_Q_HEADS * HEAD_DIM                   # = 640
ATTENTION_OUTPUT_DWORDS = WINDOW_Q_HEADS * HEAD_DIM // 2  # = 320
SCALAR_DWORDS = WINDOW_Q_HEADS * 2                         # = 10
HIDDEN_DWORDS = HIDDEN_DIM // 2
CURRENT_DWORDS = NUM_KV_HEADS * HEAD_DIM // 2             # = 320 (was 512 for Qwen3 8 KV heads)
HEAD_DWORDS = HEAD_DIM // 2  # = 64
QK_ROPE_DWORDS = WINDOW_Q_HEADS * HEAD_DWORDS + 8         # per-window RoPE (overridden by generator)

# Shape carrier (for attention)
# carrier = weights (WINDOW_Q_HEADS * ATTENTION_CONTEXT bf16) + scalars (WINDOW_Q_HEADS * 2 f32)
SHAPE_CARRIER_DWORDS = WINDOW_Q_HEADS * ATTENTION_CONTEXT // 2 + WINDOW_Q_HEADS * 2  # = 50 (was 80 for Qwen3)


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


PHASE_SPECS = tuple(
    PhaseSpec(
        name=PHASE_NAMES[idx],
        input_dim=PHASE_INPUT_DIMS[idx],
        output_dim=PHASE_OUTPUT_DIMS[idx],
        blocks=PHASE_BLOCKS[idx],
        chunks=PHASE_CHUNKS[idx],
        patches=PHASE_PATCH_COUNTS[idx],
    )
    for idx in range(NUM_PHASES)
)


def main16_tile_order() -> tuple[tuple[int, int], ...]:
    return tuple((column, row) for column in MAIN_COLUMNS for row in MAIN_ROWS)


def o_chunk(chunk: int) -> OChunk:
    if not 0 <= chunk < O_CHUNKS:
        raise ValueError(f"bad O chunk {chunk}")
    head0 = chunk * 2
    return OChunk(chunk=chunk, head0=head0, head1=head0 + 1, values=ACT_SLICE_BF16)


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
    if PHASE_BLOCKS != (5, 2, 2, 5, 14, 14, 5):
        errors.append(f"phase blocks mismatch: {PHASE_BLOCKS} (expected (5,2,2,5,14,14,5))")
    if PHASE_CHUNKS != (10, 10, 10, 10, 10, 10, 27):
        errors.append(f"phase chunks mismatch: {PHASE_CHUNKS} (expected (10,10,10,10,10,10,27))")
    if main16_tile_order()[0] != (2, 2) or main16_tile_order()[-1] != (5, 5):
        errors.append(f"unexpected main16 tile order: {main16_tile_order()}")
    for head in range(NUM_Q_HEADS):
        group = q_head_to_kv_group(head)
        if not 0 <= group < NUM_KV_HEADS:
            errors.append(f"bad GQA group for head {head}: {group}")
    return errors


def summary_lines() -> list[str]:
    lines = [
        "BitNet full-layer contract:",
        f"  phases={','.join(PHASE_NAMES)}",
        f"  patches={TOTAL_PATCHES}",
        f"  main16_tiles={main16_tile_order()}",
        f"  c1r2_packet={C1R2_PACKET_DWORDS} dwords",
        f"  c1r2_replays=+{C1R2_QKV_REPLAYS}/+{C1R2_UPGATE_REPLAYS}/+{C1R2_FINAL_REPLAYS}",
        f"  attention_packet={Q_DWORDS} dwords -> {O_CHUNKS} O chunks",
        f"  c6r2_input={C6R2_INPUT_DWORDS} dwords, swiglu_slices={SWIGLU_SLICES}",
        f"  down_packet={DOWN_PACKET_DWORDS} dwords",
    ]
    lines.extend(
        f"  phase {spec.name}: input={spec.input_dim} output={spec.output_dim} "
        f"blocks={spec.blocks} chunks={spec.chunks} patches={spec.patches}"
        for spec in PHASE_SPECS
    )
    return lines
