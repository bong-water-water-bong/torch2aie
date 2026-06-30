//===- mm_bf16.cc ------------------------------------------------*- C++ -*-===//
//
// Pure BF16 × BF16 matrix multiply tile kernel for AIE2P (NPU5).
// Uses native mmul<bfloat16, bfloat16> intrinsics.
//
// L1 tile layout (matching MLIR generator):
//   A: 32×64 = m_tile/4 × k_tile  (4 micro-tiles per row, 8 rows per micro-tile, 8 cols)
//   B: 64×128 = k_tile × n_tile
//   C: 128×128 = m_tile × n_tile
//
//===----------------------------------------------------------------------===//

#include <aie_api/aie.hpp>

// Global counter for loop
unsigned long long g_counter = 0;

// Micro-tile: 8×8×4 BF16 (mmul unit)
// A tile (L1): 32 rows × 64 cols = 4 row-groups × (8 micro-tile rows), 8 col-groups × (8 micro-tile cols)
// B tile (L1): 64 rows × 128 cols = 8 row-groups × (8 micro-tile rows), 32 col-groups × (4 micro-tile cols)
// C tile (L1): 128 rows × 128 cols = 16 row-groups × (8 micro-tile rows), 32 col-groups × (4 micro-tile cols)

// The kernel processes A as row-groups of 8 rows, each spanning all 64 cols.
// B provides column-groups of 4 cols × 8 rows.
// C accumulates full 128×128 tile.

void matmul_vectorized_bf16_impl(const bfloat16 *__restrict pA,
                                  const bfloat16 *__restrict pB,
                                  bfloat16 *__restrict pC) {
    constexpr unsigned am = 32, ak = 64;  // A tile dims
    constexpr unsigned bm = 64, bn = 128; // B tile dims
    constexpr unsigned cm = 128, cn = 128; // C tile dims
    constexpr unsigned r = 8, s = 8, t = 4; // micro-tile dims

    using mmul = aie::mmul<r, s, t, bfloat16, bfloat16>;

    // C is divided into 16 row-groups (128/8) and 32 col-groups (128/4)
    // Process 2 row-groups at a time (ping-pong through C)
    for (unsigned z = 0; z < cm / r; z += 2) {
        bfloat16 *__restrict pC1 = pC + z * r * cn;
        bfloat16 *__restrict pC2 = pC + (z + 1) * r * cn;

        mmul acc1, acc2;

        // K dimension: iterate through all 8 groups of 8
        // A contributes 8 rows × 64 cols per row-group
        // B contributes 64 rows × 4 cols per col-group
        for (unsigned i = 0; i < 1; ++i) {
            // For now, single K pass (full 64 cols of A, full 64 rows of B)
            // A row-group z: 8 rows of 64 cols
            const bfloat16 *__restrict pA1 = pA + z * r * ak;
            const bfloat16 *__restrict pA2 = pA + (z + 1) * r * ak;

            aie::vector<bfloat16, r * s> A1 =
                aie::load_v<r * s>(pA1);
            aie::vector<bfloat16, r * s> A2 =
                aie::load_v<r * s>(pA2);

            // B: 64 rows × 128 cols, start at first micro-tile col
            aie::vector<bfloat16, s * t> B =
                aie::load_v<s * t>(pB);

            acc1.mul(A1, B);
            acc2.mul(A2, B);
        }

        aie::store_v(pC1, acc1.template to_vector<bfloat16>());
        aie::store_v(pC2, acc2.template to_vector<bfloat16>());
    }
}

void zero_kernel_bf16_impl(bfloat16 *__restrict pC) {
#pragma unroll\    for (unsigned i = 0; i < 128 * 128; ++i) {
        pC[i] = 0.0f;
    }
}

// C-linkage wrappers (fixed 32×64×128 A/B/C L1 tile)
extern "C" {

void matmul_vectorized_bf16(const bfloat16 *__restrict pA,
                              const bfloat16 *__restrict pB,
                              bfloat16 *__restrict pC) {
    matmul_vectorized_bf16_impl(pA, pB, pC);
}

void zero_kernel_bf16(bfloat16 *__restrict pC) {
    zero_kernel_bf16_impl(pC);
}

} // extern "C"
