# SPDX-FileCopyrightText: Copyright (C) 2026 Advanced Micro Devices, Inc. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

import argparse
import copy
import math
import sys
from pathlib import Path

from ml_dtypes import bfloat16
import numpy as np

from aie.dialects.aie import *
from aie.dialects.aiex import *
from aie.extras.context import mlir_mod_ctx
from aie.helpers.dialects.scf import _for as range_
from aie.helpers.dialects.scf import else_, if_
from aie.helpers.taplib import TensorAccessPattern, TensorAccessSequence, TensorTiler2D


dtype_map = {
    "bf16": bfloat16,
    "f32": np.float32,
}

microkernel_mac_dim_map = {
    "npu": {
        "bf16": (4, 8, 4),
    },
    "npu1": {
        "bf16": (4, 8, 4),
    },
    "npu2": {
        "bf16": {
            # emulate_bf16_mmul_with_bfp16
            True: (8, 8, 8),
            False: (4, 8, 8),
        },
    },
}


def main():
    argparser = argparse.ArgumentParser(
        prog="AIE prefill attention MLIR design",
        description="Emits a direct mlir-aie dialect prefill attention design.",
    )
    argparser.add_argument("--heads", type=int, default=1)
    argparser.add_argument("--S_q", type=int, default=256)
    argparser.add_argument("--S_kv", type=int, default=256)
    argparser.add_argument("-d", type=int, default=64)
    argparser.add_argument("--B_q", type=int, default=64)
    argparser.add_argument("--B_kv", type=int, default=64)
    argparser.add_argument(
        "--num_KV_heads",
        type=int,
        default=2,
        help="Number of heads for Key-Value pairs",
    )
    argparser.add_argument("--number-of-pipeline", type=int, default=1)
    argparser.add_argument(
        "--emulate-bf16-mmul-with-bfp16",
        action=argparse.BooleanOptionalAction,
        default=True,
    )
    argparser.add_argument("--trace_size", type=int, default=0)
    argparser.add_argument(
        "--output-file-path",
        "-o",
        type=str,
        default="my_mha.mlir",
        help="Output file path for the generated MLIR module",
    )
    argparser.add_argument(
        "--verbose", action="store_true", help="Enable verbose output"
    )

    args = argparser.parse_args()

    with mlir_mod_ctx() as ctx:
        fused_mha_direct(
            heads=args.heads,
            S_q=args.S_q,
            S_kv=args.S_kv,
            d=args.d,
            B_q=args.B_q,
            B_kv=args.B_kv,
            number_of_pipelines=args.number_of_pipeline,
            num_KV_heads=args.num_KV_heads,
            emulate_bf16_mmul_with_bfp16=args.emulate_bf16_mmul_with_bfp16,
            trace_size=args.trace_size,
            verbose=args.verbose,
        )
        module = ctx.module

    output_file_path = Path(args.output_file_path)
    with open(output_file_path, "w") as f:
        f.write(str(module))

    if args.verbose:
        print(f"MLIR module written to {output_file_path}")


def fused_mha_direct(
    heads: int,
    S_q: int,
    S_kv: int,
    d: int,
    B_q: int,
    B_kv: int,
    number_of_pipelines: int,
    num_KV_heads: int,
    emulate_bf16_mmul_with_bfp16: bool,
    trace_size: int = 0,
    verbose: bool = False,
):
    of_depth = 2
    vectorized = True
    enable_tracing = trace_size > 0
    dtype_str = "bf16"

    assert not enable_tracing, "Tracing is not wired in the direct dialect version yet"
    assert number_of_pipelines <= 8, "This NPU2 layout supports up to 8 pipelines"
    assert number_of_pipelines > 0, "number_of_pipelines must be positive"

    if number_of_pipelines > 6:
        number_of_pipelines_join_distribute = number_of_pipelines // 2
    else:
        number_of_pipelines_join_distribute = number_of_pipelines

    S_q_eff = S_q
    S_kv_eff = S_kv
    S_q_pad = (
        (S_q_eff + (B_q * number_of_pipelines - 1)) // (B_q * number_of_pipelines)
    ) * (B_q * number_of_pipelines)
    S_kv_pad = (
        (S_kv_eff + (B_kv * number_of_pipelines - 1)) // (B_kv * number_of_pipelines)
    ) * (B_kv * number_of_pipelines)
    num_q_blocks = S_q_pad // B_q
    num_kv_blocks = S_kv_pad // B_kv
    num_q_block_per_pipeline = num_q_blocks // number_of_pipelines

    # When the number of KV heads is 0, treat it as regular MHA.
    if num_KV_heads == 0:
        num_KV_heads = heads

    assert (
        emulate_bf16_mmul_with_bfp16
    ), "Only emulate_bf16_mmul_with_bfp16=True is supported"

    mac_dims = microkernel_mac_dim_map["npu2"][dtype_str]
    r, s, t = mac_dims[emulate_bf16_mmul_with_bfp16]

    if verbose:
        print("Device: AIEDevice.npu2")
        print(f"Number of heads: {heads}")
        print(f"MHA Dimensions: S_q={S_q}, S_kv={S_kv}, d={d}, B_q={B_q}, B_kv={B_kv}")
        print(f"Padded Dimensions: S_q_pad={S_q_pad}, S_kv_pad={S_kv_pad}")
        print(f"Data type: {dtype_str}")
        print(f"Microkernel MAC dimensions: r={r}, s={s}, t={t}")
        print(f"Vectorized: {vectorized}")

    assert num_KV_heads > 0, "Number of KV heads must be greater than 0"
    assert heads > 0, "Number of heads must be greater than 0"
    assert (
        num_KV_heads <= heads
    ), "Number of KV heads must be less than or equal to number of heads"
    assert (
        heads % num_KV_heads == 0
    ), f"Number of heads ({heads}) must be divisible by number of KV heads ({num_KV_heads})"

    assert B_q % r == 0, f"B_q must be divisible by r ({B_q} % {r} != 0)"
    assert B_kv % t == 0, f"B_kv must be divisible by t ({B_kv} % {t} != 0)"
    assert d % s == 0, f"d must be divisible by s ({d} % {s} != 0)"

    assert S_q_pad % B_q == 0, "Padded S_q must be divisible by B_q"
    assert S_kv_pad % B_kv == 0, "Padded S_kv must be divisible by B_kv"

    dtype = dtype_map[dtype_str]
    inv_scale = (1 / np.sqrt(d)) * 1.4453125

    Q_ty = np.ndarray[(heads, S_q_pad, d), np.dtype[dtype]]
    KV_ty = np.ndarray[(num_KV_heads, S_kv_pad * d), np.dtype[dtype]]

    q_ty = np.ndarray[(B_q, d), np.dtype[dtype]]
    k_ty = np.ndarray[(d, B_kv), np.dtype[dtype]]
    qk_ty = np.ndarray[(B_q, B_kv), np.dtype[dtype]]
    s_ty = np.ndarray[(4 * B_q,), np.dtype[dtype]]
    rtp_ty = np.ndarray[(4,), np.dtype[np.int32]]
    idx_ty = np.ndarray[(2,), np.dtype[np.int32]]

    func_type = ""

    q_dims = [(B_q // r, r * d), (d // s, s), (r, d), (s, 1)]
    k_dims = [(B_kv // t, t * d), (d // s, s), (t, d), (s, 1)]
    v_dims = [(B_kv // s, s * B_kv), (B_kv // t, t), (s, B_kv), (t, 1)]
    a_dims = [(B_q // r, r * B_kv), (r, t), (B_kv // t, r * t), (t, 1)]
    o_dims = [(B_q // r, r * B_kv), (r, t), (B_kv // t, r * t), (t, 1)]

    @device(AIEDevice.npu2)
    def device_body():
        shim_tiles = [tile(col, 0) for col in range(8)]
        mem_tiles = [tile(col, 1) for col in range(8)]
        qk_tiles = [tile(col, 2) for col in range(number_of_pipelines)]
        softmax_tiles = [tile(col, 3) for col in range(number_of_pipelines)]
        pv_tiles = [tile(col, 4) for col in range(number_of_pipelines)]

        zero_kernel = external_func("zero_bf16", inputs=[qk_ty], link_with="mha.o")
        memcopy_kernel_scale = external_func(
            "passThroughLine", inputs=[s_ty, s_ty, np.int32], link_with="mha_passThrough.o"
        )
        scale_buffer_init_kernel = external_func(
            "init_scale_buffer", inputs=[s_ty, np.int32], link_with="mha.o"
        )
        partial_softmax_kernel = external_func(
            "partial_softmax",
            inputs=[
                qk_ty,
                qk_ty,
                s_ty,
                idx_ty,
                dtype,
                np.int32,
                np.int32,
                np.int32,
                np.int32,
            ],
            link_with="mha.o",
        )
        matmul_QK = external_func(
            f"matmul_bf16_bf16_wrapper{func_type}",
            inputs=[q_ty, k_ty, qk_ty, idx_ty],
            link_with="mha.o",
        )
        matmul_PV = external_func(
            "matmul_PV",
            inputs=[qk_ty, k_ty, qk_ty, s_ty, np.int32, np.int32, idx_ty],
            link_with="mha.o",
        )
        rescale_O = external_func(
            "rescale_O", inputs=[qk_ty, s_ty, np.int32, idx_ty], link_with="mha.o"
        )

        inQ = object_fifo(
            "inQ",
            shim_tiles[4],
            mem_tiles[6],
            of_depth,
            np.ndarray[
                (number_of_pipelines_join_distribute * B_q, d), np.dtype[dtype]
            ],
        )
        memQ = []
        for i in range(number_of_pipelines_join_distribute):
            memQ.append(
                object_fifo(
                    f"memQ{i}",
                    mem_tiles[6],
                    qk_tiles[i],
                    of_depth,
                    q_ty,
                    dimensionsToStream=q_dims,
                )
            )
        object_fifo_link(
            inQ,
            memQ,
            [],
            [B_q * d * i for i in range(number_of_pipelines_join_distribute)],
        )

        if number_of_pipelines > 6:
            inQ2 = object_fifo(
                "inQ2",
                shim_tiles[4],
                mem_tiles[7],
                of_depth,
                np.ndarray[
                    (number_of_pipelines_join_distribute * B_q, d), np.dtype[dtype]
                ],
            )
            memQ2 = []
            for i in range(number_of_pipelines_join_distribute):
                memQ2.append(
                    object_fifo(
                        f"memQ2{i}",
                        mem_tiles[7],
                        qk_tiles[i + number_of_pipelines_join_distribute],
                        of_depth,
                        q_ty,
                        dimensionsToStream=q_dims,
                    )
                )
            object_fifo_link(
                inQ2,
                memQ2,
                [],
                [B_q * d * i for i in range(number_of_pipelines_join_distribute)],
            )
            memQ += memQ2
        else:
            inQ2 = None

        inK = object_fifo("inK", shim_tiles[5], mem_tiles[3], of_depth, k_ty)
        memK = object_fifo(
            "memK",
            mem_tiles[3],
            qk_tiles,
            of_depth,
            k_ty,
            dimensionsToStream=k_dims,
        )
        object_fifo_link(inK, memK)

        inV = object_fifo("inV", shim_tiles[6], mem_tiles[4], of_depth, k_ty)
        memV = object_fifo(
            "memV",
            mem_tiles[4],
            pv_tiles,
            of_depth,
            k_ty,
            dimensionsToStream=v_dims,
        )
        object_fifo_link(inV, memV)

        memA = []
        outA = []
        for i in range(number_of_pipelines):
            mem_tile_idx = 0 if i < 6 else 1
            memA.append(
                object_fifo(f"memA{i}", qk_tiles[i], mem_tiles[mem_tile_idx], of_depth, qk_ty)
            )
            outA.append(
                object_fifo(
                    f"outA{i}",
                    mem_tiles[mem_tile_idx],
                    softmax_tiles[i],
                    of_depth,
                    qk_ty,
                    dimensionsToStream=a_dims,
                )
            )
            object_fifo_link(memA[i], outA[i])

        memP = []
        outP = []
        for i in range(number_of_pipelines):
            mem_tile_idx = 1 if i < 4 else 2
            memP.append(
                object_fifo(f"memP{i}", softmax_tiles[i], mem_tiles[mem_tile_idx], of_depth, qk_ty)
            )
            outP.append(
                object_fifo(
                    f"outP{i}",
                    mem_tiles[mem_tile_idx],
                    pv_tiles[i],
                    of_depth,
                    qk_ty,
                    dimensionsToStream=q_dims,
                )
            )
            object_fifo_link(memP[i], outP[i])

        scaleOF = []
        for i in range(number_of_pipelines):
            scaleOF.append(
                object_fifo(f"scaleOF{i}", softmax_tiles[i], pv_tiles[i], of_depth, s_ty)
            )

        memO = object_fifo(
            "memO",
            mem_tiles[6],
            shim_tiles[7],
            of_depth,
            np.ndarray[
                (number_of_pipelines_join_distribute * B_q, d), np.dtype[dtype]
            ],
            dimensionsToStream=o_dims,
        )
        outO = []
        for i in range(number_of_pipelines_join_distribute):
            outO.append(object_fifo(f"outO{i}", pv_tiles[i], mem_tiles[6], of_depth, q_ty))
        object_fifo_link(
            outO,
            memO,
            [B_q * d * i for i in range(number_of_pipelines_join_distribute)],
            [],
        )

        if number_of_pipelines > 6:
            memO2 = object_fifo(
                "memO2",
                mem_tiles[7],
                shim_tiles[7],
                of_depth,
                np.ndarray[
                    (number_of_pipelines_join_distribute * B_q, d), np.dtype[dtype]
                ],
                dimensionsToStream=o_dims,
            )
            outO2 = []
            for i in range(number_of_pipelines_join_distribute):
                outO2.append(
                    object_fifo(
                        f"outO2{i}",
                        pv_tiles[i + number_of_pipelines_join_distribute],
                        mem_tiles[7],
                        of_depth,
                        q_ty,
                    )
                )
            object_fifo_link(
                outO2,
                memO2,
                [B_q * d * i for i in range(number_of_pipelines_join_distribute)],
                [],
            )
            outO += outO2
        else:
            memO2 = None

        mha_rtps_list = [
            [
                buffer(
                    [qk_tiles, softmax_tiles, pv_tiles][stage][i],
                    rtp_ty,
                    name=f"mha_rtpss_{i}_stage{stage}",
                    use_write_rtp=True,
                )
                for i in range(number_of_pipelines)
            ]
            for stage in range(3)
        ]
        idx_buffers_qk = [
            buffer(
                qk_tiles[i],
                idx_ty,
                name=f"idx_buffer_qk_{i}",
                initial_value=np.zeros(shape=(2,), dtype=np.int32),
            )
            for i in range(number_of_pipelines)
        ]
        idx_buffers_softmax = [
            buffer(
                softmax_tiles[i],
                idx_ty,
                name=f"idx_buffer_softmax_{i}",
                initial_value=np.zeros(shape=(2,), dtype=np.int32),
            )
            for i in range(number_of_pipelines)
        ]
        idx_buffers_pv = [
            buffer(
                pv_tiles[i],
                idx_ty,
                name=f"idx_buffer_pv_{i}",
                initial_value=np.zeros(shape=(2,), dtype=np.int32),
            )
            for i in range(number_of_pipelines)
        ]
        scale_buffers_softmax = [
            buffer(
                softmax_tiles[i],
                s_ty,
                name=f"scale_buffer_softmax_{i}",
                initial_value=np.zeros(shape=(4 * B_q,), dtype=dtype),
            )
            for i in range(number_of_pipelines)
        ]

        worker_locks = [
            [lock(qk_tiles[i]) for i in range(number_of_pipelines)],
            [lock(softmax_tiles[i]) for i in range(number_of_pipelines)],
            [lock(pv_tiles[i]) for i in range(number_of_pipelines)],
        ]

        for i in range(number_of_pipelines):
            qk_tile = qk_tiles[i]
            q_fifo = memQ[i]
            k_fifo = memK
            a_fifo = memA[i]
            idx_buffer = idx_buffers_qk[i]
            mha_rtps = mha_rtps_list[0][i]
            worker_lock = worker_locks[0][i]
            q_block_bias = i

            @core(qk_tile, stack_size=0xD00)
            def qk_core_body():
                use_lock(worker_lock, LockAction.Acquire, value=1)
                loop_idx_q = mha_rtps[0]
                loop_idx_kv = mha_rtps[1]

                for _ in range_(sys.maxsize):
                    idx_buffer[0] = 0
                    idx_buffer[1] = q_block_bias

                    for _ in range_(loop_idx_q):
                        elem_in_q = q_fifo.acquire(ObjectFifoPort.Consume, 1)

                        for _ in range_(loop_idx_kv):
                            elem_in_k = k_fifo.acquire(ObjectFifoPort.Consume, 1)
                            elem_a_out = a_fifo.acquire(ObjectFifoPort.Produce, 1)

                            zero_kernel(elem_a_out)
                            matmul_QK(elem_in_q, elem_in_k, elem_a_out, idx_buffer)

                            k_fifo.release(ObjectFifoPort.Consume, 1)
                            a_fifo.release(ObjectFifoPort.Produce, 1)

                            idx_buffer[0] += 1
                        idx_buffer[0] = 0
                        idx_buffer[1] += number_of_pipelines

                        q_fifo.release(ObjectFifoPort.Consume, 1)

            softmax_tile = softmax_tiles[i]
            a_in_fifo = outA[i]
            p_out_fifo = memP[i]
            scale_out_fifo = scaleOF[i]
            idx_buffer_softmax = idx_buffers_softmax[i]
            scale_buffer = scale_buffers_softmax[i]
            mha_rtps_softmax = mha_rtps_list[1][i]
            worker_lock_softmax = worker_locks[1][i]

            @core(softmax_tile, stack_size=0xD00)
            def softmax_core_body():
                use_lock(worker_lock_softmax, LockAction.Acquire, value=1)
                loop_idx_q = mha_rtps_softmax[0]
                loop_idx_kv = mha_rtps_softmax[1]
                S_q_effective = mha_rtps_softmax[2]
                S_kv_effective = mha_rtps_softmax[3]

                for _ in range_(sys.maxsize):
                    idx_buffer_softmax[0] = 0
                    idx_buffer_softmax[1] = q_block_bias

                    for _ in range_(loop_idx_q):
                        scale_buffer_init_kernel(scale_buffer, B_q)

                        for _ in range_(loop_idx_kv):
                            elt_of_out_p = p_out_fifo.acquire(
                                ObjectFifoPort.Produce, 1
                            )
                            elt_of_in_a = a_in_fifo.acquire(ObjectFifoPort.Consume, 1)
                            elt_of_out_scale = scale_out_fifo.acquire(
                                ObjectFifoPort.Produce, 1
                            )

                            partial_softmax_kernel(
                                elt_of_in_a,
                                elt_of_out_p,
                                scale_buffer,
                                idx_buffer_softmax,
                                inv_scale,
                                B_q,
                                B_kv,
                                S_q_effective,
                                S_kv_effective,
                            )
                            memcopy_kernel_scale(scale_buffer, elt_of_out_scale, 4 * B_q)

                            a_in_fifo.release(ObjectFifoPort.Consume, 1)
                            p_out_fifo.release(ObjectFifoPort.Produce, 1)
                            scale_out_fifo.release(ObjectFifoPort.Produce, 1)

                            idx_buffer_softmax[0] += 1
                        idx_buffer_softmax[0] = 0
                        idx_buffer_softmax[1] += number_of_pipelines

            pv_tile = pv_tiles[i]
            p_in_fifo = outP[i]
            v_fifo = memV
            scale_in_fifo = scaleOF[i]
            o_out_fifo = outO[i]
            idx_buffer_pv = idx_buffers_pv[i]
            mha_rtps_pv = mha_rtps_list[2][i]
            worker_lock_pv = worker_locks[2][i]

            @core(pv_tile, stack_size=0xD00)
            def pv_core_body():
                use_lock(worker_lock_pv, LockAction.Acquire, value=1)
                loop_idx_q = mha_rtps_pv[0]
                loop_idx_kv = mha_rtps_pv[1]

                for _ in range_(sys.maxsize):
                    idx_buffer_pv[0] = 0
                    idx_buffer_pv[1] = q_block_bias

                    for _ in range_(loop_idx_q):
                        elem_o_out = o_out_fifo.acquire(ObjectFifoPort.Produce, 1)

                        zero_kernel(elem_o_out)

                        elem_in_p = p_in_fifo.acquire(ObjectFifoPort.Consume, 1)
                        elem_in_v = v_fifo.acquire(ObjectFifoPort.Consume, 1)
                        elt_of_out_scale = scale_in_fifo.acquire(
                            ObjectFifoPort.Consume, 1
                        )

                        matmul_PV(
                            elem_in_p,
                            elem_in_v,
                            elem_o_out,
                            elt_of_out_scale,
                            B_q,
                            0,
                            idx_buffer_pv,
                        )

                        p_in_fifo.release(ObjectFifoPort.Consume, 1)
                        v_fifo.release(ObjectFifoPort.Consume, 1)
                        scale_in_fifo.release(ObjectFifoPort.Consume, 1)

                        idx_buffer_pv[0] += 1

                        with if_(loop_idx_kv > 2) as if_op:
                            for _ in range_(loop_idx_kv - 2):
                                elem_in_p_mid = p_in_fifo.acquire(
                                    ObjectFifoPort.Consume, 1
                                )
                                elem_in_v_mid = v_fifo.acquire(
                                    ObjectFifoPort.Consume, 1
                                )
                                elt_of_out_scale_mid = scale_in_fifo.acquire(
                                    ObjectFifoPort.Consume, 1
                                )

                                matmul_PV(
                                    elem_in_p_mid,
                                    elem_in_v_mid,
                                    elem_o_out,
                                    elt_of_out_scale_mid,
                                    B_q,
                                    1,
                                    idx_buffer_pv,
                                )

                                p_in_fifo.release(ObjectFifoPort.Consume, 1)
                                v_fifo.release(ObjectFifoPort.Consume, 1)
                                scale_in_fifo.release(ObjectFifoPort.Consume, 1)

                                idx_buffer_pv[0] += 1

                        with if_(loop_idx_kv > 1) as if_op:
                            elem_in_p_last = p_in_fifo.acquire(
                                ObjectFifoPort.Consume, 1
                            )
                            elem_in_v_last = v_fifo.acquire(ObjectFifoPort.Consume, 1)
                            elt_of_out_scale_last = scale_in_fifo.acquire(
                                ObjectFifoPort.Consume, 1
                            )

                            matmul_PV(
                                elem_in_p_last,
                                elem_in_v_last,
                                elem_o_out,
                                elt_of_out_scale_last,
                                B_q,
                                1,
                                idx_buffer_pv,
                            )
                            rescale_O(
                                elem_o_out, elt_of_out_scale_last, B_q, idx_buffer_pv
                            )

                            p_in_fifo.release(ObjectFifoPort.Consume, 1)
                            v_fifo.release(ObjectFifoPort.Consume, 1)
                            scale_in_fifo.release(ObjectFifoPort.Consume, 1)

                            idx_buffer_pv[0] += 1
                        with else_(if_op):
                            rescale_O(elem_o_out, elt_of_out_scale, B_q, idx_buffer_pv)
                            idx_buffer_pv[0] += 1

                        idx_buffer_pv[0] = 0
                        idx_buffer_pv[1] += number_of_pipelines

                        o_out_fifo.release(ObjectFifoPort.Produce, 1)

        Q_tiles = TensorTiler2D.group_tiler(
            (heads * S_q_pad, d),
            (number_of_pipelines_join_distribute * B_q, d),
            (1, 1),
        )
        K_tiles = TensorTiler2D.group_tiler(
            (num_KV_heads * S_kv_pad, d), (S_kv_pad, d), (1, 1)
        )
        V_tiles = TensorTiler2D.group_tiler(
            (num_KV_heads * S_kv_pad, d), (S_kv_pad, d), (1, 1)
        )
        O_tiles = TensorTiler2D.group_tiler(
            (heads * S_q_pad, d),
            (number_of_pipelines_join_distribute * B_q, d),
            (1, 1),
        )

        def legalize_tap(tap: TensorAccessPattern, max_dim_size: int):
            sizes = copy.deepcopy(tap._sizes)
            if all(size <= max_dim_size for size in sizes):
                return tap
            for idx, stride in enumerate(tap._strides[:-1]):
                if stride != 0 and stride != tap._sizes[idx + 1]:
                    raise ValueError("Cannot legalize DMA non-contiguous DMA transfer")
            assert tap._strides[-1] == 1, "Cannot legalize DMA non-contiguous DMA transfer"
            tap._sizes = [1, 1, 1, math.prod(sizes)]
            tap._strides = [0, 0, 0, 1]
            return tap

        def legalize_tas(tas: TensorAccessSequence):
            max_dim_size = 1023
            for tap in tas:
                legalize_tap(tap, max_dim_size)

        legalize_tas(K_tiles)
        legalize_tas(V_tiles)

        @runtime_sequence(Q_ty, KV_ty, KV_ty, Q_ty)
        def sequence(Q, K, V, O):
            for i in range(number_of_pipelines):
                mha_rtps_list[0][i][0] = num_q_block_per_pipeline
                mha_rtps_list[0][i][1] = num_kv_blocks

                mha_rtps_list[1][i][0] = num_q_block_per_pipeline
                mha_rtps_list[1][i][1] = num_kv_blocks
                mha_rtps_list[1][i][2] = S_q_eff
                mha_rtps_list[1][i][3] = S_kv_eff

                mha_rtps_list[2][i][0] = num_q_block_per_pipeline
                mha_rtps_list[2][i][1] = num_kv_blocks

            for stage in range(3):
                for i in range(number_of_pipelines):
                    set_lock(worker_locks[stage][i], 1)

            for head_idx in range(heads):
                kv_head_idx = head_idx // (heads // num_KV_heads)

                for q_block_idx in range(num_q_block_per_pipeline):
                    input_tasks = []
                    output_tasks = []

                    if number_of_pipelines > 6:
                        q0_task = shim_dma_single_bd_task(
                            inQ,
                            Q,
                            tap=Q_tiles[
                                2 * head_idx * num_q_block_per_pipeline
                                + q_block_idx * 2
                            ],
                            issue_token=False,
                        )
                        dma_start_task(q0_task)
                        input_tasks.append(q0_task)

                        q1_task = shim_dma_single_bd_task(
                            inQ2,
                            Q,
                            tap=Q_tiles[
                                2 * head_idx * num_q_block_per_pipeline
                                + q_block_idx * 2
                                + 1
                            ],
                            issue_token=False,
                        )
                        dma_start_task(q1_task)
                        input_tasks.append(q1_task)
                    else:
                        q_task = shim_dma_single_bd_task(
                            inQ,
                            Q,
                            tap=Q_tiles[
                                head_idx * num_q_block_per_pipeline + q_block_idx
                            ],
                            issue_token=False,
                        )
                        dma_start_task(q_task)
                        input_tasks.append(q_task)

                    k_task = shim_dma_single_bd_task(
                        inK, K, tap=K_tiles[kv_head_idx], issue_token=False
                    )
                    dma_start_task(k_task)
                    input_tasks.append(k_task)

                    v_task = shim_dma_single_bd_task(
                        inV, V, tap=V_tiles[kv_head_idx], issue_token=False
                    )
                    dma_start_task(v_task)
                    input_tasks.append(v_task)

                    if number_of_pipelines > 6:
                        o0_task = shim_dma_single_bd_task(
                            memO,
                            O,
                            tap=O_tiles[
                                2 * head_idx * num_q_block_per_pipeline
                                + q_block_idx * 2
                            ],
                            issue_token=True,
                        )
                        dma_start_task(o0_task)
                        output_tasks.append(o0_task)

                        o1_task = shim_dma_single_bd_task(
                            memO2,
                            O,
                            tap=O_tiles[
                                2 * head_idx * num_q_block_per_pipeline
                                + q_block_idx * 2
                                + 1
                            ],
                            issue_token=True,
                        )
                        dma_start_task(o1_task)
                        output_tasks.append(o1_task)
                    else:
                        o_task = shim_dma_single_bd_task(
                            memO,
                            O,
                            tap=O_tiles[
                                head_idx * num_q_block_per_pipeline + q_block_idx
                            ],
                            issue_token=True,
                        )
                        dma_start_task(o_task)
                        output_tasks.append(o_task)

                    dma_await_task(*output_tasks)
                    dma_free_task(*input_tasks)


if __name__ == "__main__":
    main()
