; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-p:32:32:32:32:8-s0:512:512-a0:8:8-S512-n32:64-P1-p0:20:32:32:32:8-p1:20:32:32:32:8-p2:20:32:32:32:8-p3:20:32:32:32:8-p4:20:32:32:32:8-p5:20:32:32:32:8-p6:20:32:32:32:8-p7:20:32:32:32:8-p8:20:32:32:32:8-p9:20:32:32:32:8-p10:20:32:32:32:8-p11:20:32:32:32:8-p12:20:32:32:32:8-p13:20:32:32:32:8-p14:20:32:32:32:8-p15:20:32:32:32:8"
target triple = "aie2p"

%struct.ipd.custom_type.uint2_t = type { i2 }
%struct.ipd.custom_type.tm_byte_t = type { i8 }

@A_L2L1_0_5_cons_buff_1 = external global [32 x [16 x i72]]
@A_L2L1_0_5_cons_buff_0 = external global [32 x [16 x i72]]
@B_L2L1_5_0_cons_buff_1 = external global [128 x [12 x i72]]
@B_L2L1_5_0_cons_buff_0 = external global [128 x [12 x i72]]
@C_L1L2_5_0_buff_0 = external global [192 x [12 x i72]]

define void @core_5_2() addrspace(0) {
  br label %1

1:                                                ; preds = %196, %0
  %2 = phi i64 [ %197, %196 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %198

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 20
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 20
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %17

17:                                               ; preds = %20, %16
  %18 = phi i64 [ %21, %20 ], [ 0, %16 ]
  %19 = icmp slt i64 %18, 20
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %23

23:                                               ; preds = %26, %22
  %24 = phi i64 [ %27, %26 ], [ 0, %22 ]
  %25 = icmp slt i64 %24, 20
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %27 = add i64 %24, 2
  br label %23

28:                                               ; preds = %23
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %29

29:                                               ; preds = %32, %28
  %30 = phi i64 [ %33, %32 ], [ 0, %28 ]
  %31 = icmp slt i64 %30, 20
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %33 = add i64 %30, 2
  br label %29

34:                                               ; preds = %29
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %35

35:                                               ; preds = %38, %34
  %36 = phi i64 [ %39, %38 ], [ 0, %34 ]
  %37 = icmp slt i64 %36, 20
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %39 = add i64 %36, 2
  br label %35

40:                                               ; preds = %35
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %41

41:                                               ; preds = %44, %40
  %42 = phi i64 [ %45, %44 ], [ 0, %40 ]
  %43 = icmp slt i64 %42, 20
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %45 = add i64 %42, 2
  br label %41

46:                                               ; preds = %41
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %47

47:                                               ; preds = %50, %46
  %48 = phi i64 [ %51, %50 ], [ 0, %46 ]
  %49 = icmp slt i64 %48, 20
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %51 = add i64 %48, 2
  br label %47

52:                                               ; preds = %47
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %53

53:                                               ; preds = %56, %52
  %54 = phi i64 [ %57, %56 ], [ 0, %52 ]
  %55 = icmp slt i64 %54, 20
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %57 = add i64 %54, 2
  br label %53

58:                                               ; preds = %53
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %59

59:                                               ; preds = %62, %58
  %60 = phi i64 [ %63, %62 ], [ 0, %58 ]
  %61 = icmp slt i64 %60, 20
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %63 = add i64 %60, 2
  br label %59

64:                                               ; preds = %59
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %65

65:                                               ; preds = %68, %64
  %66 = phi i64 [ %69, %68 ], [ 0, %64 ]
  %67 = icmp slt i64 %66, 20
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %69 = add i64 %66, 2
  br label %65

70:                                               ; preds = %65
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 20
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %77

77:                                               ; preds = %80, %76
  %78 = phi i64 [ %81, %80 ], [ 0, %76 ]
  %79 = icmp slt i64 %78, 20
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %81 = add i64 %78, 2
  br label %77

82:                                               ; preds = %77
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %83

83:                                               ; preds = %86, %82
  %84 = phi i64 [ %87, %86 ], [ 0, %82 ]
  %85 = icmp slt i64 %84, 20
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %87 = add i64 %84, 2
  br label %83

88:                                               ; preds = %83
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %89

89:                                               ; preds = %92, %88
  %90 = phi i64 [ %93, %92 ], [ 0, %88 ]
  %91 = icmp slt i64 %90, 20
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %93 = add i64 %90, 2
  br label %89

94:                                               ; preds = %89
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %95

95:                                               ; preds = %98, %94
  %96 = phi i64 [ %99, %98 ], [ 0, %94 ]
  %97 = icmp slt i64 %96, 20
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %99 = add i64 %96, 2
  br label %95

100:                                              ; preds = %95
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %101

101:                                              ; preds = %104, %100
  %102 = phi i64 [ %105, %104 ], [ 0, %100 ]
  %103 = icmp slt i64 %102, 20
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %105 = add i64 %102, 2
  br label %101

106:                                              ; preds = %101
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %107

107:                                              ; preds = %110, %106
  %108 = phi i64 [ %111, %110 ], [ 0, %106 ]
  %109 = icmp slt i64 %108, 20
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %111 = add i64 %108, 2
  br label %107

112:                                              ; preds = %107
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %113

113:                                              ; preds = %116, %112
  %114 = phi i64 [ %117, %116 ], [ 0, %112 ]
  %115 = icmp slt i64 %114, 20
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %117 = add i64 %114, 2
  br label %113

118:                                              ; preds = %113
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %119

119:                                              ; preds = %122, %118
  %120 = phi i64 [ %123, %122 ], [ 0, %118 ]
  %121 = icmp slt i64 %120, 20
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %123 = add i64 %120, 2
  br label %119

124:                                              ; preds = %119
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %125

125:                                              ; preds = %128, %124
  %126 = phi i64 [ %129, %128 ], [ 0, %124 ]
  %127 = icmp slt i64 %126, 20
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %129 = add i64 %126, 2
  br label %125

130:                                              ; preds = %125
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %131

131:                                              ; preds = %134, %130
  %132 = phi i64 [ %135, %134 ], [ 0, %130 ]
  %133 = icmp slt i64 %132, 20
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %135 = add i64 %132, 2
  br label %131

136:                                              ; preds = %131
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %137

137:                                              ; preds = %140, %136
  %138 = phi i64 [ %141, %140 ], [ 0, %136 ]
  %139 = icmp slt i64 %138, 20
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %141 = add i64 %138, 2
  br label %137

142:                                              ; preds = %137
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %143

143:                                              ; preds = %146, %142
  %144 = phi i64 [ %147, %146 ], [ 0, %142 ]
  %145 = icmp slt i64 %144, 20
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %147 = add i64 %144, 2
  br label %143

148:                                              ; preds = %143
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %149

149:                                              ; preds = %152, %148
  %150 = phi i64 [ %153, %152 ], [ 0, %148 ]
  %151 = icmp slt i64 %150, 20
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %153 = add i64 %150, 2
  br label %149

154:                                              ; preds = %149
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %155

155:                                              ; preds = %158, %154
  %156 = phi i64 [ %159, %158 ], [ 0, %154 ]
  %157 = icmp slt i64 %156, 20
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %159 = add i64 %156, 2
  br label %155

160:                                              ; preds = %155
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %161

161:                                              ; preds = %164, %160
  %162 = phi i64 [ %165, %164 ], [ 0, %160 ]
  %163 = icmp slt i64 %162, 20
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %165 = add i64 %162, 2
  br label %161

166:                                              ; preds = %161
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %167

167:                                              ; preds = %170, %166
  %168 = phi i64 [ %171, %170 ], [ 0, %166 ]
  %169 = icmp slt i64 %168, 20
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %171 = add i64 %168, 2
  br label %167

172:                                              ; preds = %167
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %173

173:                                              ; preds = %176, %172
  %174 = phi i64 [ %177, %176 ], [ 0, %172 ]
  %175 = icmp slt i64 %174, 20
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %177 = add i64 %174, 2
  br label %173

178:                                              ; preds = %173
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %179

179:                                              ; preds = %182, %178
  %180 = phi i64 [ %183, %182 ], [ 0, %178 ]
  %181 = icmp slt i64 %180, 20
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %183 = add i64 %180, 2
  br label %179

184:                                              ; preds = %179
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %185

185:                                              ; preds = %188, %184
  %186 = phi i64 [ %189, %188 ], [ 0, %184 ]
  %187 = icmp slt i64 %186, 20
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %189 = add i64 %186, 2
  br label %185

190:                                              ; preds = %185
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_5_0_buff_0)
  br label %191

191:                                              ; preds = %194, %190
  %192 = phi i64 [ %195, %194 ], [ 0, %190 ]
  %193 = icmp slt i64 %192, 20
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_0, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_0, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_5_cons_buff_1, ptr @B_L2L1_5_0_cons_buff_1, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %195 = add i64 %192, 2
  br label %191

196:                                              ; preds = %191
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %197 = add i64 %2, 1
  br label %1

198:                                              ; preds = %1
  ret void
}

declare void @llvm.aie2p.acquire(i32, i32) addrspace(0)

declare void @zero_kernel(ptr) addrspace(0)

declare void @matmul_vectorized_bfp16(ptr, ptr, ptr) addrspace(0)

declare void @llvm.aie2p.release(i32, i32) addrspace(0)

; Function Attrs: mustprogress nounwind
define dso_local void @llvm___aie2p___acquire(i32 noundef %0, i32 noundef %1) local_unnamed_addr addrspace(1) #0 {
  tail call addrspace(1) void @llvm.chess_memory_fence()
  tail call addrspace(1) void @_Z25chess_separator_schedulerv() #4
  tail call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_acquire_guarded___uint___uint(i32 zeroext %0, i32 zeroext %1) #4
  tail call addrspace(1) void @_Z25chess_separator_schedulerv() #4
  tail call addrspace(1) void @llvm.chess_memory_fence()
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.chess_memory_fence() addrspace(1) #1

; Function Attrs: nounwind memory(inaccessiblemem: readwrite)
declare dso_local void @_Z25chess_separator_schedulerv() local_unnamed_addr addrspace(1) #2

; Function Attrs: nounwind memory(inaccessiblemem: readwrite)
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_acquire_guarded___uint___uint(i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #2

; Function Attrs: mustprogress nounwind
define dso_local void @llvm___aie2p___release(i32 noundef %0, i32 noundef %1) local_unnamed_addr addrspace(1) #0 {
  tail call addrspace(1) void @llvm.chess_memory_fence()
  tail call addrspace(1) void @_Z25chess_separator_schedulerv() #4
  tail call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_release_guarded___uint___sint(i32 zeroext %0, i32 signext %1) #4
  tail call addrspace(1) void @_Z25chess_separator_schedulerv() #4
  tail call addrspace(1) void @llvm.chess_memory_fence()
  ret void
}

; Function Attrs: nounwind memory(inaccessiblemem: readwrite)
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_release_guarded___uint___sint(i32 zeroext, i32 signext) local_unnamed_addr addrspace(1) #2

; Function Attrs: mustprogress nounwind memory(inaccessiblemem: readwrite)
define dso_local void @llvm___aie___event0() local_unnamed_addr addrspace(1) #3 {
  tail call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t zeroinitializer) #4
  ret void
}

; Function Attrs: nounwind memory(inaccessiblemem: readwrite)
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t) local_unnamed_addr addrspace(1) #2

; Function Attrs: mustprogress nounwind memory(inaccessiblemem: readwrite)
define dso_local void @llvm___aie___event1() local_unnamed_addr addrspace(1) #3 {
  tail call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t { i2 1 }) #4
  ret void
}

attributes #0 = { mustprogress nounwind "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nounwind willreturn }
attributes #2 = { nounwind memory(inaccessiblemem: readwrite) "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { mustprogress nounwind memory(inaccessiblemem: readwrite) "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { nounwind memory(inaccessiblemem: readwrite) "no-builtin-memcpy" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.linker.options = !{}
!llvm.chess.memory-units = !{!3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{i32 0, i8 undef}
!4 = !{i32 2, i8 undef}
!5 = !{i32 3, i8 undef}
!6 = !{i32 4, i8 undef}
!7 = !{i32 5, i8 undef}
!8 = !{i32 6, i8 undef}
!9 = !{i32 7, i8 undef}
!10 = !{i32 8, i8 undef}
!11 = !{i32 9, i8 undef}
!12 = !{i32 10, i8 undef}
!13 = !{i32 11, i8 undef}
!14 = !{i32 12, i8 undef}
!15 = !{i32 13, i8 undef}
!16 = !{i32 14, i8 undef}
!17 = !{i32 15, %struct.ipd.custom_type.tm_byte_t undef}
!18 = !{!"clang version 18.1.6 (/u/sgasip/ipd/repositories/llvm_ipd fe2f26b1fab3e45d6b25a43594b7f26e123552bd)"}
