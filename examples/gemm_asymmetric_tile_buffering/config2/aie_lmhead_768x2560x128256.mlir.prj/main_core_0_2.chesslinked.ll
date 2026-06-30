; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-p:32:32:32:32:8-s0:512:512-a0:8:8-S512-n32:64-P1-p0:20:32:32:32:8-p1:20:32:32:32:8-p2:20:32:32:32:8-p3:20:32:32:32:8-p4:20:32:32:32:8-p5:20:32:32:32:8-p6:20:32:32:32:8-p7:20:32:32:32:8-p8:20:32:32:32:8-p9:20:32:32:32:8-p10:20:32:32:32:8-p11:20:32:32:32:8-p12:20:32:32:32:8-p13:20:32:32:32:8-p14:20:32:32:32:8-p15:20:32:32:32:8"
target triple = "aie2p"

%struct.ipd.custom_type.uint2_t = type { i2 }
%struct.ipd.custom_type.tm_byte_t = type { i8 }

@A_L2L1_0_0_cons_buff_1 = external global [32 x [16 x i72]]
@A_L2L1_0_0_cons_buff_0 = external global [32 x [16 x i72]]
@B_L2L1_0_0_cons_buff_1 = external global [128 x [12 x i72]]
@B_L2L1_0_0_cons_buff_0 = external global [128 x [12 x i72]]
@C_L1L2_0_0_buff_0 = external global [192 x [12 x i72]]

define void @core_0_2() addrspace(0) {
  br label %1

1:                                                ; preds = %1006, %0
  %2 = phi i64 [ %1007, %1006 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %1008

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 20
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 20
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %17

17:                                               ; preds = %20, %16
  %18 = phi i64 [ %21, %20 ], [ 0, %16 ]
  %19 = icmp slt i64 %18, 20
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %23

23:                                               ; preds = %26, %22
  %24 = phi i64 [ %27, %26 ], [ 0, %22 ]
  %25 = icmp slt i64 %24, 20
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %27 = add i64 %24, 2
  br label %23

28:                                               ; preds = %23
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %29

29:                                               ; preds = %32, %28
  %30 = phi i64 [ %33, %32 ], [ 0, %28 ]
  %31 = icmp slt i64 %30, 20
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %33 = add i64 %30, 2
  br label %29

34:                                               ; preds = %29
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %35

35:                                               ; preds = %38, %34
  %36 = phi i64 [ %39, %38 ], [ 0, %34 ]
  %37 = icmp slt i64 %36, 20
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %39 = add i64 %36, 2
  br label %35

40:                                               ; preds = %35
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %41

41:                                               ; preds = %44, %40
  %42 = phi i64 [ %45, %44 ], [ 0, %40 ]
  %43 = icmp slt i64 %42, 20
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %45 = add i64 %42, 2
  br label %41

46:                                               ; preds = %41
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %47

47:                                               ; preds = %50, %46
  %48 = phi i64 [ %51, %50 ], [ 0, %46 ]
  %49 = icmp slt i64 %48, 20
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %51 = add i64 %48, 2
  br label %47

52:                                               ; preds = %47
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %53

53:                                               ; preds = %56, %52
  %54 = phi i64 [ %57, %56 ], [ 0, %52 ]
  %55 = icmp slt i64 %54, 20
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %57 = add i64 %54, 2
  br label %53

58:                                               ; preds = %53
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %59

59:                                               ; preds = %62, %58
  %60 = phi i64 [ %63, %62 ], [ 0, %58 ]
  %61 = icmp slt i64 %60, 20
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %63 = add i64 %60, 2
  br label %59

64:                                               ; preds = %59
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %65

65:                                               ; preds = %68, %64
  %66 = phi i64 [ %69, %68 ], [ 0, %64 ]
  %67 = icmp slt i64 %66, 20
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %69 = add i64 %66, 2
  br label %65

70:                                               ; preds = %65
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 20
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %77

77:                                               ; preds = %80, %76
  %78 = phi i64 [ %81, %80 ], [ 0, %76 ]
  %79 = icmp slt i64 %78, 20
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %81 = add i64 %78, 2
  br label %77

82:                                               ; preds = %77
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %83

83:                                               ; preds = %86, %82
  %84 = phi i64 [ %87, %86 ], [ 0, %82 ]
  %85 = icmp slt i64 %84, 20
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %87 = add i64 %84, 2
  br label %83

88:                                               ; preds = %83
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %89

89:                                               ; preds = %92, %88
  %90 = phi i64 [ %93, %92 ], [ 0, %88 ]
  %91 = icmp slt i64 %90, 20
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %93 = add i64 %90, 2
  br label %89

94:                                               ; preds = %89
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %95

95:                                               ; preds = %98, %94
  %96 = phi i64 [ %99, %98 ], [ 0, %94 ]
  %97 = icmp slt i64 %96, 20
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %99 = add i64 %96, 2
  br label %95

100:                                              ; preds = %95
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %101

101:                                              ; preds = %104, %100
  %102 = phi i64 [ %105, %104 ], [ 0, %100 ]
  %103 = icmp slt i64 %102, 20
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %105 = add i64 %102, 2
  br label %101

106:                                              ; preds = %101
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %107

107:                                              ; preds = %110, %106
  %108 = phi i64 [ %111, %110 ], [ 0, %106 ]
  %109 = icmp slt i64 %108, 20
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %111 = add i64 %108, 2
  br label %107

112:                                              ; preds = %107
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %113

113:                                              ; preds = %116, %112
  %114 = phi i64 [ %117, %116 ], [ 0, %112 ]
  %115 = icmp slt i64 %114, 20
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %117 = add i64 %114, 2
  br label %113

118:                                              ; preds = %113
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %119

119:                                              ; preds = %122, %118
  %120 = phi i64 [ %123, %122 ], [ 0, %118 ]
  %121 = icmp slt i64 %120, 20
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %123 = add i64 %120, 2
  br label %119

124:                                              ; preds = %119
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %125

125:                                              ; preds = %128, %124
  %126 = phi i64 [ %129, %128 ], [ 0, %124 ]
  %127 = icmp slt i64 %126, 20
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %129 = add i64 %126, 2
  br label %125

130:                                              ; preds = %125
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %131

131:                                              ; preds = %134, %130
  %132 = phi i64 [ %135, %134 ], [ 0, %130 ]
  %133 = icmp slt i64 %132, 20
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %135 = add i64 %132, 2
  br label %131

136:                                              ; preds = %131
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %137

137:                                              ; preds = %140, %136
  %138 = phi i64 [ %141, %140 ], [ 0, %136 ]
  %139 = icmp slt i64 %138, 20
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %141 = add i64 %138, 2
  br label %137

142:                                              ; preds = %137
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %143

143:                                              ; preds = %146, %142
  %144 = phi i64 [ %147, %146 ], [ 0, %142 ]
  %145 = icmp slt i64 %144, 20
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %147 = add i64 %144, 2
  br label %143

148:                                              ; preds = %143
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %149

149:                                              ; preds = %152, %148
  %150 = phi i64 [ %153, %152 ], [ 0, %148 ]
  %151 = icmp slt i64 %150, 20
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %153 = add i64 %150, 2
  br label %149

154:                                              ; preds = %149
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %155

155:                                              ; preds = %158, %154
  %156 = phi i64 [ %159, %158 ], [ 0, %154 ]
  %157 = icmp slt i64 %156, 20
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %159 = add i64 %156, 2
  br label %155

160:                                              ; preds = %155
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %161

161:                                              ; preds = %164, %160
  %162 = phi i64 [ %165, %164 ], [ 0, %160 ]
  %163 = icmp slt i64 %162, 20
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %165 = add i64 %162, 2
  br label %161

166:                                              ; preds = %161
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %167

167:                                              ; preds = %170, %166
  %168 = phi i64 [ %171, %170 ], [ 0, %166 ]
  %169 = icmp slt i64 %168, 20
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %171 = add i64 %168, 2
  br label %167

172:                                              ; preds = %167
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %173

173:                                              ; preds = %176, %172
  %174 = phi i64 [ %177, %176 ], [ 0, %172 ]
  %175 = icmp slt i64 %174, 20
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %177 = add i64 %174, 2
  br label %173

178:                                              ; preds = %173
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %179

179:                                              ; preds = %182, %178
  %180 = phi i64 [ %183, %182 ], [ 0, %178 ]
  %181 = icmp slt i64 %180, 20
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %183 = add i64 %180, 2
  br label %179

184:                                              ; preds = %179
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %185

185:                                              ; preds = %188, %184
  %186 = phi i64 [ %189, %188 ], [ 0, %184 ]
  %187 = icmp slt i64 %186, 20
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %189 = add i64 %186, 2
  br label %185

190:                                              ; preds = %185
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %191

191:                                              ; preds = %194, %190
  %192 = phi i64 [ %195, %194 ], [ 0, %190 ]
  %193 = icmp slt i64 %192, 20
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %195 = add i64 %192, 2
  br label %191

196:                                              ; preds = %191
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %197

197:                                              ; preds = %200, %196
  %198 = phi i64 [ %201, %200 ], [ 0, %196 ]
  %199 = icmp slt i64 %198, 20
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %201 = add i64 %198, 2
  br label %197

202:                                              ; preds = %197
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %203

203:                                              ; preds = %206, %202
  %204 = phi i64 [ %207, %206 ], [ 0, %202 ]
  %205 = icmp slt i64 %204, 20
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %207 = add i64 %204, 2
  br label %203

208:                                              ; preds = %203
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %209

209:                                              ; preds = %212, %208
  %210 = phi i64 [ %213, %212 ], [ 0, %208 ]
  %211 = icmp slt i64 %210, 20
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %213 = add i64 %210, 2
  br label %209

214:                                              ; preds = %209
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %215

215:                                              ; preds = %218, %214
  %216 = phi i64 [ %219, %218 ], [ 0, %214 ]
  %217 = icmp slt i64 %216, 20
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %219 = add i64 %216, 2
  br label %215

220:                                              ; preds = %215
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %221

221:                                              ; preds = %224, %220
  %222 = phi i64 [ %225, %224 ], [ 0, %220 ]
  %223 = icmp slt i64 %222, 20
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %225 = add i64 %222, 2
  br label %221

226:                                              ; preds = %221
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %227

227:                                              ; preds = %230, %226
  %228 = phi i64 [ %231, %230 ], [ 0, %226 ]
  %229 = icmp slt i64 %228, 20
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %231 = add i64 %228, 2
  br label %227

232:                                              ; preds = %227
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %233

233:                                              ; preds = %236, %232
  %234 = phi i64 [ %237, %236 ], [ 0, %232 ]
  %235 = icmp slt i64 %234, 20
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %237 = add i64 %234, 2
  br label %233

238:                                              ; preds = %233
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %239

239:                                              ; preds = %242, %238
  %240 = phi i64 [ %243, %242 ], [ 0, %238 ]
  %241 = icmp slt i64 %240, 20
  br i1 %241, label %242, label %244

242:                                              ; preds = %239
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %243 = add i64 %240, 2
  br label %239

244:                                              ; preds = %239
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %245

245:                                              ; preds = %248, %244
  %246 = phi i64 [ %249, %248 ], [ 0, %244 ]
  %247 = icmp slt i64 %246, 20
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %249 = add i64 %246, 2
  br label %245

250:                                              ; preds = %245
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %251

251:                                              ; preds = %254, %250
  %252 = phi i64 [ %255, %254 ], [ 0, %250 ]
  %253 = icmp slt i64 %252, 20
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %255 = add i64 %252, 2
  br label %251

256:                                              ; preds = %251
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %257

257:                                              ; preds = %260, %256
  %258 = phi i64 [ %261, %260 ], [ 0, %256 ]
  %259 = icmp slt i64 %258, 20
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %261 = add i64 %258, 2
  br label %257

262:                                              ; preds = %257
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %263

263:                                              ; preds = %266, %262
  %264 = phi i64 [ %267, %266 ], [ 0, %262 ]
  %265 = icmp slt i64 %264, 20
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %267 = add i64 %264, 2
  br label %263

268:                                              ; preds = %263
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %269

269:                                              ; preds = %272, %268
  %270 = phi i64 [ %273, %272 ], [ 0, %268 ]
  %271 = icmp slt i64 %270, 20
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %273 = add i64 %270, 2
  br label %269

274:                                              ; preds = %269
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %275

275:                                              ; preds = %278, %274
  %276 = phi i64 [ %279, %278 ], [ 0, %274 ]
  %277 = icmp slt i64 %276, 20
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %279 = add i64 %276, 2
  br label %275

280:                                              ; preds = %275
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %281

281:                                              ; preds = %284, %280
  %282 = phi i64 [ %285, %284 ], [ 0, %280 ]
  %283 = icmp slt i64 %282, 20
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %285 = add i64 %282, 2
  br label %281

286:                                              ; preds = %281
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %287

287:                                              ; preds = %290, %286
  %288 = phi i64 [ %291, %290 ], [ 0, %286 ]
  %289 = icmp slt i64 %288, 20
  br i1 %289, label %290, label %292

290:                                              ; preds = %287
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %291 = add i64 %288, 2
  br label %287

292:                                              ; preds = %287
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %293

293:                                              ; preds = %296, %292
  %294 = phi i64 [ %297, %296 ], [ 0, %292 ]
  %295 = icmp slt i64 %294, 20
  br i1 %295, label %296, label %298

296:                                              ; preds = %293
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %297 = add i64 %294, 2
  br label %293

298:                                              ; preds = %293
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %299

299:                                              ; preds = %302, %298
  %300 = phi i64 [ %303, %302 ], [ 0, %298 ]
  %301 = icmp slt i64 %300, 20
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %303 = add i64 %300, 2
  br label %299

304:                                              ; preds = %299
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %305

305:                                              ; preds = %308, %304
  %306 = phi i64 [ %309, %308 ], [ 0, %304 ]
  %307 = icmp slt i64 %306, 20
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %309 = add i64 %306, 2
  br label %305

310:                                              ; preds = %305
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %311

311:                                              ; preds = %314, %310
  %312 = phi i64 [ %315, %314 ], [ 0, %310 ]
  %313 = icmp slt i64 %312, 20
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %315 = add i64 %312, 2
  br label %311

316:                                              ; preds = %311
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %317

317:                                              ; preds = %320, %316
  %318 = phi i64 [ %321, %320 ], [ 0, %316 ]
  %319 = icmp slt i64 %318, 20
  br i1 %319, label %320, label %322

320:                                              ; preds = %317
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %321 = add i64 %318, 2
  br label %317

322:                                              ; preds = %317
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %323

323:                                              ; preds = %326, %322
  %324 = phi i64 [ %327, %326 ], [ 0, %322 ]
  %325 = icmp slt i64 %324, 20
  br i1 %325, label %326, label %328

326:                                              ; preds = %323
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %327 = add i64 %324, 2
  br label %323

328:                                              ; preds = %323
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %329

329:                                              ; preds = %332, %328
  %330 = phi i64 [ %333, %332 ], [ 0, %328 ]
  %331 = icmp slt i64 %330, 20
  br i1 %331, label %332, label %334

332:                                              ; preds = %329
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %333 = add i64 %330, 2
  br label %329

334:                                              ; preds = %329
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %335

335:                                              ; preds = %338, %334
  %336 = phi i64 [ %339, %338 ], [ 0, %334 ]
  %337 = icmp slt i64 %336, 20
  br i1 %337, label %338, label %340

338:                                              ; preds = %335
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %339 = add i64 %336, 2
  br label %335

340:                                              ; preds = %335
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %341

341:                                              ; preds = %344, %340
  %342 = phi i64 [ %345, %344 ], [ 0, %340 ]
  %343 = icmp slt i64 %342, 20
  br i1 %343, label %344, label %346

344:                                              ; preds = %341
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %345 = add i64 %342, 2
  br label %341

346:                                              ; preds = %341
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %347

347:                                              ; preds = %350, %346
  %348 = phi i64 [ %351, %350 ], [ 0, %346 ]
  %349 = icmp slt i64 %348, 20
  br i1 %349, label %350, label %352

350:                                              ; preds = %347
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %351 = add i64 %348, 2
  br label %347

352:                                              ; preds = %347
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %353

353:                                              ; preds = %356, %352
  %354 = phi i64 [ %357, %356 ], [ 0, %352 ]
  %355 = icmp slt i64 %354, 20
  br i1 %355, label %356, label %358

356:                                              ; preds = %353
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %357 = add i64 %354, 2
  br label %353

358:                                              ; preds = %353
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %359

359:                                              ; preds = %362, %358
  %360 = phi i64 [ %363, %362 ], [ 0, %358 ]
  %361 = icmp slt i64 %360, 20
  br i1 %361, label %362, label %364

362:                                              ; preds = %359
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %363 = add i64 %360, 2
  br label %359

364:                                              ; preds = %359
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %365

365:                                              ; preds = %368, %364
  %366 = phi i64 [ %369, %368 ], [ 0, %364 ]
  %367 = icmp slt i64 %366, 20
  br i1 %367, label %368, label %370

368:                                              ; preds = %365
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %369 = add i64 %366, 2
  br label %365

370:                                              ; preds = %365
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %371

371:                                              ; preds = %374, %370
  %372 = phi i64 [ %375, %374 ], [ 0, %370 ]
  %373 = icmp slt i64 %372, 20
  br i1 %373, label %374, label %376

374:                                              ; preds = %371
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %375 = add i64 %372, 2
  br label %371

376:                                              ; preds = %371
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %377

377:                                              ; preds = %380, %376
  %378 = phi i64 [ %381, %380 ], [ 0, %376 ]
  %379 = icmp slt i64 %378, 20
  br i1 %379, label %380, label %382

380:                                              ; preds = %377
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %381 = add i64 %378, 2
  br label %377

382:                                              ; preds = %377
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %383

383:                                              ; preds = %386, %382
  %384 = phi i64 [ %387, %386 ], [ 0, %382 ]
  %385 = icmp slt i64 %384, 20
  br i1 %385, label %386, label %388

386:                                              ; preds = %383
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %387 = add i64 %384, 2
  br label %383

388:                                              ; preds = %383
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %389

389:                                              ; preds = %392, %388
  %390 = phi i64 [ %393, %392 ], [ 0, %388 ]
  %391 = icmp slt i64 %390, 20
  br i1 %391, label %392, label %394

392:                                              ; preds = %389
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %393 = add i64 %390, 2
  br label %389

394:                                              ; preds = %389
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %395

395:                                              ; preds = %398, %394
  %396 = phi i64 [ %399, %398 ], [ 0, %394 ]
  %397 = icmp slt i64 %396, 20
  br i1 %397, label %398, label %400

398:                                              ; preds = %395
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %399 = add i64 %396, 2
  br label %395

400:                                              ; preds = %395
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %401

401:                                              ; preds = %404, %400
  %402 = phi i64 [ %405, %404 ], [ 0, %400 ]
  %403 = icmp slt i64 %402, 20
  br i1 %403, label %404, label %406

404:                                              ; preds = %401
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %405 = add i64 %402, 2
  br label %401

406:                                              ; preds = %401
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %407

407:                                              ; preds = %410, %406
  %408 = phi i64 [ %411, %410 ], [ 0, %406 ]
  %409 = icmp slt i64 %408, 20
  br i1 %409, label %410, label %412

410:                                              ; preds = %407
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %411 = add i64 %408, 2
  br label %407

412:                                              ; preds = %407
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %413

413:                                              ; preds = %416, %412
  %414 = phi i64 [ %417, %416 ], [ 0, %412 ]
  %415 = icmp slt i64 %414, 20
  br i1 %415, label %416, label %418

416:                                              ; preds = %413
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %417 = add i64 %414, 2
  br label %413

418:                                              ; preds = %413
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %419

419:                                              ; preds = %422, %418
  %420 = phi i64 [ %423, %422 ], [ 0, %418 ]
  %421 = icmp slt i64 %420, 20
  br i1 %421, label %422, label %424

422:                                              ; preds = %419
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %423 = add i64 %420, 2
  br label %419

424:                                              ; preds = %419
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %425

425:                                              ; preds = %428, %424
  %426 = phi i64 [ %429, %428 ], [ 0, %424 ]
  %427 = icmp slt i64 %426, 20
  br i1 %427, label %428, label %430

428:                                              ; preds = %425
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %429 = add i64 %426, 2
  br label %425

430:                                              ; preds = %425
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %431

431:                                              ; preds = %434, %430
  %432 = phi i64 [ %435, %434 ], [ 0, %430 ]
  %433 = icmp slt i64 %432, 20
  br i1 %433, label %434, label %436

434:                                              ; preds = %431
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %435 = add i64 %432, 2
  br label %431

436:                                              ; preds = %431
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %437

437:                                              ; preds = %440, %436
  %438 = phi i64 [ %441, %440 ], [ 0, %436 ]
  %439 = icmp slt i64 %438, 20
  br i1 %439, label %440, label %442

440:                                              ; preds = %437
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %441 = add i64 %438, 2
  br label %437

442:                                              ; preds = %437
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %443

443:                                              ; preds = %446, %442
  %444 = phi i64 [ %447, %446 ], [ 0, %442 ]
  %445 = icmp slt i64 %444, 20
  br i1 %445, label %446, label %448

446:                                              ; preds = %443
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %447 = add i64 %444, 2
  br label %443

448:                                              ; preds = %443
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %449

449:                                              ; preds = %452, %448
  %450 = phi i64 [ %453, %452 ], [ 0, %448 ]
  %451 = icmp slt i64 %450, 20
  br i1 %451, label %452, label %454

452:                                              ; preds = %449
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %453 = add i64 %450, 2
  br label %449

454:                                              ; preds = %449
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %455

455:                                              ; preds = %458, %454
  %456 = phi i64 [ %459, %458 ], [ 0, %454 ]
  %457 = icmp slt i64 %456, 20
  br i1 %457, label %458, label %460

458:                                              ; preds = %455
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %459 = add i64 %456, 2
  br label %455

460:                                              ; preds = %455
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %461

461:                                              ; preds = %464, %460
  %462 = phi i64 [ %465, %464 ], [ 0, %460 ]
  %463 = icmp slt i64 %462, 20
  br i1 %463, label %464, label %466

464:                                              ; preds = %461
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %465 = add i64 %462, 2
  br label %461

466:                                              ; preds = %461
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %467

467:                                              ; preds = %470, %466
  %468 = phi i64 [ %471, %470 ], [ 0, %466 ]
  %469 = icmp slt i64 %468, 20
  br i1 %469, label %470, label %472

470:                                              ; preds = %467
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %471 = add i64 %468, 2
  br label %467

472:                                              ; preds = %467
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %473

473:                                              ; preds = %476, %472
  %474 = phi i64 [ %477, %476 ], [ 0, %472 ]
  %475 = icmp slt i64 %474, 20
  br i1 %475, label %476, label %478

476:                                              ; preds = %473
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %477 = add i64 %474, 2
  br label %473

478:                                              ; preds = %473
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %479

479:                                              ; preds = %482, %478
  %480 = phi i64 [ %483, %482 ], [ 0, %478 ]
  %481 = icmp slt i64 %480, 20
  br i1 %481, label %482, label %484

482:                                              ; preds = %479
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %483 = add i64 %480, 2
  br label %479

484:                                              ; preds = %479
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %485

485:                                              ; preds = %488, %484
  %486 = phi i64 [ %489, %488 ], [ 0, %484 ]
  %487 = icmp slt i64 %486, 20
  br i1 %487, label %488, label %490

488:                                              ; preds = %485
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %489 = add i64 %486, 2
  br label %485

490:                                              ; preds = %485
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %491

491:                                              ; preds = %494, %490
  %492 = phi i64 [ %495, %494 ], [ 0, %490 ]
  %493 = icmp slt i64 %492, 20
  br i1 %493, label %494, label %496

494:                                              ; preds = %491
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %495 = add i64 %492, 2
  br label %491

496:                                              ; preds = %491
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %497

497:                                              ; preds = %500, %496
  %498 = phi i64 [ %501, %500 ], [ 0, %496 ]
  %499 = icmp slt i64 %498, 20
  br i1 %499, label %500, label %502

500:                                              ; preds = %497
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %501 = add i64 %498, 2
  br label %497

502:                                              ; preds = %497
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %503

503:                                              ; preds = %506, %502
  %504 = phi i64 [ %507, %506 ], [ 0, %502 ]
  %505 = icmp slt i64 %504, 20
  br i1 %505, label %506, label %508

506:                                              ; preds = %503
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %507 = add i64 %504, 2
  br label %503

508:                                              ; preds = %503
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %509

509:                                              ; preds = %512, %508
  %510 = phi i64 [ %513, %512 ], [ 0, %508 ]
  %511 = icmp slt i64 %510, 20
  br i1 %511, label %512, label %514

512:                                              ; preds = %509
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %513 = add i64 %510, 2
  br label %509

514:                                              ; preds = %509
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %515

515:                                              ; preds = %518, %514
  %516 = phi i64 [ %519, %518 ], [ 0, %514 ]
  %517 = icmp slt i64 %516, 20
  br i1 %517, label %518, label %520

518:                                              ; preds = %515
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %519 = add i64 %516, 2
  br label %515

520:                                              ; preds = %515
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %521

521:                                              ; preds = %524, %520
  %522 = phi i64 [ %525, %524 ], [ 0, %520 ]
  %523 = icmp slt i64 %522, 20
  br i1 %523, label %524, label %526

524:                                              ; preds = %521
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %525 = add i64 %522, 2
  br label %521

526:                                              ; preds = %521
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %527

527:                                              ; preds = %530, %526
  %528 = phi i64 [ %531, %530 ], [ 0, %526 ]
  %529 = icmp slt i64 %528, 20
  br i1 %529, label %530, label %532

530:                                              ; preds = %527
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %531 = add i64 %528, 2
  br label %527

532:                                              ; preds = %527
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %533

533:                                              ; preds = %536, %532
  %534 = phi i64 [ %537, %536 ], [ 0, %532 ]
  %535 = icmp slt i64 %534, 20
  br i1 %535, label %536, label %538

536:                                              ; preds = %533
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %537 = add i64 %534, 2
  br label %533

538:                                              ; preds = %533
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %539

539:                                              ; preds = %542, %538
  %540 = phi i64 [ %543, %542 ], [ 0, %538 ]
  %541 = icmp slt i64 %540, 20
  br i1 %541, label %542, label %544

542:                                              ; preds = %539
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %543 = add i64 %540, 2
  br label %539

544:                                              ; preds = %539
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %545

545:                                              ; preds = %548, %544
  %546 = phi i64 [ %549, %548 ], [ 0, %544 ]
  %547 = icmp slt i64 %546, 20
  br i1 %547, label %548, label %550

548:                                              ; preds = %545
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %549 = add i64 %546, 2
  br label %545

550:                                              ; preds = %545
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %551

551:                                              ; preds = %554, %550
  %552 = phi i64 [ %555, %554 ], [ 0, %550 ]
  %553 = icmp slt i64 %552, 20
  br i1 %553, label %554, label %556

554:                                              ; preds = %551
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %555 = add i64 %552, 2
  br label %551

556:                                              ; preds = %551
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %557

557:                                              ; preds = %560, %556
  %558 = phi i64 [ %561, %560 ], [ 0, %556 ]
  %559 = icmp slt i64 %558, 20
  br i1 %559, label %560, label %562

560:                                              ; preds = %557
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %561 = add i64 %558, 2
  br label %557

562:                                              ; preds = %557
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %563

563:                                              ; preds = %566, %562
  %564 = phi i64 [ %567, %566 ], [ 0, %562 ]
  %565 = icmp slt i64 %564, 20
  br i1 %565, label %566, label %568

566:                                              ; preds = %563
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %567 = add i64 %564, 2
  br label %563

568:                                              ; preds = %563
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %569

569:                                              ; preds = %572, %568
  %570 = phi i64 [ %573, %572 ], [ 0, %568 ]
  %571 = icmp slt i64 %570, 20
  br i1 %571, label %572, label %574

572:                                              ; preds = %569
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %573 = add i64 %570, 2
  br label %569

574:                                              ; preds = %569
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %575

575:                                              ; preds = %578, %574
  %576 = phi i64 [ %579, %578 ], [ 0, %574 ]
  %577 = icmp slt i64 %576, 20
  br i1 %577, label %578, label %580

578:                                              ; preds = %575
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %579 = add i64 %576, 2
  br label %575

580:                                              ; preds = %575
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %581

581:                                              ; preds = %584, %580
  %582 = phi i64 [ %585, %584 ], [ 0, %580 ]
  %583 = icmp slt i64 %582, 20
  br i1 %583, label %584, label %586

584:                                              ; preds = %581
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %585 = add i64 %582, 2
  br label %581

586:                                              ; preds = %581
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %587

587:                                              ; preds = %590, %586
  %588 = phi i64 [ %591, %590 ], [ 0, %586 ]
  %589 = icmp slt i64 %588, 20
  br i1 %589, label %590, label %592

590:                                              ; preds = %587
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %591 = add i64 %588, 2
  br label %587

592:                                              ; preds = %587
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %593

593:                                              ; preds = %596, %592
  %594 = phi i64 [ %597, %596 ], [ 0, %592 ]
  %595 = icmp slt i64 %594, 20
  br i1 %595, label %596, label %598

596:                                              ; preds = %593
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %597 = add i64 %594, 2
  br label %593

598:                                              ; preds = %593
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %599

599:                                              ; preds = %602, %598
  %600 = phi i64 [ %603, %602 ], [ 0, %598 ]
  %601 = icmp slt i64 %600, 20
  br i1 %601, label %602, label %604

602:                                              ; preds = %599
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %603 = add i64 %600, 2
  br label %599

604:                                              ; preds = %599
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %605

605:                                              ; preds = %608, %604
  %606 = phi i64 [ %609, %608 ], [ 0, %604 ]
  %607 = icmp slt i64 %606, 20
  br i1 %607, label %608, label %610

608:                                              ; preds = %605
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %609 = add i64 %606, 2
  br label %605

610:                                              ; preds = %605
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %611

611:                                              ; preds = %614, %610
  %612 = phi i64 [ %615, %614 ], [ 0, %610 ]
  %613 = icmp slt i64 %612, 20
  br i1 %613, label %614, label %616

614:                                              ; preds = %611
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %615 = add i64 %612, 2
  br label %611

616:                                              ; preds = %611
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %617

617:                                              ; preds = %620, %616
  %618 = phi i64 [ %621, %620 ], [ 0, %616 ]
  %619 = icmp slt i64 %618, 20
  br i1 %619, label %620, label %622

620:                                              ; preds = %617
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %621 = add i64 %618, 2
  br label %617

622:                                              ; preds = %617
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %623

623:                                              ; preds = %626, %622
  %624 = phi i64 [ %627, %626 ], [ 0, %622 ]
  %625 = icmp slt i64 %624, 20
  br i1 %625, label %626, label %628

626:                                              ; preds = %623
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %627 = add i64 %624, 2
  br label %623

628:                                              ; preds = %623
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %629

629:                                              ; preds = %632, %628
  %630 = phi i64 [ %633, %632 ], [ 0, %628 ]
  %631 = icmp slt i64 %630, 20
  br i1 %631, label %632, label %634

632:                                              ; preds = %629
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %633 = add i64 %630, 2
  br label %629

634:                                              ; preds = %629
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %635

635:                                              ; preds = %638, %634
  %636 = phi i64 [ %639, %638 ], [ 0, %634 ]
  %637 = icmp slt i64 %636, 20
  br i1 %637, label %638, label %640

638:                                              ; preds = %635
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %639 = add i64 %636, 2
  br label %635

640:                                              ; preds = %635
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %641

641:                                              ; preds = %644, %640
  %642 = phi i64 [ %645, %644 ], [ 0, %640 ]
  %643 = icmp slt i64 %642, 20
  br i1 %643, label %644, label %646

644:                                              ; preds = %641
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %645 = add i64 %642, 2
  br label %641

646:                                              ; preds = %641
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %647

647:                                              ; preds = %650, %646
  %648 = phi i64 [ %651, %650 ], [ 0, %646 ]
  %649 = icmp slt i64 %648, 20
  br i1 %649, label %650, label %652

650:                                              ; preds = %647
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %651 = add i64 %648, 2
  br label %647

652:                                              ; preds = %647
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %653

653:                                              ; preds = %656, %652
  %654 = phi i64 [ %657, %656 ], [ 0, %652 ]
  %655 = icmp slt i64 %654, 20
  br i1 %655, label %656, label %658

656:                                              ; preds = %653
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %657 = add i64 %654, 2
  br label %653

658:                                              ; preds = %653
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %659

659:                                              ; preds = %662, %658
  %660 = phi i64 [ %663, %662 ], [ 0, %658 ]
  %661 = icmp slt i64 %660, 20
  br i1 %661, label %662, label %664

662:                                              ; preds = %659
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %663 = add i64 %660, 2
  br label %659

664:                                              ; preds = %659
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %665

665:                                              ; preds = %668, %664
  %666 = phi i64 [ %669, %668 ], [ 0, %664 ]
  %667 = icmp slt i64 %666, 20
  br i1 %667, label %668, label %670

668:                                              ; preds = %665
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %669 = add i64 %666, 2
  br label %665

670:                                              ; preds = %665
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %671

671:                                              ; preds = %674, %670
  %672 = phi i64 [ %675, %674 ], [ 0, %670 ]
  %673 = icmp slt i64 %672, 20
  br i1 %673, label %674, label %676

674:                                              ; preds = %671
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %675 = add i64 %672, 2
  br label %671

676:                                              ; preds = %671
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %677

677:                                              ; preds = %680, %676
  %678 = phi i64 [ %681, %680 ], [ 0, %676 ]
  %679 = icmp slt i64 %678, 20
  br i1 %679, label %680, label %682

680:                                              ; preds = %677
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %681 = add i64 %678, 2
  br label %677

682:                                              ; preds = %677
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %683

683:                                              ; preds = %686, %682
  %684 = phi i64 [ %687, %686 ], [ 0, %682 ]
  %685 = icmp slt i64 %684, 20
  br i1 %685, label %686, label %688

686:                                              ; preds = %683
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %687 = add i64 %684, 2
  br label %683

688:                                              ; preds = %683
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %689

689:                                              ; preds = %692, %688
  %690 = phi i64 [ %693, %692 ], [ 0, %688 ]
  %691 = icmp slt i64 %690, 20
  br i1 %691, label %692, label %694

692:                                              ; preds = %689
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %693 = add i64 %690, 2
  br label %689

694:                                              ; preds = %689
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %695

695:                                              ; preds = %698, %694
  %696 = phi i64 [ %699, %698 ], [ 0, %694 ]
  %697 = icmp slt i64 %696, 20
  br i1 %697, label %698, label %700

698:                                              ; preds = %695
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %699 = add i64 %696, 2
  br label %695

700:                                              ; preds = %695
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %701

701:                                              ; preds = %704, %700
  %702 = phi i64 [ %705, %704 ], [ 0, %700 ]
  %703 = icmp slt i64 %702, 20
  br i1 %703, label %704, label %706

704:                                              ; preds = %701
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %705 = add i64 %702, 2
  br label %701

706:                                              ; preds = %701
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %707

707:                                              ; preds = %710, %706
  %708 = phi i64 [ %711, %710 ], [ 0, %706 ]
  %709 = icmp slt i64 %708, 20
  br i1 %709, label %710, label %712

710:                                              ; preds = %707
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %711 = add i64 %708, 2
  br label %707

712:                                              ; preds = %707
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %713

713:                                              ; preds = %716, %712
  %714 = phi i64 [ %717, %716 ], [ 0, %712 ]
  %715 = icmp slt i64 %714, 20
  br i1 %715, label %716, label %718

716:                                              ; preds = %713
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %717 = add i64 %714, 2
  br label %713

718:                                              ; preds = %713
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %719

719:                                              ; preds = %722, %718
  %720 = phi i64 [ %723, %722 ], [ 0, %718 ]
  %721 = icmp slt i64 %720, 20
  br i1 %721, label %722, label %724

722:                                              ; preds = %719
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %723 = add i64 %720, 2
  br label %719

724:                                              ; preds = %719
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %725

725:                                              ; preds = %728, %724
  %726 = phi i64 [ %729, %728 ], [ 0, %724 ]
  %727 = icmp slt i64 %726, 20
  br i1 %727, label %728, label %730

728:                                              ; preds = %725
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %729 = add i64 %726, 2
  br label %725

730:                                              ; preds = %725
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %731

731:                                              ; preds = %734, %730
  %732 = phi i64 [ %735, %734 ], [ 0, %730 ]
  %733 = icmp slt i64 %732, 20
  br i1 %733, label %734, label %736

734:                                              ; preds = %731
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %735 = add i64 %732, 2
  br label %731

736:                                              ; preds = %731
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %737

737:                                              ; preds = %740, %736
  %738 = phi i64 [ %741, %740 ], [ 0, %736 ]
  %739 = icmp slt i64 %738, 20
  br i1 %739, label %740, label %742

740:                                              ; preds = %737
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %741 = add i64 %738, 2
  br label %737

742:                                              ; preds = %737
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %743

743:                                              ; preds = %746, %742
  %744 = phi i64 [ %747, %746 ], [ 0, %742 ]
  %745 = icmp slt i64 %744, 20
  br i1 %745, label %746, label %748

746:                                              ; preds = %743
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %747 = add i64 %744, 2
  br label %743

748:                                              ; preds = %743
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %749

749:                                              ; preds = %752, %748
  %750 = phi i64 [ %753, %752 ], [ 0, %748 ]
  %751 = icmp slt i64 %750, 20
  br i1 %751, label %752, label %754

752:                                              ; preds = %749
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %753 = add i64 %750, 2
  br label %749

754:                                              ; preds = %749
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %755

755:                                              ; preds = %758, %754
  %756 = phi i64 [ %759, %758 ], [ 0, %754 ]
  %757 = icmp slt i64 %756, 20
  br i1 %757, label %758, label %760

758:                                              ; preds = %755
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %759 = add i64 %756, 2
  br label %755

760:                                              ; preds = %755
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %761

761:                                              ; preds = %764, %760
  %762 = phi i64 [ %765, %764 ], [ 0, %760 ]
  %763 = icmp slt i64 %762, 20
  br i1 %763, label %764, label %766

764:                                              ; preds = %761
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %765 = add i64 %762, 2
  br label %761

766:                                              ; preds = %761
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %767

767:                                              ; preds = %770, %766
  %768 = phi i64 [ %771, %770 ], [ 0, %766 ]
  %769 = icmp slt i64 %768, 20
  br i1 %769, label %770, label %772

770:                                              ; preds = %767
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %771 = add i64 %768, 2
  br label %767

772:                                              ; preds = %767
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %773

773:                                              ; preds = %776, %772
  %774 = phi i64 [ %777, %776 ], [ 0, %772 ]
  %775 = icmp slt i64 %774, 20
  br i1 %775, label %776, label %778

776:                                              ; preds = %773
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %777 = add i64 %774, 2
  br label %773

778:                                              ; preds = %773
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %779

779:                                              ; preds = %782, %778
  %780 = phi i64 [ %783, %782 ], [ 0, %778 ]
  %781 = icmp slt i64 %780, 20
  br i1 %781, label %782, label %784

782:                                              ; preds = %779
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %783 = add i64 %780, 2
  br label %779

784:                                              ; preds = %779
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %785

785:                                              ; preds = %788, %784
  %786 = phi i64 [ %789, %788 ], [ 0, %784 ]
  %787 = icmp slt i64 %786, 20
  br i1 %787, label %788, label %790

788:                                              ; preds = %785
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %789 = add i64 %786, 2
  br label %785

790:                                              ; preds = %785
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %791

791:                                              ; preds = %794, %790
  %792 = phi i64 [ %795, %794 ], [ 0, %790 ]
  %793 = icmp slt i64 %792, 20
  br i1 %793, label %794, label %796

794:                                              ; preds = %791
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %795 = add i64 %792, 2
  br label %791

796:                                              ; preds = %791
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %797

797:                                              ; preds = %800, %796
  %798 = phi i64 [ %801, %800 ], [ 0, %796 ]
  %799 = icmp slt i64 %798, 20
  br i1 %799, label %800, label %802

800:                                              ; preds = %797
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %801 = add i64 %798, 2
  br label %797

802:                                              ; preds = %797
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %803

803:                                              ; preds = %806, %802
  %804 = phi i64 [ %807, %806 ], [ 0, %802 ]
  %805 = icmp slt i64 %804, 20
  br i1 %805, label %806, label %808

806:                                              ; preds = %803
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %807 = add i64 %804, 2
  br label %803

808:                                              ; preds = %803
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %809

809:                                              ; preds = %812, %808
  %810 = phi i64 [ %813, %812 ], [ 0, %808 ]
  %811 = icmp slt i64 %810, 20
  br i1 %811, label %812, label %814

812:                                              ; preds = %809
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %813 = add i64 %810, 2
  br label %809

814:                                              ; preds = %809
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %815

815:                                              ; preds = %818, %814
  %816 = phi i64 [ %819, %818 ], [ 0, %814 ]
  %817 = icmp slt i64 %816, 20
  br i1 %817, label %818, label %820

818:                                              ; preds = %815
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %819 = add i64 %816, 2
  br label %815

820:                                              ; preds = %815
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %821

821:                                              ; preds = %824, %820
  %822 = phi i64 [ %825, %824 ], [ 0, %820 ]
  %823 = icmp slt i64 %822, 20
  br i1 %823, label %824, label %826

824:                                              ; preds = %821
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %825 = add i64 %822, 2
  br label %821

826:                                              ; preds = %821
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %827

827:                                              ; preds = %830, %826
  %828 = phi i64 [ %831, %830 ], [ 0, %826 ]
  %829 = icmp slt i64 %828, 20
  br i1 %829, label %830, label %832

830:                                              ; preds = %827
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %831 = add i64 %828, 2
  br label %827

832:                                              ; preds = %827
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %833

833:                                              ; preds = %836, %832
  %834 = phi i64 [ %837, %836 ], [ 0, %832 ]
  %835 = icmp slt i64 %834, 20
  br i1 %835, label %836, label %838

836:                                              ; preds = %833
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %837 = add i64 %834, 2
  br label %833

838:                                              ; preds = %833
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %839

839:                                              ; preds = %842, %838
  %840 = phi i64 [ %843, %842 ], [ 0, %838 ]
  %841 = icmp slt i64 %840, 20
  br i1 %841, label %842, label %844

842:                                              ; preds = %839
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %843 = add i64 %840, 2
  br label %839

844:                                              ; preds = %839
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %845

845:                                              ; preds = %848, %844
  %846 = phi i64 [ %849, %848 ], [ 0, %844 ]
  %847 = icmp slt i64 %846, 20
  br i1 %847, label %848, label %850

848:                                              ; preds = %845
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %849 = add i64 %846, 2
  br label %845

850:                                              ; preds = %845
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %851

851:                                              ; preds = %854, %850
  %852 = phi i64 [ %855, %854 ], [ 0, %850 ]
  %853 = icmp slt i64 %852, 20
  br i1 %853, label %854, label %856

854:                                              ; preds = %851
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %855 = add i64 %852, 2
  br label %851

856:                                              ; preds = %851
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %857

857:                                              ; preds = %860, %856
  %858 = phi i64 [ %861, %860 ], [ 0, %856 ]
  %859 = icmp slt i64 %858, 20
  br i1 %859, label %860, label %862

860:                                              ; preds = %857
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %861 = add i64 %858, 2
  br label %857

862:                                              ; preds = %857
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %863

863:                                              ; preds = %866, %862
  %864 = phi i64 [ %867, %866 ], [ 0, %862 ]
  %865 = icmp slt i64 %864, 20
  br i1 %865, label %866, label %868

866:                                              ; preds = %863
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %867 = add i64 %864, 2
  br label %863

868:                                              ; preds = %863
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %869

869:                                              ; preds = %872, %868
  %870 = phi i64 [ %873, %872 ], [ 0, %868 ]
  %871 = icmp slt i64 %870, 20
  br i1 %871, label %872, label %874

872:                                              ; preds = %869
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %873 = add i64 %870, 2
  br label %869

874:                                              ; preds = %869
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %875

875:                                              ; preds = %878, %874
  %876 = phi i64 [ %879, %878 ], [ 0, %874 ]
  %877 = icmp slt i64 %876, 20
  br i1 %877, label %878, label %880

878:                                              ; preds = %875
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %879 = add i64 %876, 2
  br label %875

880:                                              ; preds = %875
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %881

881:                                              ; preds = %884, %880
  %882 = phi i64 [ %885, %884 ], [ 0, %880 ]
  %883 = icmp slt i64 %882, 20
  br i1 %883, label %884, label %886

884:                                              ; preds = %881
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %885 = add i64 %882, 2
  br label %881

886:                                              ; preds = %881
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %887

887:                                              ; preds = %890, %886
  %888 = phi i64 [ %891, %890 ], [ 0, %886 ]
  %889 = icmp slt i64 %888, 20
  br i1 %889, label %890, label %892

890:                                              ; preds = %887
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %891 = add i64 %888, 2
  br label %887

892:                                              ; preds = %887
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %893

893:                                              ; preds = %896, %892
  %894 = phi i64 [ %897, %896 ], [ 0, %892 ]
  %895 = icmp slt i64 %894, 20
  br i1 %895, label %896, label %898

896:                                              ; preds = %893
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %897 = add i64 %894, 2
  br label %893

898:                                              ; preds = %893
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %899

899:                                              ; preds = %902, %898
  %900 = phi i64 [ %903, %902 ], [ 0, %898 ]
  %901 = icmp slt i64 %900, 20
  br i1 %901, label %902, label %904

902:                                              ; preds = %899
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %903 = add i64 %900, 2
  br label %899

904:                                              ; preds = %899
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %905

905:                                              ; preds = %908, %904
  %906 = phi i64 [ %909, %908 ], [ 0, %904 ]
  %907 = icmp slt i64 %906, 20
  br i1 %907, label %908, label %910

908:                                              ; preds = %905
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %909 = add i64 %906, 2
  br label %905

910:                                              ; preds = %905
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %911

911:                                              ; preds = %914, %910
  %912 = phi i64 [ %915, %914 ], [ 0, %910 ]
  %913 = icmp slt i64 %912, 20
  br i1 %913, label %914, label %916

914:                                              ; preds = %911
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %915 = add i64 %912, 2
  br label %911

916:                                              ; preds = %911
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %917

917:                                              ; preds = %920, %916
  %918 = phi i64 [ %921, %920 ], [ 0, %916 ]
  %919 = icmp slt i64 %918, 20
  br i1 %919, label %920, label %922

920:                                              ; preds = %917
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %921 = add i64 %918, 2
  br label %917

922:                                              ; preds = %917
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %923

923:                                              ; preds = %926, %922
  %924 = phi i64 [ %927, %926 ], [ 0, %922 ]
  %925 = icmp slt i64 %924, 20
  br i1 %925, label %926, label %928

926:                                              ; preds = %923
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %927 = add i64 %924, 2
  br label %923

928:                                              ; preds = %923
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %929

929:                                              ; preds = %932, %928
  %930 = phi i64 [ %933, %932 ], [ 0, %928 ]
  %931 = icmp slt i64 %930, 20
  br i1 %931, label %932, label %934

932:                                              ; preds = %929
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %933 = add i64 %930, 2
  br label %929

934:                                              ; preds = %929
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %935

935:                                              ; preds = %938, %934
  %936 = phi i64 [ %939, %938 ], [ 0, %934 ]
  %937 = icmp slt i64 %936, 20
  br i1 %937, label %938, label %940

938:                                              ; preds = %935
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %939 = add i64 %936, 2
  br label %935

940:                                              ; preds = %935
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %941

941:                                              ; preds = %944, %940
  %942 = phi i64 [ %945, %944 ], [ 0, %940 ]
  %943 = icmp slt i64 %942, 20
  br i1 %943, label %944, label %946

944:                                              ; preds = %941
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %945 = add i64 %942, 2
  br label %941

946:                                              ; preds = %941
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %947

947:                                              ; preds = %950, %946
  %948 = phi i64 [ %951, %950 ], [ 0, %946 ]
  %949 = icmp slt i64 %948, 20
  br i1 %949, label %950, label %952

950:                                              ; preds = %947
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %951 = add i64 %948, 2
  br label %947

952:                                              ; preds = %947
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %953

953:                                              ; preds = %956, %952
  %954 = phi i64 [ %957, %956 ], [ 0, %952 ]
  %955 = icmp slt i64 %954, 20
  br i1 %955, label %956, label %958

956:                                              ; preds = %953
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %957 = add i64 %954, 2
  br label %953

958:                                              ; preds = %953
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %959

959:                                              ; preds = %962, %958
  %960 = phi i64 [ %963, %962 ], [ 0, %958 ]
  %961 = icmp slt i64 %960, 20
  br i1 %961, label %962, label %964

962:                                              ; preds = %959
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %963 = add i64 %960, 2
  br label %959

964:                                              ; preds = %959
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %965

965:                                              ; preds = %968, %964
  %966 = phi i64 [ %969, %968 ], [ 0, %964 ]
  %967 = icmp slt i64 %966, 20
  br i1 %967, label %968, label %970

968:                                              ; preds = %965
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %969 = add i64 %966, 2
  br label %965

970:                                              ; preds = %965
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %971

971:                                              ; preds = %974, %970
  %972 = phi i64 [ %975, %974 ], [ 0, %970 ]
  %973 = icmp slt i64 %972, 20
  br i1 %973, label %974, label %976

974:                                              ; preds = %971
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %975 = add i64 %972, 2
  br label %971

976:                                              ; preds = %971
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %977

977:                                              ; preds = %980, %976
  %978 = phi i64 [ %981, %980 ], [ 0, %976 ]
  %979 = icmp slt i64 %978, 20
  br i1 %979, label %980, label %982

980:                                              ; preds = %977
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %981 = add i64 %978, 2
  br label %977

982:                                              ; preds = %977
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %983

983:                                              ; preds = %986, %982
  %984 = phi i64 [ %987, %986 ], [ 0, %982 ]
  %985 = icmp slt i64 %984, 20
  br i1 %985, label %986, label %988

986:                                              ; preds = %983
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %987 = add i64 %984, 2
  br label %983

988:                                              ; preds = %983
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %989

989:                                              ; preds = %992, %988
  %990 = phi i64 [ %993, %992 ], [ 0, %988 ]
  %991 = icmp slt i64 %990, 20
  br i1 %991, label %992, label %994

992:                                              ; preds = %989
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %993 = add i64 %990, 2
  br label %989

994:                                              ; preds = %989
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %995

995:                                              ; preds = %998, %994
  %996 = phi i64 [ %999, %998 ], [ 0, %994 ]
  %997 = icmp slt i64 %996, 20
  br i1 %997, label %998, label %1000

998:                                              ; preds = %995
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %999 = add i64 %996, 2
  br label %995

1000:                                             ; preds = %995
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_0_0_buff_0)
  br label %1001

1001:                                             ; preds = %1004, %1000
  %1002 = phi i64 [ %1005, %1004 ], [ 0, %1000 ]
  %1003 = icmp slt i64 %1002, 20
  br i1 %1003, label %1004, label %1006

1004:                                             ; preds = %1001
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  call addrspace(0) void @matmul_vectorized_bfp16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %1005 = add i64 %1002, 2
  br label %1001

1006:                                             ; preds = %1001
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %1007 = add i64 %2, 1
  br label %1

1008:                                             ; preds = %1
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
