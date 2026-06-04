"""Generate an isolated postprocess_qkv MLIR-AIE numerical microbench."""

from __future__ import annotations

from pathlib import Path

from compact_dataflow import Q_DWORDS
from contract import COMPACT_PACKET_DWORDS
from cases.decode_cache_reference import CURRENT_DWORDS
from cases.full_layer_engine_reference import QK_ROPE_DWORDS
from mlir_utils import flow, lock_pair, npu_address_patch, npu_push_queue, npu_rtp_write, npu_set_lock, npu_sync, npu_writebd
from projection_schedule import KV_BODY_RECORDS, Q_BODY_RECORDS

CASE_NAME = "qwen3-kernel-postprocess-qkv"
POSTPROCESS_OBJECT = "postprocess_qkv.o"
QKV_RECORDS = Q_BODY_RECORDS + KV_BODY_RECORDS * 2
QKV_PAYLOAD_DWORDS = QKV_RECORDS * (COMPACT_PACKET_DWORDS - 1)
CURRENT_STREAM_DWORDS = CURRENT_DWORDS * 2


def _postprocess_tile() -> str:
    return f"""
    %post_qkv_payload = aie.buffer(%post) {{sym_name = "post_qkv_payload"}} : memref<{COMPACT_PACKET_DWORDS - 1}xi32>
    %post_q_body = aie.buffer(%post) {{sym_name = "post_q_body"}} : memref<{Q_DWORDS}xi32>
    %post_k_body = aie.buffer(%post) {{sym_name = "post_k_body"}} : memref<{CURRENT_DWORDS}xi32>
    %post_v_body = aie.buffer(%post) {{sym_name = "post_v_body"}} : memref<{CURRENT_DWORDS}xi32>
    %post_qk_rope_side = aie.buffer(%post) {{sym_name = "post_qk_rope_side"}} : memref<{QK_ROPE_DWORDS}xi32>
    %post_q_payload = aie.buffer(%post) {{sym_name = "post_q_payload"}} : memref<{Q_DWORDS}xi32>
    %post_current_k = aie.buffer(%post) {{sym_name = "post_current_k"}} : memref<{CURRENT_DWORDS}xi32>
    %post_current_v = aie.buffer(%post) {{sym_name = "post_current_v"}} : memref<{CURRENT_DWORDS}xi32>
    %post_current_token = aie.buffer(%post) {{sym_name = "post_current_token"}} : memref<1xi32>
{lock_pair("post", "qkv_payload", 0)}
{lock_pair("post", "q_payload", 6)}
{lock_pair("post", "current_k", 8)}
{lock_pair("post", "current_v", 10)}
{lock_pair("post", "qk_rope_side", 13)}
    %post_runtime_start = aie.lock(%post, 12) {{init = 0 : i32, sym_name = "post_runtime_start"}}

    %post_core = aie.core(%post) {{
      aie.use_lock(%post_runtime_start, Acquire, 1)
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %qkv_records = arith.constant {QKV_RECORDS} : index
      %q_dwords_i32 = arith.constant {Q_DWORDS} : i32
      %current_dwords_i32 = arith.constant {CURRENT_DWORDS} : i32
      scf.for %record = %c0 to %qkv_records step %c1 {{
        %record_i32 = arith.index_cast %record : index to i32
        aie.use_lock(%post_qkv_payload_full, AcquireGreaterEqual, 1)
        func.call @qwen3_postprocess_absorb_qkv_payload_record(%post_qkv_payload, %post_q_body, %post_k_body, %post_v_body, %record_i32)
          : (memref<{COMPACT_PACKET_DWORDS - 1}xi32>, memref<{Q_DWORDS}xi32>, memref<{CURRENT_DWORDS}xi32>, memref<{CURRENT_DWORDS}xi32>, i32) -> ()
        aie.use_lock(%post_qkv_payload_empty, Release, 1)
      }}
      aie.use_lock(%post_qk_rope_side_full, AcquireGreaterEqual, 1)
      aie.use_lock(%post_q_payload_empty, AcquireGreaterEqual, 1)
      aie.use_lock(%post_current_k_empty, AcquireGreaterEqual, 1)
      aie.use_lock(%post_current_v_empty, AcquireGreaterEqual, 1)
      func.call @qwen3_postprocess_q4nx_body_payload(%post_q_body, %post_k_body, %post_v_body, %post_qk_rope_side, %post_q_payload, %post_current_k, %post_current_v, %post_current_token, %q_dwords_i32, %current_dwords_i32)
        : (memref<{Q_DWORDS}xi32>, memref<{CURRENT_DWORDS}xi32>, memref<{CURRENT_DWORDS}xi32>, memref<{QK_ROPE_DWORDS}xi32>, memref<{Q_DWORDS}xi32>, memref<{CURRENT_DWORDS}xi32>, memref<{CURRENT_DWORDS}xi32>, memref<1xi32>, i32, i32) -> ()
      aie.use_lock(%post_qk_rope_side_empty, Release, 1)
      aie.use_lock(%post_q_payload_full, Release, 1)
      aie.use_lock(%post_current_k_full, Release, 1)
      aie.use_lock(%post_current_v_full, Release, 1)
      aie.end
    }}

    %post_mem = aie.mem(%post) {{
      %payload_dma = aie.dma_start(S2MM, 0, ^qkv_in, ^side_start)
    ^qkv_in:
      aie.use_lock(%post_qkv_payload_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%post_qkv_payload : memref<{COMPACT_PACKET_DWORDS - 1}xi32>, 0, {COMPACT_PACKET_DWORDS - 1}) {{bd_id = 0 : i32}}
      aie.use_lock(%post_qkv_payload_full, Release, 1)
      aie.next_bd ^qkv_in

    ^side_start:
      %side_dma = aie.dma_start(S2MM, 1, ^side_in, ^q_out_start)
    ^side_in:
      aie.use_lock(%post_qk_rope_side_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%post_qk_rope_side : memref<{QK_ROPE_DWORDS}xi32>, 0, {QK_ROPE_DWORDS}) {{bd_id = 6 : i32}}
      aie.use_lock(%post_qk_rope_side_full, Release, 1)
      aie.next_bd ^side_in

    ^q_out_start:
      %q_dma = aie.dma_start(MM2S, 0, ^q_out, ^current_out_start)
    ^q_out:
      aie.use_lock(%post_q_payload_full, AcquireGreaterEqual, 1)
      aie.dma_bd(%post_q_payload : memref<{Q_DWORDS}xi32>, 0, {Q_DWORDS}) {{bd_id = 3 : i32}}
      aie.use_lock(%post_q_payload_empty, Release, 1)
      aie.next_bd ^q_out

    ^current_out_start:
      %current_dma = aie.dma_start(MM2S, 1, ^current_k_out, ^end)
    ^current_k_out:
      aie.use_lock(%post_current_k_full, AcquireGreaterEqual, 1)
      aie.dma_bd(%post_current_k : memref<{CURRENT_DWORDS}xi32>, 0, {CURRENT_DWORDS}) {{bd_id = 4 : i32, next_bd_id = 5 : i32}}
      aie.use_lock(%post_current_k_empty, Release, 1)
      aie.next_bd ^current_v_out
    ^current_v_out:
      aie.use_lock(%post_current_v_full, AcquireGreaterEqual, 1)
      aie.dma_bd(%post_current_v : memref<{CURRENT_DWORDS}xi32>, 0, {CURRENT_DWORDS}) {{bd_id = 5 : i32, next_bd_id = 4 : i32}}
      aie.use_lock(%post_current_v_empty, Release, 1)
      aie.next_bd ^current_k_out
    ^end:
      aie.end
    }}
"""


def _runtime_sequence(current_token: int) -> str:
    return "\n".join(
        (
            f"    aie.runtime_sequence(%qkv_payloads: memref<{QKV_PAYLOAD_DWORDS}xi32>, "
            f"%qk_rope_side: memref<{QK_ROPE_DWORDS}xi32>, "
            f"%q_out: memref<{Q_DWORDS}xi32>, "
            f"%current_out: memref<{CURRENT_STREAM_DWORDS}xi32>) {{",
            npu_rtp_write("post_current_token", 0, current_token),
            npu_writebd(1, 0, Q_DWORDS, 0),
            npu_address_patch(1, 0, 2, 0),
            npu_push_queue(1, "S2MM", 0, 0),
            npu_writebd(1, 1, CURRENT_DWORDS, 0, next_bd=2, use_next_bd=True),
            npu_address_patch(1, 1, 3, 0),
            npu_writebd(1, 2, CURRENT_DWORDS, CURRENT_DWORDS * 4),
            npu_address_patch(1, 2, 3, CURRENT_DWORDS * 4),
            npu_push_queue(1, "S2MM", 1, 1),
            npu_writebd(1, 3, QKV_PAYLOAD_DWORDS, 0),
            npu_address_patch(1, 3, 0, 0),
            npu_push_queue(1, "MM2S", 0, 3),
            npu_writebd(1, 4, QK_ROPE_DWORDS, 0),
            npu_address_patch(1, 4, 1, 0),
            npu_push_queue(1, "MM2S", 1, 4),
            npu_set_lock("post_runtime_start", 1),
            npu_sync(1, 0),
            npu_sync(1, 1),
            "    }",
        )
    )


def generate_mlir(current_token: int = 31) -> str:
    experiment_dir = Path(__file__).parent.parent.resolve()
    return f"""module {{
  aie.device(npu2) {{
    %shim = aie.tile(1, 0)
    %post = aie.tile(1, 3)

    // case marker {CASE_NAME}
{flow("shim", 0, "post", 0)}
{flow("shim", 1, "post", 1)}
{flow("post", 0, "shim", 0)}
{flow("post", 1, "shim", 1)}

    func.func private @qwen3_postprocess_absorb_qkv_payload_record(memref<{COMPACT_PACKET_DWORDS - 1}xi32>, memref<{Q_DWORDS}xi32>, memref<{CURRENT_DWORDS}xi32>, memref<{CURRENT_DWORDS}xi32>, i32) attributes {{link_with = "{experiment_dir}/{POSTPROCESS_OBJECT}"}}
    func.func private @qwen3_postprocess_q4nx_body_payload(memref<{Q_DWORDS}xi32>, memref<{CURRENT_DWORDS}xi32>, memref<{CURRENT_DWORDS}xi32>, memref<{QK_ROPE_DWORDS}xi32>, memref<{Q_DWORDS}xi32>, memref<{CURRENT_DWORDS}xi32>, memref<{CURRENT_DWORDS}xi32>, memref<1xi32>, i32, i32) attributes {{link_with = "{experiment_dir}/{POSTPROCESS_OBJECT}"}}

{_postprocess_tile()}
{_runtime_sequence(current_token)}
  }}
}}
"""


def validate_generated_mlir(mlir: str) -> list[str]:
    required = (
        f"case marker {CASE_NAME}",
        "qwen3_postprocess_absorb_qkv_payload_record",
        "qwen3_postprocess_q4nx_body_payload",
        f"memref<{QKV_PAYLOAD_DWORDS}xi32>",
        f"memref<{CURRENT_STREAM_DWORDS}xi32>",
        "aie.runtime_sequence(%qkv_payloads",
    )
    return [f"missing postprocess microbench marker: {marker}" for marker in required if marker not in mlir]
