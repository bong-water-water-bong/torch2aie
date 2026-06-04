// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

namespace {

constexpr int kRows = 16;
constexpr int kInputVecs = 6;
constexpr int kPatternCount = 6;
constexpr int kPatternVariants = kPatternCount * kPatternCount;
constexpr int kConfVariants = 8;
constexpr int kSignVariants = 4;
constexpr int kMac32FoldVariants = 3;
constexpr int kOutputVariants =
    kPatternVariants + kConfVariants + kSignVariants + kMac32FoldVariants;

using Vec16 = aie::vector<bfloat16, kRows>;
using Vec32 = aie::vector<bfloat16, kRows * 2>;

__attribute__((always_inline)) static inline Vec16
load_vec(const bfloat16 *__restrict input, int index) {
  return aie::load_v<kRows>(input + index * kRows);
}

__attribute__((always_inline)) static inline Vec32
pack_halves(const Vec16 &lo, const Vec16 &hi) {
  Vec32 out;
  out.insert(0, lo);
  out.insert(1, hi);
  return out;
}

__attribute__((always_inline)) static inline Vec32 make_pattern(int pattern,
                                                                const Vec16 &lo,
                                                                const Vec16 &hi,
                                                                const Vec16 &zero) {
  switch (pattern) {
  case 0:
    return pack_halves(lo, zero);
  case 1:
    return pack_halves(zero, hi);
  case 2:
    return pack_halves(lo, hi);
  case 3:
    return pack_halves(hi, lo);
  case 4:
    return pack_halves(lo, lo);
  default:
    return pack_halves(hi, hi);
  }
}

__attribute__((always_inline)) static inline v16accfloat
base_acc(const Vec16 &one, const Vec16 &base) {
  return mac_elem_16_conf(static_cast<v32bfloat16>(pack_halves(one, one)),
                          static_cast<v32bfloat16>(pack_halves(base, base)),
                          broadcast_zero_to_v16accfloat(), 0, 0, 0);
}

__attribute__((always_inline)) static inline void
store_result(bfloat16 *__restrict output, int variant, v16accfloat acc) {
  *reinterpret_cast<v16bfloat16 *>(output + variant * kRows) =
      to_v16bfloat16_conf(acc, rnd_conv_even);
}

#define STORE_CONF_VARIANT(OUT, SLOT, A, B, ACC, ZERO_ACC, SUB_MUL, SUB_ACC) \
  do {                                                                       \
    v16accfloat _r = mac_elem_16_conf(                                       \
        static_cast<v32bfloat16>(A), static_cast<v32bfloat16>(B), (ACC),      \
        (ZERO_ACC), (SUB_MUL), (SUB_ACC));                                   \
    store_result((OUT), (SLOT), _r);                                         \
  } while (0)

#define STORE_SIGN_VARIANT(OUT, SLOT, A, SGN_X, B, SGN_Y, ACC)              \
  do {                                                                       \
    v16accfloat _r = mac_elem_16_conf(                                       \
        static_cast<v32bfloat16>(A), (SGN_X), static_cast<v32bfloat16>(B),    \
        (SGN_Y), (ACC), 0, 0, 0);                                            \
    store_result((OUT), (SLOT), _r);                                         \
  } while (0)

} // namespace

extern "C" {

void main16_mac_elem_matrix_i32_probe(int32_t *__restrict input_words,
                                      int32_t *__restrict output_words) {
  static_assert(kInputVecs == 6, "host fixture depends on the input layout");
  static_assert(kOutputVariants == 51, "host parser depends on variant count");
  ::aie::set_rounding(aie::rounding_mode::conv_even);

  const bfloat16 *__restrict input =
      reinterpret_cast<const bfloat16 *>(input_words);
  bfloat16 *__restrict output = reinterpret_cast<bfloat16 *>(output_words);

  Vec16 coeff_lo = load_vec(input, 0);
  Vec16 coeff_hi = load_vec(input, 1);
  Vec16 act_lo = load_vec(input, 2);
  Vec16 act_hi = load_vec(input, 3);
  Vec16 one = load_vec(input, 4);
  Vec16 base = load_vec(input, 5);
  Vec16 zero = aie::zeros<bfloat16, kRows>();

  int slot = 0;
  for (int a_pattern = 0; a_pattern < kPatternCount; ++a_pattern)
    chess_prepare_for_pipelining chess_loop_range(6, 6) {
      Vec32 a = make_pattern(a_pattern, coeff_lo, coeff_hi, zero);
      for (int b_pattern = 0; b_pattern < kPatternCount; ++b_pattern)
        chess_prepare_for_pipelining chess_loop_range(6, 6) {
          Vec32 b = make_pattern(b_pattern, act_lo, act_hi, zero);
          v16accfloat acc = mac_elem_16_conf(
              static_cast<v32bfloat16>(a), static_cast<v32bfloat16>(b),
              broadcast_zero_to_v16accfloat(), 0, 0, 0);
          store_result(output, slot, acc);
          ++slot;
        }
    }

  Vec32 pair_a = pack_halves(coeff_lo, coeff_hi);
  Vec32 pair_b = pack_halves(act_lo, act_hi);
  v16accfloat acc = base_acc(one, base);

  STORE_CONF_VARIANT(output, slot + 0, pair_a, pair_b, acc, 0, 0, 0);
  STORE_CONF_VARIANT(output, slot + 1, pair_a, pair_b, acc, 1, 0, 0);
  STORE_CONF_VARIANT(output, slot + 2, pair_a, pair_b, acc, 0, 1, 0);
  STORE_CONF_VARIANT(output, slot + 3, pair_a, pair_b, acc, 1, 1, 0);
  STORE_CONF_VARIANT(output, slot + 4, pair_a, pair_b, acc, 0, 0, 1);
  STORE_CONF_VARIANT(output, slot + 5, pair_a, pair_b, acc, 1, 0, 1);
  STORE_CONF_VARIANT(output, slot + 6, pair_a, pair_b, acc, 0, 1, 1);
  STORE_CONF_VARIANT(output, slot + 7, pair_a, pair_b, acc, 1, 1, 1);
  slot += kConfVariants;

  STORE_SIGN_VARIANT(output, slot + 0, pair_a, 0, pair_b, 0, acc);
  STORE_SIGN_VARIANT(output, slot + 1, pair_a, 1, pair_b, 0, acc);
  STORE_SIGN_VARIANT(output, slot + 2, pair_a, 0, pair_b, 1, acc);
  STORE_SIGN_VARIANT(output, slot + 3, pair_a, 1, pair_b, 1, acc);
  slot += kSignVariants;

  v32accfloat acc32 =
      mac_elem_32_conf(static_cast<v32bfloat16>(pair_a),
                       static_cast<v32bfloat16>(pair_b),
                       broadcast_zero_to_v32accfloat(), 0, 0, 0);
  v16accfloat acc32_lo = extract_v16accfloat(acc32, 0);
  v16accfloat acc32_hi = extract_v16accfloat(acc32, 1);
  store_result(output, slot + 0, acc32_lo);
  store_result(output, slot + 1, acc32_hi);
  store_result(output, slot + 2, add(acc32_lo, acc32_hi));
}

} // extern "C"
