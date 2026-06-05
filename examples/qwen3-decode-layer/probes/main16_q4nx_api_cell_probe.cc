// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <aie_api/utils.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

#ifndef MAIN16_API_CELL_PROBE_KIND
#define MAIN16_API_CELL_PROBE_KIND 0
#endif

namespace {

using V16 = aie::vector<bfloat16, 16>;
using V32 = aie::vector<bfloat16, 32>;
using A32 = v32accfloat;

__attribute__((always_inline)) static inline V32 pack_insert(const V16 &lo,
                                                             const V16 &hi) {
  V32 v;
  v.insert(0, lo);
  v.insert(1, hi);
  return v;
}

__attribute__((always_inline)) static inline V32 pack_api_concat(const V16 &lo,
                                                                 const V16 &hi) {
  return aie::concat(lo, hi);
}

__attribute__((always_inline)) static inline v32bfloat16
pack_raw_concat(const V16 &lo, const V16 &hi) {
  return ::concat(static_cast<v16bfloat16>(lo), static_cast<v16bfloat16>(hi));
}

__attribute__((always_inline)) static inline A32
mac_insert(A32 acc, const V16 &lhs_lo, const V16 &lhs_hi, const V16 &rhs_lo,
           const V16 &rhs_hi) {
  V32 lhs = pack_insert(lhs_lo, lhs_hi);
  V32 rhs = pack_insert(rhs_lo, rhs_hi);
  return mac_elem_32_conf(static_cast<v32bfloat16>(lhs),
                          static_cast<v32bfloat16>(rhs), acc, 0, 0, 0);
}

__attribute__((always_inline)) static inline A32
mac_api_concat(A32 acc, const V16 &lhs_lo, const V16 &lhs_hi,
               const V16 &rhs_lo, const V16 &rhs_hi) {
  V32 lhs = pack_api_concat(lhs_lo, lhs_hi);
  V32 rhs = pack_api_concat(rhs_lo, rhs_hi);
  return mac_elem_32_conf(static_cast<v32bfloat16>(lhs),
                          static_cast<v32bfloat16>(rhs), acc, 0, 0, 0);
}

__attribute__((always_inline)) static inline A32
mac_raw_concat(A32 acc, const V16 &lhs_lo, const V16 &lhs_hi,
               const V16 &rhs_lo, const V16 &rhs_hi) {
  return mac_elem_32_conf(pack_raw_concat(lhs_lo, lhs_hi),
                          pack_raw_concat(rhs_lo, rhs_hi), acc, 0, 0, 0);
}

} // namespace

extern "C" {

void main16_q4nx_api_cell_probe(int32_t *__restrict a_words,
                                int32_t *__restrict b_words,
                                int32_t *__restrict out_words) {
  const bfloat16 *__restrict a = reinterpret_cast<const bfloat16 *>(a_words);
  const bfloat16 *__restrict b = reinterpret_cast<const bfloat16 *>(b_words);
  bfloat16 *__restrict out = reinterpret_cast<bfloat16 *>(out_words);

#if MAIN16_API_CELL_PROBE_KIND == 0
  v32bfloat16 av = *reinterpret_cast<const v32bfloat16 *>(a);
  v32bfloat16 bv = *reinterpret_cast<const v32bfloat16 *>(b);
  av = aie::utils::locate_in_register<0>(av);
  bv = aie::utils::locate_in_register<1>(bv);
  A32 acc = broadcast_zero_to_v32accfloat();
  acc = aie::utils::locate_in_register<0>(acc);
  acc = mac_elem_32_conf(av, bv, acc, 0, 0, 0);
#else
  V32 a0 = aie::load_v<32>(a);
  V32 b0 = aie::load_v<32>(b);
  V16 a_lo = a0.template extract<16>(0);
  V16 a_hi = a0.template extract<16>(1);
  V16 b_lo = b0.template extract<16>(0);
  V16 b_hi = b0.template extract<16>(1);
  A32 acc = broadcast_zero_to_v32accfloat();

#if MAIN16_API_CELL_PROBE_KIND == 1
  acc = mac_insert(acc, a_hi, b_lo, a_lo, b_hi);
#elif MAIN16_API_CELL_PROBE_KIND == 2
  acc = mac_api_concat(acc, a_hi, b_lo, a_lo, b_hi);
#elif MAIN16_API_CELL_PROBE_KIND == 3
  acc = mac_raw_concat(acc, a_hi, b_lo, a_lo, b_hi);
#else
#error "unsupported MAIN16_API_CELL_PROBE_KIND"
#endif
#endif

  *reinterpret_cast<v32bfloat16 *>(out) = to_v32bfloat16(acc);
}

} // extern "C"
