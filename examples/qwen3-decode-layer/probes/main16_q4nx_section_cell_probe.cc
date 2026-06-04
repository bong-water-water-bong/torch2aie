// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

namespace {

constexpr int kRows = 16;
constexpr int kGroupSize = 32;
constexpr int kQ4QuadBytes = kRows * 2;
constexpr int kQ4GroupBytes = kGroupSize * (kRows / 2);

using Vec16 = aie::vector<bfloat16, kRows>;
using Vec32 = aie::vector<bfloat16, kGroupSize>;
using Vec64 = aie::vector<bfloat16, kRows * 4>;
using Acc32 = aie::accum<accfloat, kGroupSize>;

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

__attribute__((always_inline)) static inline Vec16
act_lane(const Vec32 &act_group, int lane) {
  return aie::broadcast<bfloat16, kRows>(act_group.get(lane));
}

#define MAIN16_LOAD_PAIR(GROUP, DIM_QUAD, DIM, COEFF, ACT_PAIR)               \
  do {                                                                        \
    Vec16 scale_v = aie::load_v<kRows, aie_dm_resource::a>(                  \
        scale + (GROUP) * kGroupSize);                                        \
    Vec16 offset_v = aie::load_v<kRows, aie_dm_resource::b>(                 \
        offset + (GROUP) * kGroupSize);                                       \
    Vec32 act_group_v = aie::load_v<kGroupSize, aie_dm_resource::c>(          \
        activation + (GROUP) * kGroupSize);                                   \
    Vec64 q_v = load_q4_quad(q4 + (GROUP) * kQ4GroupBytes, (DIM_QUAD));       \
    (COEFF).insert(0, dequant_half(q_v.template extract<kRows>(0), scale_v,   \
                                   offset_v));                                \
    (COEFF).insert(1, dequant_half(q_v.template extract<kRows>(1), scale_v,   \
                                   offset_v));                                \
    (ACT_PAIR).insert(0, act_lane(act_group_v, (DIM)));                       \
    (ACT_PAIR).insert(1, act_lane(act_group_v, (DIM) + 1));                   \
  } while (0)

#define MAIN16_MAC(ACC, COEFF, ACT_PAIR)                                      \
  do {                                                                        \
    (ACC) = aie::mac((ACC), (COEFF), (ACT_PAIR));                             \
  } while (0)

#ifndef MAIN16_SECTION_CELL_LANES
#define MAIN16_SECTION_CELL_LANES 1
#endif

#ifndef MAIN16_SECTION_CELL_MIXED
#define MAIN16_SECTION_CELL_MIXED 0
#endif

#ifndef MAIN16_SECTION_CELL_GROUPS
#define MAIN16_SECTION_CELL_GROUPS 2
#endif

#ifndef MAIN16_SECTION_CELL_PIN
#define MAIN16_SECTION_CELL_PIN 0
#endif

#if MAIN16_SECTION_CELL_MIXED
#define MAIN16_MIX_HALVES(DST, OLD, NEW)                                      \
  do {                                                                        \
    (DST).insert(0, (OLD).template extract<kRows>(1));                        \
    (DST).insert(1, (NEW).template extract<kRows>(0));                        \
  } while (0)
#else
#define MAIN16_MIX_HALVES(DST, OLD, NEW)                                      \
  do {                                                                        \
    (void)(OLD);                                                              \
    (DST) = (NEW);                                                            \
  } while (0)
#endif

#define MAIN16_FILL_G0()                                                      \
  do {                                                                        \
    MAIN16_LOAD_PAIR(0, 0, 0, vec3, vec2);                                    \
    MAIN16_MAC(acc1, vec3, vec2);                                             \
    if constexpr (MAIN16_SECTION_CELL_LANES > 1) {                            \
    MAIN16_LOAD_PAIR(0, 1, 4, vec4, vec6);                                    \
    MAIN16_MAC(acc3, vec4, vec6);                                             \
    }                                                                         \
  } while (0)

#define MAIN16_FILL_TO_STEADY_G1()                                            \
  do {                                                                        \
    MAIN16_LOAD_PAIR(1, 0, 0, vec8, vec9);                                    \
    MAIN16_MIX_HALVES(vec0, vec3, vec8);                                      \
    MAIN16_MIX_HALVES(vec10, vec2, vec9);                                     \
    MAIN16_MAC(acc1, vec0, vec10);                                            \
    vec3 = vec8;                                                              \
    vec2 = vec9;                                                              \
    if constexpr (MAIN16_SECTION_CELL_LANES > 1) {                            \
    MAIN16_LOAD_PAIR(1, 1, 4, vec8, vec9);                                    \
    MAIN16_MIX_HALVES(vec0, vec4, vec8);                                      \
    MAIN16_MIX_HALVES(vec10, vec6, vec9);                                     \
    MAIN16_MAC(acc3, vec0, vec10);                                            \
    vec4 = vec8;                                                              \
    vec6 = vec9;                                                              \
    }                                                                         \
  } while (0)

#define MAIN16_STEADY_TO_STEADY_G(GROUP)                                      \
  do {                                                                        \
    MAIN16_MAC(acc1, vec3, vec2);                                             \
    MAIN16_LOAD_PAIR((GROUP), 0, 0, vec8, vec9);                              \
    MAIN16_MIX_HALVES(vec0, vec3, vec8);                                      \
    MAIN16_MIX_HALVES(vec10, vec2, vec9);                                     \
    MAIN16_MAC(acc1, vec0, vec10);                                            \
    vec3 = vec8;                                                              \
    vec2 = vec9;                                                              \
    if constexpr (MAIN16_SECTION_CELL_LANES > 1) {                            \
    MAIN16_MAC(acc3, vec4, vec6);                                             \
    MAIN16_LOAD_PAIR((GROUP), 1, 4, vec8, vec9);                              \
    MAIN16_MIX_HALVES(vec0, vec4, vec8);                                      \
    MAIN16_MIX_HALVES(vec10, vec6, vec9);                                     \
    MAIN16_MAC(acc3, vec0, vec10);                                            \
    vec4 = vec8;                                                              \
    vec6 = vec9;                                                              \
    }                                                                         \
  } while (0)

#define MAIN16_PRE_DRAIN_G6() MAIN16_STEADY_TO_STEADY_G(6)

#define MAIN16_DRAIN_G7()                                                     \
  do {                                                                        \
    MAIN16_STEADY_TO_STEADY_G(7);                                             \
    MAIN16_MAC(acc1, vec3, vec2);                                             \
    if constexpr (MAIN16_SECTION_CELL_LANES > 1) {                            \
    MAIN16_MAC(acc3, vec4, vec6);                                             \
    }                                                                         \
  } while (0)

__attribute__((always_inline)) static inline void
store_acc_pair(const Acc32 &acc1, const Acc32 &acc3,
               bfloat16 *__restrict output) {
  aie::store_v(output, acc1.template to_vector<bfloat16>());
  aie::store_v(output + kGroupSize, acc3.template to_vector<bfloat16>());
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

  Vec32 vec0;
#if MAIN16_SECTION_CELL_PIN
  Vec32 chess_storage(x2) vec2;
  Vec32 chess_storage(x3) vec3;
  Acc32 chess_storage(dm1) acc1 = aie::zeros<accfloat, kGroupSize>();
#else
  Vec32 vec2;
  Vec32 vec3;
  Acc32 acc1 = aie::zeros<accfloat, kGroupSize>();
#endif
  Vec32 vec4;
  Vec32 vec6;
  Vec32 vec8;
  Vec32 vec9;
  Vec32 vec10;

  Acc32 acc3 = aie::zeros<accfloat, kGroupSize>();

  static_assert(MAIN16_SECTION_CELL_GROUPS >= 1 &&
                    MAIN16_SECTION_CELL_GROUPS <= 8,
                "MAIN16_SECTION_CELL_GROUPS must be in [1, 8]");

  MAIN16_FILL_G0();
  if constexpr (MAIN16_SECTION_CELL_GROUPS >= 2) {
    MAIN16_FILL_TO_STEADY_G1();
  }
  if constexpr (MAIN16_SECTION_CELL_GROUPS >= 3) {
    MAIN16_STEADY_TO_STEADY_G(2);
  }
  if constexpr (MAIN16_SECTION_CELL_GROUPS >= 4) {
    MAIN16_STEADY_TO_STEADY_G(3);
  }
  if constexpr (MAIN16_SECTION_CELL_GROUPS >= 5) {
    MAIN16_STEADY_TO_STEADY_G(4);
  }
  if constexpr (MAIN16_SECTION_CELL_GROUPS >= 6) {
    MAIN16_STEADY_TO_STEADY_G(5);
  }
  if constexpr (MAIN16_SECTION_CELL_GROUPS >= 7) {
    MAIN16_PRE_DRAIN_G6();
  }
  if constexpr (MAIN16_SECTION_CELL_GROUPS >= 8) {
    MAIN16_DRAIN_G7();
  } else if constexpr (MAIN16_SECTION_CELL_GROUPS >= 2) {
    MAIN16_MAC(acc1, vec3, vec2);
  }

  store_acc_pair(acc1, acc3, output);
}

} // extern "C"
