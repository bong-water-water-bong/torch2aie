#
# 40-column AIE GEMM design (40x1 grid, 40 cores total)
# Uses ALL 40 AIE columns on XDNA 2 for maximum throughput
# bfp16ebs8 weights, bf16 input/output
#
# For decode (M=128): N=1024,2048,3072 all fit in single pass
# For prefill (M=1024,4096): N=1024 fits, larger N needs 2-3 passes
#

import argparse
from ml_dtypes import bfloat16
import numpy as np

from aie.extras.context import mlir_mod_ctx
from aie.dialects.aie import *
from aie.dialects.aiex import *
from aie.dialects.aiex import v8bfp16ebs8
import aie.utils.trace as trace_utils
from aie.helpers.taplib import TensorTiler2D
from aie.helpers.dialects.scf import _for as range_


def ceildiv(a, b):
    return (a + b - 1) // b


def main():
    argparser = argparse.ArgumentParser(
        prog="AIE Matrix Multiplication MLIR Design (40 Cores, 40x1 grid) with bfp16ebs8 weights and bf16 input/output",
        description="Emits MLIR code for matrix multiplication using ALL 40 AIE columns on XDNA 2.",
    )
    argparser.add_argument("-M", type=int, default=128)
    argparser.add_argument("-K", type=int, default=1024)
    argparser.add_argument("-N", type=int, default=1024)
    argparser.add_argument("-m", type=int, default=128)
    argparser.add_argument("-k", type=int, default=64)
    argparser.add_argument("-n", type=int, default=128)
    args = argparser.parse_args()
    with mlir_mod_ctx() as ctx:
        my_matmul(args.M, args.K, args.N, args.m, args.k, args.n)
        print(ctx.module)


def my_matmul(M, K, N, m, k, n):
    # USE ALL 40 AIE COLUMNS
    n_aie_cols = 40
    n_aie_rows = 1  # 1 compute row per column (for decode M=128)

    a_m_l1 = m
    a_k_l1 = k
    b_k_l1 = k
    b_n_l1 = n
    c_m_l1 = m
    c_n_l1 = n

    a_m_l2 = m
    a_k_l2 = k
    b_k_l2 = k
    b_n_l2 = n
    c_m_l2 = n_aie_rows * m  # = m = 128
    c_n_l2 = n  # = 128

    r = 8
    s = 8
    t = 8

    mtk = 512
    enable_tracing = False
    trace_size = 8192

    dtype_in = bfloat16
    dtype_out = bfloat16

    @device(AIEDevice.npu2)
    def device_body():
        A_l2_ty = np.ndarray[(m, mtk), np.dtype[dtype_in]]
        B_l2_ty = np.ndarray[(k, n // 8), np.dtype[v8bfp16ebs8]]
        C_l2_ty = np.ndarray[(n_aie_rows * m, n), np.dtype[dtype_out]]

        A_l1_ty = np.ndarray[(m // 4, k), np.dtype[dtype_in]]
        B_l1_ty = np.ndarray[(k, n // 8), np.dtype[v8bfp16ebs8]]
        C_l1_ty = np.ndarray[(m, n), np.dtype[dtype_out]]

        zero = external_func(
            f"zero_kernel_bf16", inputs=[C_l1_ty], link_with=f"mm_{m}x{k}x{n}.o"
        )
        matmul = external_func(
            "matmul_vectorized_different_datatypes",
            inputs=[A_l1_ty, B_l1_ty, C_l1_ty],
            link_with=f"mm_{m}x{k}x{n}.o",
        )

        # Tiles: 40 columns, 3 rows (shim=row0, mem=row1, core=row2)
        tiles = [
            [tile(col, row) for col in range(0, n_aie_cols)] for row in range(0, 3)
        ]
        shim_tiles = tiles[0]
        mem_tiles = tiles[1]
        core_tiles = tiles[2:]

        A_l3l2_fifos = [None] * n_aie_rows
        A_l2l1_fifos = [None] * n_aie_rows
        B_l3l2_fifos = [None] * n_aie_cols
        B_l2l1_fifos = [None] * n_aie_cols
        C_l1l2_fifos = [[None] * n_aie_cols for _ in range(n_aie_rows)]
        C_l2l3_fifos = [None] * n_aie_cols

        # Input A: single row of A-fifos, broadcast to all columns
        for row in range(n_aie_rows):
            A_l3l2_fifos[row] = object_fifo(
                f"A_L3L2_{row}",
                shim_tiles[row],
                mem_tiles[row],
                2,
                A_l2_ty,
                None,
                [[(m, k), (mtk // k, m * k), (k, 1)]],
            )
            A_l2l1_fifos[row] = object_fifo(
                f"A_L2L1_{row}",
                mem_tiles[row],
                core_tiles[row][0:n_aie_cols],
                2,
                A_l1_ty,
                [(mtk // k * 4, m * k // 4), (k // s, s), (m // 4, k), (s, 1)],
                [[(k // s, r * s), (m // 4 // r, r * k), (r * s, 1)] for _ in range(n_aie_cols)],
            )
            object_fifo_link(A_l3l2_fifos[row], A_l2l1_fifos[row])

        # Input B: 40 columns of weight fifos
        for col in range(n_aie_cols):
            B_l3l2_fifos[col] = object_fifo(
                f"B_L3L2_{col}",
                shim_tiles[col],
                mem_tiles[col],
                2,
                B_l2_ty,
            )
            B_l2l1_fifos[col] = object_fifo(
                f"B_L2L1_{col}",
                mem_tiles[col],
                [core_tiles[j][col] for j in range(n_aie_rows)],
                2,
                B_l1_ty,
            )
            object_fifo_link(B_l3l2_fifos[col], B_l2l1_fifos[col])

        # Output C: 40 columns
        for col in range(n_aie_cols):
            for row in range(n_aie_rows):
                C_l1l2_fifos[row][col] = object_fifo(
                    f"C_L1L2_{col}_{row}",
                    core_tiles[row][col],
                    mem_tiles[col],
                    1,
                    C_l1_ty,
                )
            C_transformations = [(m // r, r * n), (r, t), (n // t, r * t), (t, 1)]
            C_l2l3_fifos[col] = object_fifo(
                f"C_L2L3_{col}",
                mem_tiles[col],
                shim_tiles[col],
                2,
                C_l2_ty,
                C_transformations,
            )
            of_offsets = [m * n * i for i in range(n_aie_rows)]
            object_fifo_link(
                [C_l1l2_fifos[j][col] for j in range(n_aie_rows)],
                C_l2l3_fifos[col],
                of_offsets,
            )

        # Core body
        for row in range(n_aie_rows):
            for col in range(n_aie_cols):
                @core(core_tiles[row][col], stack_size=0xD00)
                def core_body():
                    for _ in range_(0xFFFFFFFF):
                        # Active columns only = min(n_aie_cols, N//n)
                        active_cols = (N + n - 1) // n
                        if col < active_cols:
                            for _ in range(
                                (M // m) * (N // n) // (active_cols * n_aie_rows)
                            ):
                                elem_out = C_l1l2_fifos[row][col].acquire(
                                    ObjectFifoPort.Produce, 1
                                )
                                zero(elem_out)
                                for _ in range_(K // k):
                                    elem_in_b = B_l2l1_fifos[col].acquire(
                                        ObjectFifoPort.Consume, 1
                                    )
                                    for i in range(4):
                                        elem_in_a = A_l2l1_fifos[row].acquire(
                                            ObjectFifoPort.Consume, 1
                                        )
                                        matmul(elem_in_a, elem_in_b, elem_out)
                                        A_l2l1_fifos[row].release(ObjectFifoPort.Consume, 1)
                                    B_l2l1_fifos[col].release(ObjectFifoPort.Consume, 1)
                                C_l1l2_fifos[row][col].release(ObjectFifoPort.Produce, 1)

        # Runtime sequence
        @runtime_sequence(
            np.ndarray[(M * K,), np.dtype[dtype_in]],
            np.ndarray[(K * N // 8,), np.dtype[v8bfp16ebs8]],
            np.ndarray[(M * N,), np.dtype[dtype_out]],
        )
        def sequence(A, B, C):
            A_taps = TensorTiler2D.group_tiler((M, K), (m, mtk), (1, K // mtk))
            B_taps = TensorTiler2D.group_tiler((1, N * K // 8), (1, n * K // 8), (1, 1))
            C_taps = TensorTiler2D.group_tiler((M, N), (n_aie_rows * m, n), (1, 1))

            num_row_tile = M // m // n_aie_rows  # M/128
            num_col_tile = (N + n - 1) // n // n_aie_cols  # ceil(N/128/40)
            if num_col_tile == 0: num_col_tile = 1  # handle small N
            num_groups = max(num_row_tile * num_col_tile, 1)
            active_cols = (N + n - 1) // n  # number of columns with useful data
            tb_max_n_rows = 4
            input_task_groups = [[] for _ in range(tb_max_n_rows)]
            output_task_groups = [[] for _ in range(tb_max_n_rows)]

            for group_idx in range(num_groups):
                a_base_idx = (group_idx // num_col_tile) * n_aie_rows
                for row in range(n_aie_rows):
                    a_task = shim_dma_single_bd_task(
                        A_l3l2_fifos[row], A,
                        tap=A_taps[a_base_idx + row],
                        issue_token=False,
                    )
                    dma_start_task(a_task)
                    input_task_groups[group_idx % tb_max_n_rows].append(a_task)

                b_base_idx = (group_idx % num_col_tile) * n_aie_cols
                for col in range(n_aie_cols):
                    if col < active_cols:
                        b_task = shim_dma_single_bd_task(
                            B_l3l2_fifos[col], B,
                            tap=B_taps[b_base_idx + col],
                            issue_token=False,
                        )
                        dma_start_task(b_task)
                        input_task_groups[group_idx % tb_max_n_rows].append(b_task)

                c_base_idx = group_idx * n_aie_cols
                for col in range(n_aie_cols):
                    if col < active_cols:
                        c_task = shim_dma_single_bd_task(
                            C_l2l3_fifos[col], C,
                            tap=C_taps[c_base_idx + col],
                            issue_token=True,
                        )
                        dma_start_task(c_task)
                        output_task_groups[group_idx % tb_max_n_rows].append(c_task)

                if (group_idx % tb_max_n_rows == 1) and (group_idx != 1):
                    if output_task_groups[2]:
                        dma_await_task(*output_task_groups[2]); output_task_groups[2] = []
                        dma_free_task(*input_task_groups[2]); input_task_groups[2] = []
                    if output_task_groups[3]:
                        dma_await_task(*output_task_groups[3]); output_task_groups[3] = []
                        dma_free_task(*input_task_groups[3]); input_task_groups[3] = []
                if group_idx % tb_max_n_rows == 3:
                    if output_task_groups[0]:
                        dma_await_task(*output_task_groups[0]); output_task_groups[0] = []
                        dma_free_task(*input_task_groups[0]); input_task_groups[0] = []
                    if output_task_groups[1]:
                        dma_await_task(*output_task_groups[1]); output_task_groups[1] = []
                        dma_free_task(*input_task_groups[1]); input_task_groups[1] = []

            for g in [0, 1, 2, 3]:
                if output_task_groups[g]:
                    dma_await_task(*output_task_groups[g])
                    dma_free_task(*input_task_groups[g])


main()
