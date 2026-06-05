"""Generate the production-layout one-chunk Main16 Q4NX slot-body microbench."""

from __future__ import annotations

from pathlib import Path

from compact_dataflow import MAIN_CHUNK_DWORDS
from contract import ACT_SLICE_BF16, CHUNK_BF16, RECORD_PAYLOAD_DWORDS
from mlir_utils import flow, npu_address_patch, npu_push_queue, npu_sync, npu_writebd

CASE_NAME = "qwen3-kernel-main16-q4nx-chunk-slot"
OBJECT_NAME = "main16_q4nx_chunk_slot_probe.o"
ENTRY_NAME = "main16_q4nx_chunk_slot_i32_probe"
OUTPUT_DWORDS = RECORD_PAYLOAD_DWORDS
ACTIVATION_DWORDS = MAIN_CHUNK_DWORDS
WEIGHT_DWORDS = CHUNK_BF16 // 2


def generate_mlir() -> str:
    experiment_dir = Path(__file__).parent.parent.resolve()
    return f"""module {{
  aie.device(npu2) {{
    %shim = aie.tile(2, 0)
    %probe = aie.tile(2, 2)

    // case marker {CASE_NAME}
{flow("shim", 0, "probe", 0)}
{flow("shim", 1, "probe", 1)}
{flow("probe", 0, "shim", 0)}

    func.func private @{ENTRY_NAME}(memref<{ACTIVATION_DWORDS}xi32>, memref<{WEIGHT_DWORDS}xi32>, memref<{OUTPUT_DWORDS}xi32>) attributes {{link_with = "{experiment_dir}/{OBJECT_NAME}"}}

    %probe_activation = aie.buffer(%probe) {{sym_name = "chunk_slot_activation"}} : memref<{ACTIVATION_DWORDS}xi32>
    %probe_weight = aie.buffer(%probe) {{sym_name = "chunk_slot_weight"}} : memref<{WEIGHT_DWORDS}xi32>
    %probe_output = aie.buffer(%probe) {{sym_name = "chunk_slot_output"}} : memref<{OUTPUT_DWORDS}xi32>
    %probe_activation_empty = aie.lock(%probe, 0) {{init = 1 : i32, sym_name = "chunk_slot_activation_empty"}}
    %probe_activation_full = aie.lock(%probe, 1) {{init = 0 : i32, sym_name = "chunk_slot_activation_full"}}
    %probe_weight_empty = aie.lock(%probe, 2) {{init = 1 : i32, sym_name = "chunk_slot_weight_empty"}}
    %probe_weight_full = aie.lock(%probe, 3) {{init = 0 : i32, sym_name = "chunk_slot_weight_full"}}
    %probe_output_empty = aie.lock(%probe, 4) {{init = 1 : i32, sym_name = "chunk_slot_output_empty"}}
    %probe_output_full = aie.lock(%probe, 5) {{init = 0 : i32, sym_name = "chunk_slot_output_full"}}

    %probe_core = aie.core(%probe) {{
      aie.use_lock(%probe_activation_full, AcquireGreaterEqual, 1)
      aie.use_lock(%probe_weight_full, AcquireGreaterEqual, 1)
      aie.use_lock(%probe_output_empty, AcquireGreaterEqual, 1)
      func.call @{ENTRY_NAME}(%probe_activation, %probe_weight, %probe_output)
        : (memref<{ACTIVATION_DWORDS}xi32>, memref<{WEIGHT_DWORDS}xi32>, memref<{OUTPUT_DWORDS}xi32>) -> ()
      aie.use_lock(%probe_output_full, Release, 1)
      aie.use_lock(%probe_activation_empty, Release, 1)
      aie.use_lock(%probe_weight_empty, Release, 1)
      aie.end
    }}

    %probe_mem = aie.mem(%probe) {{
      %activation_dma = aie.dma_start(S2MM, 0, ^activation_in, ^weight_start)
    ^activation_in:
      aie.use_lock(%probe_activation_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%probe_activation : memref<{ACTIVATION_DWORDS}xi32>, 0, {ACTIVATION_DWORDS}) {{bd_id = 0 : i32}}
      aie.use_lock(%probe_activation_full, Release, 1)
      aie.next_bd ^activation_end
    ^activation_end:
      aie.end

    ^weight_start:
      %weight_dma = aie.dma_start(S2MM, 1, ^weight_in, ^out_start)
    ^weight_in:
      aie.use_lock(%probe_weight_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%probe_weight : memref<{WEIGHT_DWORDS}xi32>, 0, {WEIGHT_DWORDS}) {{bd_id = 1 : i32}}
      aie.use_lock(%probe_weight_full, Release, 1)
      aie.next_bd ^weight_end
    ^weight_end:
      aie.end

    ^out_start:
      %out_dma = aie.dma_start(MM2S, 0, ^out, ^end)
    ^out:
      aie.use_lock(%probe_output_full, AcquireGreaterEqual, 1)
      aie.dma_bd(%probe_output : memref<{OUTPUT_DWORDS}xi32>, 0, {OUTPUT_DWORDS}) {{bd_id = 2 : i32}}
      aie.use_lock(%probe_output_empty, Release, 1)
      aie.next_bd ^end
    ^end:
      aie.end
    }}

    aie.runtime_sequence(%activation: memref<{ACTIVATION_DWORDS}xi32>, %weight: memref<{WEIGHT_DWORDS}xi32>, %output: memref<{OUTPUT_DWORDS}xi32>) {{
{npu_writebd(2, 0, OUTPUT_DWORDS, 0)}
{npu_address_patch(2, 0, 2, 0)}
{npu_push_queue(2, "S2MM", 0, 0)}
{npu_writebd(2, 1, ACTIVATION_DWORDS, 0)}
{npu_address_patch(2, 1, 0, 0)}
{npu_push_queue(2, "MM2S", 0, 1)}
{npu_writebd(2, 2, WEIGHT_DWORDS, 0)}
{npu_address_patch(2, 2, 1, 0)}
{npu_push_queue(2, "MM2S", 1, 2)}
{npu_sync(2, 0)}
    }}
  }}
}}
"""


def validate_generated_mlir(mlir: str) -> list[str]:
    required = (
        f"case marker {CASE_NAME}",
        ENTRY_NAME,
        OBJECT_NAME,
        f"memref<{ACTIVATION_DWORDS}xi32>",
        f"memref<{WEIGHT_DWORDS}xi32>",
        f"memref<{OUTPUT_DWORDS}xi32>",
        "aie.runtime_sequence(%activation",
    )
    return [f"missing chunk-slot marker: {marker}" for marker in required if marker not in mlir]
