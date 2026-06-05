// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

namespace {

constexpr int kRows = 16;
constexpr int kGroupSize = 32;
constexpr int kGroups = 8;
constexpr int kQ4QuadBytes = kRows * 2;
constexpr int kQ4GroupBytes = kGroupSize * (kRows / 2);

using Vec16 = aie::vector<bfloat16, kRows>;
using Vec32 = aie::vector<bfloat16, kGroupSize>;
using Vec64 = aie::vector<bfloat16, kRows * 4>;
using Acc16 = aie::accum<accfloat, kRows>;

__attribute__((always_inline)) static inline Vec64
load_q4_quad(const uint8_t *__restrict q4_group, int dim_quad) {
  const uint4 *__restrict q4_ptr =
      reinterpret_cast<const uint4 *>(q4_group + dim_quad * kQ4QuadBytes);
  aie::vector<uint4, kRows * 4> q4 =
      aie::load_v<kRows * 4, aie_dm_resource::d>(q4_ptr);
  aie::vector<uint8, kRows * 4> q8 = aie::unpack(q4);
  return aie::to_float<bfloat16>(q8, 0);
}

__attribute__((always_inline)) static inline Vec16
dequant_half(const Vec16 &q, const Vec16 &scale, const Vec16 &offset) {
  aie::accum<accfloat, kRows> scaled = aie::mul(q, scale);
  return aie::add(scaled.template to_vector<bfloat16>(), offset);
}

__attribute__((always_inline)) static inline Acc16
mac_lane(Acc16 acc, const Vec16 &coeff, const Vec32 &act_group, int lane) {
  Vec16 act = aie::broadcast<bfloat16, kRows>(act_group.get(lane));
  return aie::mac(acc, coeff, act);
}

__attribute__((always_inline)) static inline Acc16
consume_quad(Acc16 acc, const uint8_t *__restrict q4_group, int dim_quad,
             const Vec16 &scale, const Vec16 &offset,
             const Vec32 &act_group) {
  Vec64 q = load_q4_quad(q4_group, dim_quad);
  const int dim = dim_quad * 4;
  acc = mac_lane(acc,
                 dequant_half(q.template extract<kRows>(0), scale, offset),
                 act_group, dim + 0);
  acc = mac_lane(acc,
                 dequant_half(q.template extract<kRows>(1), scale, offset),
                 act_group, dim + 1);
  acc = mac_lane(acc,
                 dequant_half(q.template extract<kRows>(2), scale, offset),
                 act_group, dim + 2);
  acc = mac_lane(acc,
                 dequant_half(q.template extract<kRows>(3), scale, offset),
                 act_group, dim + 3);
  return acc;
}

template <int Group>
__attribute__((always_inline)) static inline Acc16
consume_group(Acc16 acc, const uint8_t *__restrict q4,
              const bfloat16 *__restrict scale,
              const bfloat16 *__restrict offset,
              const bfloat16 *__restrict activation) {
  static_assert(Group >= 0 && Group < kGroups);
  const uint8_t *__restrict q4_group = q4 + Group * kQ4GroupBytes;
  Vec16 scale_v =
      aie::load_v<kRows, aie_dm_resource::a>(scale + Group * kRows);
  Vec16 offset_v =
      aie::load_v<kRows, aie_dm_resource::b>(offset + Group * kRows);
  Vec32 act_group =
      aie::load_v<kGroupSize, aie_dm_resource::c>(
          activation + Group * kGroupSize);

  acc = consume_quad(acc, q4_group, 0, scale_v, offset_v, act_group);
  acc = consume_quad(acc, q4_group, 1, scale_v, offset_v, act_group);
  acc = consume_quad(acc, q4_group, 2, scale_v, offset_v, act_group);
  acc = consume_quad(acc, q4_group, 3, scale_v, offset_v, act_group);
  acc = consume_quad(acc, q4_group, 4, scale_v, offset_v, act_group);
  acc = consume_quad(acc, q4_group, 5, scale_v, offset_v, act_group);
  acc = consume_quad(acc, q4_group, 6, scale_v, offset_v, act_group);
  acc = consume_quad(acc, q4_group, 7, scale_v, offset_v, act_group);
  return acc;
}

__attribute__((always_inline)) static inline void
store_acc(const Acc16 &acc, bfloat16 *__restrict output) {
  aie::store_v(output, acc.template to_vector<bfloat16>());
}

} // namespace

extern "C" {

void main16_q4nx_section_cell_i32_probe(
    int32_t *__restrict q4_words, int32_t *__restrict scale_words,
    int32_t *__restrict offset_words, int32_t *__restrict activation_words,
    int32_t *__restrict output_words) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);

  const uint8_t *__restrict q4 = reinterpret_cast<const uint8_t *>(q4_words);
  const bfloat16 *__restrict scale =
      reinterpret_cast<const bfloat16 *>(scale_words);
  const bfloat16 *__restrict offset =
      reinterpret_cast<const bfloat16 *>(offset_words);
  const bfloat16 *__restrict activation =
      reinterpret_cast<const bfloat16 *>(activation_words);
  bfloat16 *__restrict output = reinterpret_cast<bfloat16 *>(output_words);

  Acc16 acc = aie::zeros<accfloat, kRows>();

  acc = consume_group<0>(acc, q4, scale, offset, activation); // fill_g0
  acc = consume_group<1>(acc, q4, scale, offset, activation); // fill_to_steady_g1
  acc = consume_group<2>(acc, q4, scale, offset, activation); // steady_to_steady_g2
  acc = consume_group<3>(acc, q4, scale, offset, activation); // steady_to_steady_g3
  acc = consume_group<4>(acc, q4, scale, offset, activation); // steady_to_steady_g4
  acc = consume_group<5>(acc, q4, scale, offset, activation); // steady_to_steady_g5
  acc = consume_group<6>(acc, q4, scale, offset, activation); // pre_drain_g6
  acc = consume_group<7>(acc, q4, scale, offset, activation); // drain_g7

  store_acc(acc, output);
}

} // extern "C"
