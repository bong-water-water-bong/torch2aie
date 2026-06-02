# This file is licensed under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
# (c) Copyright 2026 Advanced Micro Devices, Inc.

cmake_minimum_required(VERSION 3.30)
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED YES)

set(TARGET_NAME n32_core CACHE STRING "Target to be built")
set(HOST_SRC "" CACHE FILEPATH "ATB GEMM host source")
set(MATMUL_DIR "" CACHE PATH "Directory containing matrix_multiplication/common.h")
set(XRT_INC_DIR "" CACHE PATH "Vendored XRT include directory")
set(XRT_LIB_DIR "" CACHE PATH "Vendored XRT library directory")
set(TEST_UTILS_INC_DIR "" CACHE PATH "Vendored MLIR-AIE test_utils include directory")
set(TEST_UTILS_LIB_DIR "" CACHE PATH "Vendored MLIR-AIE test_utils library directory")
set(UUID_INC_DIR "" CACHE PATH "Vendored libuuid include directory")
set(UUID_LIB_DIR "" CACHE PATH "Vendored libuuid library directory")

foreach(required HOST_SRC MATMUL_DIR XRT_INC_DIR XRT_LIB_DIR TEST_UTILS_INC_DIR TEST_UTILS_LIB_DIR UUID_INC_DIR UUID_LIB_DIR)
  if(NOT DEFINED ${required} OR "${${required}}" STREQUAL "")
    message(FATAL_ERROR "${required} must be provided")
  endif()
endforeach()

project(${TARGET_NAME})

add_executable(${TARGET_NAME}
    ${HOST_SRC}
)

target_include_directories(${TARGET_NAME} PUBLIC
    ${XRT_INC_DIR}
    ${UUID_INC_DIR}
    ${MATMUL_DIR}
    ${TEST_UTILS_INC_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}
)

target_link_directories(${TARGET_NAME} PUBLIC
    ${XRT_LIB_DIR}
    ${UUID_LIB_DIR}
    ${TEST_UTILS_LIB_DIR}
)

target_link_libraries(${TARGET_NAME} PUBLIC
    xrt_coreutil
    test_utils
    uuid
)
