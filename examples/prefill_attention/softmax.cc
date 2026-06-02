// SPDX-FileCopyrightText: Copyright (C) 2025 Advanced Micro Devices, Inc. All rights reserved.
// SPDX-License-Identifier: Apache-2.0

#include <aie_api/aie.hpp>
#include <limits>
#include <stdint.h>

#define SM_VEC_LEN 64

using namespace aie;

static inline __attribute__((always_inline)) void
partial_softmax_masked64_alias_bf16(bfloat16 *restrict input_vector,
                                    bfloat16 *restrict output_vector,
                                    bfloat16 *restrict scale_buffer,
                                    const int32_t row_idx,
                                    const int32_t num_rows,
                                    const bfloat16 scale,
                                    const int32_t valid_cols)
{
    event0();
    ::aie::set_rounding(aie::rounding_mode::conv_even);

    using Vec64bf16 = aie::vector<bfloat16, SM_VEC_LEN>;

    Vec64bf16 input_bf16 = aie::load_v<SM_VEC_LEN>(input_vector);
    Vec64bf16 log2e_vec = aie::broadcast<bfloat16, SM_VEC_LEN>(scale);
    Vec64bf16 lowest_vec =
        aie::broadcast<bfloat16, SM_VEC_LEN>(std::numeric_limits<bfloat16>::lowest());

    bool has_masked_lanes = valid_cols < SM_VEC_LEN;
    aie::mask<SM_VEC_LEN> masked_lanes(false);
    if (has_masked_lanes) {
        uint64_t keep_bits = 0;
        if (valid_cols > 0) {
            keep_bits = (1ULL << valid_cols) - 1ULL;
        }
        masked_lanes = aie::mask<SM_VEC_LEN>::from_uint64(~keep_bits);
        input_bf16 = aie::select(input_bf16, lowest_vec, masked_lanes);
    }

    aie::accum<accfloat, SM_VEC_LEN> scaled_accum = aie::mul(input_bf16, log2e_vec);

    float max_val = 0;
    float running_max = aie::reduce_max(scaled_accum.to_vector<bfloat16>());
    if (running_max > max_val) {
        max_val = running_max;
    }

    // Compute m_{i}
    if (max_val > static_cast<float>(scale_buffer[row_idx])) {
        scale_buffer[num_rows + row_idx] = max_val;
    } else {
        scale_buffer[num_rows + row_idx] = scale_buffer[row_idx];
        max_val = static_cast<float>(scale_buffer[row_idx]);
    }

    Vec64bf16 max_val_vec = aie::broadcast<bfloat16, SM_VEC_LEN>(max_val);
    aie::accum<accfloat, SM_VEC_LEN> exp_in_accum = aie::sub(scaled_accum, max_val_vec);
    Vec64bf16 exp_val = aie::exp2<bfloat16>(exp_in_accum.to_vector<float>());
    if (has_masked_lanes) {
        Vec64bf16 zero_vec = aie::broadcast<bfloat16, SM_VEC_LEN>((bfloat16)0.0f);
        exp_val = aie::select(exp_val, zero_vec, masked_lanes);
    }

    aie::store_v(output_vector, exp_val);

    aie::accum<accfloat, SM_VEC_LEN> exp_val_accum = aie::zeros<accfloat, SM_VEC_LEN>();
    exp_val_accum = add(exp_val_accum, exp_val);
    float accum_exp_val = aie::reduce_add(exp_val_accum.to_vector<float>());
    scale_buffer[3 * num_rows + row_idx] = accum_exp_val;

    event1();

    return;
}
