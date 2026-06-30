"""CPU reference helpers for one rounded 16-token attention block."""

from __future__ import annotations

import numpy as np

from contract import MAIN_COLUMNS, MAIN_ROWS, SHAPE_CARRIER_DWORDS
from qkv_compact_reference import (
    MAIN_CHUNK_DWORDS,
    PACKET_ID_ATTENTION,
    Q_DWORDS,
    WINDOW_DWORDS,
)

CASE_NAME = "attention-block-reference"
PACKET_ID = PACKET_ID_ATTENTION
HEADS_PER_WINDOW = 5
KV_HEADS_PER_WINDOW = 2
GQA_RATIO = HEADS_PER_WINDOW // KV_HEADS_PER_WINDOW
CONTEXT = 16
HEAD_DIM = 128
K_WINDOW_DWORDS = KV_HEADS_PER_WINDOW * CONTEXT * HEAD_DIM // 2
V_WINDOW_DWORDS = K_WINDOW_DWORDS
KV_SLOT_DWORDS = K_WINDOW_DWORDS + V_WINDOW_DWORDS
KV_SIDE_DWORDS = KV_SLOT_DWORDS * 2
OUTPUT_DWORDS = HEADS_PER_WINDOW * HEAD_DIM // 2
WEIGHT_DWORDS = HEADS_PER_WINDOW * CONTEXT // 2
SCALAR_DWORDS = HEADS_PER_WINDOW * 2
COLUMN_SUMMARY_DWORDS = len(MAIN_ROWS) * 2  # SUMMARY_DWORDS = 2
TOTAL_SUMMARY_DWORDS = COLUMN_SUMMARY_DWORDS
SOFTMAX_SCALE = 1.0 / np.sqrt(HEAD_DIM)


def expected_output(kv_cache, q_payload):
    return reference_attention(kv_cache, q_payload)


def reference_attention(kv_cache, q_payload):
    heads = HEADS_PER_WINDOW
    tokens = kv_cache.shape[1]  # KV blocks * CONTEXT
    output = np.zeros((heads, HEAD_DIM), dtype=np.float32)
    for h in range(heads):
        kv_h = h // GQA_RATIO
        scores = np.zeros(tokens, dtype=np.float32)
        for t in range(tokens):
            score = 0.0
            for d in range(HEAD_DIM):
                score += q_payload[h, d] * kv_cache[kv_h, t, d]
            scores[t] = score * SOFTMAX_SCALE
        weights = reference_softmax(scores)
        for d in range(HEAD_DIM):
            output[h, d] = np.sum(weights * kv_cache[kv_h, :, d])
    return output


def make_q_payload(q_values, context):
    return q_values.copy()


def validate_output(kv_cache, q_payload, output_bf16):
    expected = reference_attention(kv_cache, q_payload)
    output = output_bf16.view(np.float32).reshape(HEADS_PER_WINDOW, HEAD_DIM)
    diff = np.abs(expected - output)
    max_err = np.max(diff)
    return max_err < 0.1, max_err


def pack_to_dwords(groups):
    return np.concatenate([g.flatten().view(np.int32) for g in groups])


def unpack_heads(raw, window_heads, context):
    return raw.view(np.float32).reshape(window_heads, context)


def unpack_values(raw, total_heads, dim):
    return raw[: total_heads * dim * 2].view(np.int16)


def pack_to_dwords(groups: list[np.ndarray]) -> np.ndarray:
    return np.concatenate([g.flatten().view(np.int32) for g in groups])


def unpack_heads(raw: np.ndarray, window_heads: int, context: int) -> np.ndarray:
    return raw.view(np.float32).reshape(window_heads, context)


def unpack_values(raw: np.ndarray, total_heads: int, dim: int) -> np.ndarray:
    return raw[: total_heads * dim * 2].view(np.int16)


def reference_softmax(scores: np.ndarray) -> np.ndarray:
    scores = scores.astype(np.float32)
    max_score = np.max(scores)
    exp_scores = np.exp(scores - max_score)
    return exp_scores / np.sum(exp_scores)
