// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <stdint.h>

namespace {

constexpr int kLanes = 512;
constexpr int kVec = 16;

} // namespace

extern "C" {

void full_vector_add_aie_accum_ctor_probe(
    bfloat16 *__restrict lhs,
    bfloat16 *__restrict rhs,
    bfloat16 *__restrict out
) {
    for (int idx = 0; idx < kLanes; idx += kVec)
        chess_prepare_for_pipelining chess_loop_range(kLanes / kVec, kLanes / kVec) {
        aie::vector<bfloat16, kVec> lhs_vec =
            aie::load_v<kVec, aie_dm_resource::a>(lhs + idx);
        aie::vector<bfloat16, kVec> rhs_vec =
            aie::load_v<kVec, aie_dm_resource::b>(rhs + idx);
        aie::accum<accfloat, kVec> lhs_acc(lhs_vec);
        aie::accum<accfloat, kVec> rhs_acc(rhs_vec);
        aie::accum<accfloat, kVec> sum = aie::add(lhs_acc, rhs_acc);
        aie::store_v(out + idx, sum.template to_vector<bfloat16>());
    }
}

void full_vector_add_aie_from_vector_probe(
    bfloat16 *__restrict lhs,
    bfloat16 *__restrict rhs,
    bfloat16 *__restrict out
) {
    for (int idx = 0; idx < kLanes; idx += kVec)
        chess_prepare_for_pipelining chess_loop_range(kLanes / kVec, kLanes / kVec) {
        aie::vector<bfloat16, kVec> lhs_vec =
            aie::load_v<kVec, aie_dm_resource::a>(lhs + idx);
        aie::vector<bfloat16, kVec> rhs_vec =
            aie::load_v<kVec, aie_dm_resource::b>(rhs + idx);
        aie::accum<accfloat, kVec> lhs_acc;
        aie::accum<accfloat, kVec> rhs_acc;
        lhs_acc.from_vector(lhs_vec);
        rhs_acc.from_vector(rhs_vec);
        aie::accum<accfloat, kVec> sum = aie::add(lhs_acc, rhs_acc);
        aie::store_v(out + idx, sum.template to_vector<bfloat16>());
    }
}

void full_vector_add_aie_bf16_vector_probe(
    bfloat16 *__restrict lhs,
    bfloat16 *__restrict rhs,
    bfloat16 *__restrict out
) {
    for (int idx = 0; idx < kLanes; idx += kVec)
        chess_prepare_for_pipelining chess_loop_range(kLanes / kVec, kLanes / kVec) {
        aie::vector<bfloat16, kVec> lhs_vec =
            aie::load_v<kVec, aie_dm_resource::a>(lhs + idx);
        aie::vector<bfloat16, kVec> rhs_vec =
            aie::load_v<kVec, aie_dm_resource::b>(rhs + idx);
        aie::vector<bfloat16, kVec> sum = aie::add(lhs_vec, rhs_vec);
        aie::store_v(out + idx, sum);
    }
}

} // extern "C"
