; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-p:32:32:32:32:8-s0:512:512-a0:8:8-S512-n32:64-P1-p0:20:32:32:32:8-p1:20:32:32:32:8-p2:20:32:32:32:8-p3:20:32:32:32:8-p4:20:32:32:32:8-p5:20:32:32:32:8-p6:20:32:32:32:8-p7:20:32:32:32:8-p8:20:32:32:32:8-p9:20:32:32:32:8-p10:20:32:32:32:8-p11:20:32:32:32:8-p12:20:32:32:32:8-p13:20:32:32:32:8-p14:20:32:32:32:8-p15:20:32:32:32:8"
target triple = "aie2p"

%struct.ipd.custom_type.uint2_t = type { i2 }
%struct.ipd.custom_type.tm_byte_t = type { i8 }

@A_L2L1_0_6_cons_buff_1 = external global [32 x [16 x i72]]
@A_L2L1_0_6_cons_buff_0 = external global [32 x [16 x i72]]
@B_L2L1_6_0_cons_buff_1 = external global [128 x [12 x i72]]
@B_L2L1_6_0_cons_buff_0 = external global [128 x [12 x i72]]
@C_L1L2_6_0_buff_0 = external global [192 x [12 x i72]]

define void @core_6_2() addrspace(0) {
  br label %1

1:                                                ; preds = %28, %0
  %2 = phi i64 [ %29, %28 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %30

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_6_0_buff_0)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 54
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_6_0_buff_0)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 54
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_6_0_buff_0)
  br label %17

17:                                               ; preds = %20, %16
  %18 = phi i64 [ %21, %20 ], [ 0, %16 ]
  %19 = icmp slt i64 %18, 54
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_6_0_buff_0)
  br label %23

23:                                               ; preds = %26, %22
  %24 = phi i64 [ %27, %26 ], [ 0, %22 ]
  %25 = icmp slt i64 %24, 54
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_0, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_0, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_6_cons_buff_1, ptr @B_L2L1_6_0_cons_buff_1, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %27 = add i64 %24, 2
  br label %23

28:                                               ; preds = %23
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %29 = add i64 %2, 1
  br label %1

30:                                               ; preds = %1
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
