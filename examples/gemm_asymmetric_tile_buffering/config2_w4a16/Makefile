##===- Makefile -----------------------------------------------------------===##
#
# This file licensed under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
# Copyright (C) 2026, Advanced Micro Devices, Inc.
#
##===----------------------------------------------------------------------===##

srcdir := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
subdir = ${srcdir}
targetname = n32_core
devicename = npu2
kernelsrc := mm_w4a16.cc
hostsrc := ${srcdir}/../gemm_atb_w4a16_test.cpp

kernel_dir := ${srcdir}
buffer_aloc_flag := basic-sequential

# M, K, N: final GEMM dimensions. Defaults match the paper-scale shape we
# report in the umbrella README's Performance table. The runtime sequence
# uses a 4-way ping-pong scheme, so (M/m)*(N/n) must be a multiple of 128
# if you override these.
M?=3072
K?=4096
N?=1536

# m, k, n: per-core L1 output tile (m_C x n) and reduction step (k).
# Asymmetry rho = 6 is encoded inside n32_core_placed.py as `DIV = 6`,
# so the L1 A buffer is (m/6, k/8) v8bfp16ebs8 entries. B is sent as
# group-32 packed W4 plus bf16 scale/zero metadata and dequantized on-core
# once per B tile before the existing BFP16 microkernel consumes it.
m=192
k=128
n=96

include ${srcdir}/../makefile_common
KERNEL_DEFINES += -DW4_GROUP_SIZE=32

# aie_kernel_utils.h is provided by the vendored MLIR-AIE tree; the shared
# makefile_common adds that include path.
