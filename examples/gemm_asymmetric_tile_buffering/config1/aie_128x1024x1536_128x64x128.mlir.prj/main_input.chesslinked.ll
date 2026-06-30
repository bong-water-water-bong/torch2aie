; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-p:32:32:32:32:8-s0:512:512-a0:8:8-S512-n32:64-P1-p0:20:32:32:32:8-p1:20:32:32:32:8-p2:20:32:32:32:8-p3:20:32:32:32:8-p4:20:32:32:32:8-p5:20:32:32:32:8-p6:20:32:32:32:8-p7:20:32:32:32:8-p8:20:32:32:32:8-p9:20:32:32:32:8-p10:20:32:32:32:8-p11:20:32:32:32:8-p12:20:32:32:32:8-p13:20:32:32:32:8-p14:20:32:32:32:8-p15:20:32:32:32:8"
target triple = "aie2p"

%struct.ipd.custom_type.uint2_t = type { i2 }
%struct.ipd.custom_type.tm_byte_t = type { i8 }

@_anonymous11 = external global [3 x i32]
@_anonymous10 = external global [3 x i32]
@_anonymous9 = external global [3 x i32]
@_anonymous8 = external global [3 x i32]
@_anonymous7 = external global [3 x i32]
@_anonymous6 = external global [3 x i32]
@_anonymous5 = external global [3 x i32]
@_anonymous4 = external global [3 x i32]
@_anonymous3 = external global [3 x i32]
@_anonymous2 = external global [3 x i32]
@_anonymous1 = external global [3 x i32]
@_anonymous0 = external global [3 x i32]
@A_L2L1_0_11_cons_buff_1 = external global [32 x [64 x bfloat]]
@A_L2L1_0_11_cons_buff_0 = external global [32 x [64 x bfloat]]
@A_L2L1_0_10_cons_buff_1 = external global [32 x [64 x bfloat]]
@A_L2L1_0_10_cons_buff_0 = external global [32 x [64 x bfloat]]
@A_L2L1_0_9_cons_buff_1 = external global [32 x [64 x bfloat]]
@A_L2L1_0_9_cons_buff_0 = external global [32 x [64 x bfloat]]
@A_L2L1_0_8_cons_buff_1 = external global [32 x [64 x bfloat]]
@A_L2L1_0_8_cons_buff_0 = external global [32 x [64 x bfloat]]
@A_L2L1_0_7_cons_buff_1 = external global [32 x [64 x bfloat]]
@A_L2L1_0_7_cons_buff_0 = external global [32 x [64 x bfloat]]
@A_L2L1_0_6_cons_buff_1 = external global [32 x [64 x bfloat]]
@A_L2L1_0_6_cons_buff_0 = external global [32 x [64 x bfloat]]
@A_L2L1_0_5_cons_buff_1 = external global [32 x [64 x bfloat]]
@A_L2L1_0_5_cons_buff_0 = external global [32 x [64 x bfloat]]
@A_L2L1_0_4_cons_buff_1 = external global [32 x [64 x bfloat]]
@A_L2L1_0_4_cons_buff_0 = external global [32 x [64 x bfloat]]
@A_L2L1_0_3_cons_buff_1 = external global [32 x [64 x bfloat]]
@A_L2L1_0_3_cons_buff_0 = external global [32 x [64 x bfloat]]
@A_L2L1_0_2_cons_buff_1 = external global [32 x [64 x bfloat]]
@A_L2L1_0_2_cons_buff_0 = external global [32 x [64 x bfloat]]
@A_L2L1_0_1_cons_buff_1 = external global [32 x [64 x bfloat]]
@A_L2L1_0_1_cons_buff_0 = external global [32 x [64 x bfloat]]
@A_L2L1_0_0_cons_buff_1 = external global [32 x [64 x bfloat]]
@A_L2L1_0_0_cons_buff_0 = external global [32 x [64 x bfloat]]
@B_L2L1_0_cons_buff_1 = external global [64 x [16 x i72]]
@B_L2L1_0_cons_buff_0 = external global [64 x [16 x i72]]
@B_L2L1_1_cons_buff_1 = external global [64 x [16 x i72]]
@B_L2L1_1_cons_buff_0 = external global [64 x [16 x i72]]
@B_L2L1_2_cons_buff_1 = external global [64 x [16 x i72]]
@B_L2L1_2_cons_buff_0 = external global [64 x [16 x i72]]
@B_L2L1_3_cons_buff_1 = external global [64 x [16 x i72]]
@B_L2L1_3_cons_buff_0 = external global [64 x [16 x i72]]
@B_L2L1_4_cons_buff_1 = external global [64 x [16 x i72]]
@B_L2L1_4_cons_buff_0 = external global [64 x [16 x i72]]
@B_L2L1_5_cons_buff_1 = external global [64 x [16 x i72]]
@B_L2L1_5_cons_buff_0 = external global [64 x [16 x i72]]
@B_L2L1_6_cons_buff_1 = external global [64 x [16 x i72]]
@B_L2L1_6_cons_buff_0 = external global [64 x [16 x i72]]
@B_L2L1_7_cons_buff_1 = external global [64 x [16 x i72]]
@B_L2L1_7_cons_buff_0 = external global [64 x [16 x i72]]
@B_L2L1_8_cons_buff_1 = external global [64 x [16 x i72]]
@B_L2L1_8_cons_buff_0 = external global [64 x [16 x i72]]
@B_L2L1_9_cons_buff_1 = external global [64 x [16 x i72]]
@B_L2L1_9_cons_buff_0 = external global [64 x [16 x i72]]
@B_L2L1_10_cons_buff_1 = external global [64 x [16 x i72]]
@B_L2L1_10_cons_buff_0 = external global [64 x [16 x i72]]
@B_L2L1_11_cons_buff_1 = external global [64 x [16 x i72]]
@B_L2L1_11_cons_buff_0 = external global [64 x [16 x i72]]
@C_L1L2_0_0_buff_0 = external global [128 x [128 x bfloat]]
@C_L1L2_1_0_buff_0 = external global [128 x [128 x bfloat]]
@C_L1L2_2_0_buff_0 = external global [128 x [128 x bfloat]]
@C_L1L2_3_0_buff_0 = external global [128 x [128 x bfloat]]
@C_L1L2_4_0_buff_0 = external global [128 x [128 x bfloat]]
@C_L1L2_5_0_buff_0 = external global [128 x [128 x bfloat]]
@C_L1L2_6_0_buff_0 = external global [128 x [128 x bfloat]]
@C_L1L2_7_0_buff_0 = external global [128 x [128 x bfloat]]
@C_L1L2_8_0_buff_0 = external global [128 x [128 x bfloat]]
@C_L1L2_9_0_buff_0 = external global [128 x [128 x bfloat]]
@C_L1L2_10_0_buff_0 = external global [128 x [128 x bfloat]]
@C_L1L2_11_0_buff_0 = external global [128 x [128 x bfloat]]

define void @core_11_2() addrspace(0) {
  store i32 0, ptr @_anonymous11, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 4), align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 8), align 4
  br label %1

1:                                                ; preds = %70, %0
  %2 = phi i64 [ %75, %70 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %76

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel_bf16(ptr @C_L1L2_11_0_buff_0)
  br label %5

5:                                                ; preds = %56, %4
  %6 = phi i64 [ %69, %56 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %70

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 4), align 4
  %10 = sext i32 %9 to i64
  switch i64 %10, label %11 [
    i64 0, label %11
    i64 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_11_cons_buff_1, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_11_cons_buff_0, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %11 ]
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %15 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 8), align 4
  %16 = sext i32 %15 to i64
  switch i64 %16, label %17 [
    i64 0, label %17
    i64 1, label %18
  ]

17:                                               ; preds = %13, %13
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_11_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %18 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_11_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %17 ]
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, 1
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %21, ptr %22, ptr @C_L1L2_11_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %23 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 8), align 4
  %24 = add i32 %23, 1
  %25 = icmp sge i32 %24, 2
  %26 = add i32 %23, -1
  %27 = select i1 %25, i32 %26, i32 %24
  store i32 %27, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %28 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 8), align 4
  %29 = sext i32 %28 to i64
  switch i64 %29, label %30 [
    i64 0, label %30
    i64 1, label %31
  ]

30:                                               ; preds = %19, %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_11_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %31 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_11_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %30 ]
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %34, ptr %22, ptr @C_L1L2_11_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %35 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 8), align 4
  %36 = add i32 %35, 1
  %37 = icmp sge i32 %36, 2
  %38 = add i32 %35, -1
  %39 = select i1 %37, i32 %38, i32 %36
  store i32 %39, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %40 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 8), align 4
  %41 = sext i32 %40 to i64
  switch i64 %41, label %42 [
    i64 0, label %42
    i64 1, label %43
  ]

42:                                               ; preds = %32, %32
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_11_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %43 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_11_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %42 ]
  %46 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %46, ptr %22, ptr @C_L1L2_11_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 8), align 4
  %48 = add i32 %47, 1
  %49 = icmp sge i32 %48, 2
  %50 = add i32 %47, -1
  %51 = select i1 %49, i32 %50, i32 %48
  store i32 %51, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %52 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 8), align 4
  %53 = sext i32 %52 to i64
  switch i64 %53, label %54 [
    i64 0, label %54
    i64 1, label %55
  ]

54:                                               ; preds = %44, %44
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_11_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %55 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_11_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %54 ]
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %58, ptr %22, ptr @C_L1L2_11_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %59 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 8), align 4
  %60 = add i32 %59, 1
  %61 = icmp sge i32 %60, 2
  %62 = add i32 %59, -1
  %63 = select i1 %61, i32 %62, i32 %60
  store i32 %63, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %64 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 4), align 4
  %65 = add i32 %64, 1
  %66 = icmp sge i32 %65, 2
  %67 = add i32 %64, -1
  %68 = select i1 %66, i32 %67, i32 %65
  store i32 %68, ptr getelementptr inbounds (i8, ptr @_anonymous11, i64 4), align 4
  %69 = add i64 %6, 1
  br label %5

70:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %71 = load i32, ptr @_anonymous11, align 4
  %72 = add i32 %71, 1
  %73 = icmp sge i32 %72, 1
  %74 = select i1 %73, i32 %71, i32 %72
  store i32 %74, ptr @_anonymous11, align 4
  %75 = add i64 %2, 1
  br label %1

76:                                               ; preds = %1
  ret void
}

declare void @llvm.aie2p.acquire(i32, i32) addrspace(0)

declare void @zero_kernel_bf16(ptr) addrspace(0)

declare void @matmul_vectorized_different_datatypes(ptr, ptr, ptr) addrspace(0)

declare void @llvm.aie2p.release(i32, i32) addrspace(0)

define void @core_10_2() addrspace(0) {
  store i32 0, ptr @_anonymous10, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 4), align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 8), align 4
  br label %1

1:                                                ; preds = %70, %0
  %2 = phi i64 [ %75, %70 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %76

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel_bf16(ptr @C_L1L2_10_0_buff_0)
  br label %5

5:                                                ; preds = %56, %4
  %6 = phi i64 [ %69, %56 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %70

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 4), align 4
  %10 = sext i32 %9 to i64
  switch i64 %10, label %11 [
    i64 0, label %11
    i64 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_10_cons_buff_1, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_10_cons_buff_0, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %11 ]
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %15 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 8), align 4
  %16 = sext i32 %15 to i64
  switch i64 %16, label %17 [
    i64 0, label %17
    i64 1, label %18
  ]

17:                                               ; preds = %13, %13
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_10_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %18 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_10_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %17 ]
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, 1
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %21, ptr %22, ptr @C_L1L2_10_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %23 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 8), align 4
  %24 = add i32 %23, 1
  %25 = icmp sge i32 %24, 2
  %26 = add i32 %23, -1
  %27 = select i1 %25, i32 %26, i32 %24
  store i32 %27, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %28 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 8), align 4
  %29 = sext i32 %28 to i64
  switch i64 %29, label %30 [
    i64 0, label %30
    i64 1, label %31
  ]

30:                                               ; preds = %19, %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_10_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %31 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_10_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %30 ]
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %34, ptr %22, ptr @C_L1L2_10_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %35 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 8), align 4
  %36 = add i32 %35, 1
  %37 = icmp sge i32 %36, 2
  %38 = add i32 %35, -1
  %39 = select i1 %37, i32 %38, i32 %36
  store i32 %39, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %40 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 8), align 4
  %41 = sext i32 %40 to i64
  switch i64 %41, label %42 [
    i64 0, label %42
    i64 1, label %43
  ]

42:                                               ; preds = %32, %32
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_10_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %43 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_10_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %42 ]
  %46 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %46, ptr %22, ptr @C_L1L2_10_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 8), align 4
  %48 = add i32 %47, 1
  %49 = icmp sge i32 %48, 2
  %50 = add i32 %47, -1
  %51 = select i1 %49, i32 %50, i32 %48
  store i32 %51, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %52 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 8), align 4
  %53 = sext i32 %52 to i64
  switch i64 %53, label %54 [
    i64 0, label %54
    i64 1, label %55
  ]

54:                                               ; preds = %44, %44
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_10_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %55 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_10_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %54 ]
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %58, ptr %22, ptr @C_L1L2_10_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %59 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 8), align 4
  %60 = add i32 %59, 1
  %61 = icmp sge i32 %60, 2
  %62 = add i32 %59, -1
  %63 = select i1 %61, i32 %62, i32 %60
  store i32 %63, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %64 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 4), align 4
  %65 = add i32 %64, 1
  %66 = icmp sge i32 %65, 2
  %67 = add i32 %64, -1
  %68 = select i1 %66, i32 %67, i32 %65
  store i32 %68, ptr getelementptr inbounds (i8, ptr @_anonymous10, i64 4), align 4
  %69 = add i64 %6, 1
  br label %5

70:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %71 = load i32, ptr @_anonymous10, align 4
  %72 = add i32 %71, 1
  %73 = icmp sge i32 %72, 1
  %74 = select i1 %73, i32 %71, i32 %72
  store i32 %74, ptr @_anonymous10, align 4
  %75 = add i64 %2, 1
  br label %1

76:                                               ; preds = %1
  ret void
}

define void @core_9_2() addrspace(0) {
  store i32 0, ptr @_anonymous9, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 4), align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 8), align 4
  br label %1

1:                                                ; preds = %70, %0
  %2 = phi i64 [ %75, %70 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %76

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel_bf16(ptr @C_L1L2_9_0_buff_0)
  br label %5

5:                                                ; preds = %56, %4
  %6 = phi i64 [ %69, %56 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %70

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 4), align 4
  %10 = sext i32 %9 to i64
  switch i64 %10, label %11 [
    i64 0, label %11
    i64 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_9_cons_buff_1, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_9_cons_buff_0, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %11 ]
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %15 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 8), align 4
  %16 = sext i32 %15 to i64
  switch i64 %16, label %17 [
    i64 0, label %17
    i64 1, label %18
  ]

17:                                               ; preds = %13, %13
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_9_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %18 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_9_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %17 ]
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, 1
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %21, ptr %22, ptr @C_L1L2_9_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %23 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 8), align 4
  %24 = add i32 %23, 1
  %25 = icmp sge i32 %24, 2
  %26 = add i32 %23, -1
  %27 = select i1 %25, i32 %26, i32 %24
  store i32 %27, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %28 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 8), align 4
  %29 = sext i32 %28 to i64
  switch i64 %29, label %30 [
    i64 0, label %30
    i64 1, label %31
  ]

30:                                               ; preds = %19, %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_9_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %31 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_9_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %30 ]
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %34, ptr %22, ptr @C_L1L2_9_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %35 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 8), align 4
  %36 = add i32 %35, 1
  %37 = icmp sge i32 %36, 2
  %38 = add i32 %35, -1
  %39 = select i1 %37, i32 %38, i32 %36
  store i32 %39, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %40 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 8), align 4
  %41 = sext i32 %40 to i64
  switch i64 %41, label %42 [
    i64 0, label %42
    i64 1, label %43
  ]

42:                                               ; preds = %32, %32
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_9_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %43 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_9_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %42 ]
  %46 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %46, ptr %22, ptr @C_L1L2_9_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 8), align 4
  %48 = add i32 %47, 1
  %49 = icmp sge i32 %48, 2
  %50 = add i32 %47, -1
  %51 = select i1 %49, i32 %50, i32 %48
  store i32 %51, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %52 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 8), align 4
  %53 = sext i32 %52 to i64
  switch i64 %53, label %54 [
    i64 0, label %54
    i64 1, label %55
  ]

54:                                               ; preds = %44, %44
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_9_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %55 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_9_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %54 ]
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %58, ptr %22, ptr @C_L1L2_9_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %59 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 8), align 4
  %60 = add i32 %59, 1
  %61 = icmp sge i32 %60, 2
  %62 = add i32 %59, -1
  %63 = select i1 %61, i32 %62, i32 %60
  store i32 %63, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %64 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 4), align 4
  %65 = add i32 %64, 1
  %66 = icmp sge i32 %65, 2
  %67 = add i32 %64, -1
  %68 = select i1 %66, i32 %67, i32 %65
  store i32 %68, ptr getelementptr inbounds (i8, ptr @_anonymous9, i64 4), align 4
  %69 = add i64 %6, 1
  br label %5

70:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %71 = load i32, ptr @_anonymous9, align 4
  %72 = add i32 %71, 1
  %73 = icmp sge i32 %72, 1
  %74 = select i1 %73, i32 %71, i32 %72
  store i32 %74, ptr @_anonymous9, align 4
  %75 = add i64 %2, 1
  br label %1

76:                                               ; preds = %1
  ret void
}

define void @core_8_2() addrspace(0) {
  store i32 0, ptr @_anonymous8, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 4), align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 8), align 4
  br label %1

1:                                                ; preds = %70, %0
  %2 = phi i64 [ %75, %70 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %76

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel_bf16(ptr @C_L1L2_8_0_buff_0)
  br label %5

5:                                                ; preds = %56, %4
  %6 = phi i64 [ %69, %56 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %70

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 4), align 4
  %10 = sext i32 %9 to i64
  switch i64 %10, label %11 [
    i64 0, label %11
    i64 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_8_cons_buff_1, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_8_cons_buff_0, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %11 ]
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %15 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 8), align 4
  %16 = sext i32 %15 to i64
  switch i64 %16, label %17 [
    i64 0, label %17
    i64 1, label %18
  ]

17:                                               ; preds = %13, %13
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_8_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %18 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_8_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %17 ]
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, 1
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %21, ptr %22, ptr @C_L1L2_8_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %23 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 8), align 4
  %24 = add i32 %23, 1
  %25 = icmp sge i32 %24, 2
  %26 = add i32 %23, -1
  %27 = select i1 %25, i32 %26, i32 %24
  store i32 %27, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %28 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 8), align 4
  %29 = sext i32 %28 to i64
  switch i64 %29, label %30 [
    i64 0, label %30
    i64 1, label %31
  ]

30:                                               ; preds = %19, %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_8_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %31 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_8_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %30 ]
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %34, ptr %22, ptr @C_L1L2_8_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %35 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 8), align 4
  %36 = add i32 %35, 1
  %37 = icmp sge i32 %36, 2
  %38 = add i32 %35, -1
  %39 = select i1 %37, i32 %38, i32 %36
  store i32 %39, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %40 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 8), align 4
  %41 = sext i32 %40 to i64
  switch i64 %41, label %42 [
    i64 0, label %42
    i64 1, label %43
  ]

42:                                               ; preds = %32, %32
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_8_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %43 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_8_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %42 ]
  %46 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %46, ptr %22, ptr @C_L1L2_8_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 8), align 4
  %48 = add i32 %47, 1
  %49 = icmp sge i32 %48, 2
  %50 = add i32 %47, -1
  %51 = select i1 %49, i32 %50, i32 %48
  store i32 %51, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %52 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 8), align 4
  %53 = sext i32 %52 to i64
  switch i64 %53, label %54 [
    i64 0, label %54
    i64 1, label %55
  ]

54:                                               ; preds = %44, %44
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_8_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %55 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_8_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %54 ]
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %58, ptr %22, ptr @C_L1L2_8_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %59 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 8), align 4
  %60 = add i32 %59, 1
  %61 = icmp sge i32 %60, 2
  %62 = add i32 %59, -1
  %63 = select i1 %61, i32 %62, i32 %60
  store i32 %63, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %64 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 4), align 4
  %65 = add i32 %64, 1
  %66 = icmp sge i32 %65, 2
  %67 = add i32 %64, -1
  %68 = select i1 %66, i32 %67, i32 %65
  store i32 %68, ptr getelementptr inbounds (i8, ptr @_anonymous8, i64 4), align 4
  %69 = add i64 %6, 1
  br label %5

70:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %71 = load i32, ptr @_anonymous8, align 4
  %72 = add i32 %71, 1
  %73 = icmp sge i32 %72, 1
  %74 = select i1 %73, i32 %71, i32 %72
  store i32 %74, ptr @_anonymous8, align 4
  %75 = add i64 %2, 1
  br label %1

76:                                               ; preds = %1
  ret void
}

define void @core_7_2() addrspace(0) {
  store i32 0, ptr @_anonymous7, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 4), align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 8), align 4
  br label %1

1:                                                ; preds = %70, %0
  %2 = phi i64 [ %75, %70 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %76

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel_bf16(ptr @C_L1L2_7_0_buff_0)
  br label %5

5:                                                ; preds = %56, %4
  %6 = phi i64 [ %69, %56 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %70

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 4), align 4
  %10 = sext i32 %9 to i64
  switch i64 %10, label %11 [
    i64 0, label %11
    i64 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_7_cons_buff_1, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_7_cons_buff_0, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %11 ]
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %15 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 8), align 4
  %16 = sext i32 %15 to i64
  switch i64 %16, label %17 [
    i64 0, label %17
    i64 1, label %18
  ]

17:                                               ; preds = %13, %13
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_7_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %18 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_7_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %17 ]
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, 1
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %21, ptr %22, ptr @C_L1L2_7_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %23 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 8), align 4
  %24 = add i32 %23, 1
  %25 = icmp sge i32 %24, 2
  %26 = add i32 %23, -1
  %27 = select i1 %25, i32 %26, i32 %24
  store i32 %27, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %28 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 8), align 4
  %29 = sext i32 %28 to i64
  switch i64 %29, label %30 [
    i64 0, label %30
    i64 1, label %31
  ]

30:                                               ; preds = %19, %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_7_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %31 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_7_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %30 ]
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %34, ptr %22, ptr @C_L1L2_7_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %35 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 8), align 4
  %36 = add i32 %35, 1
  %37 = icmp sge i32 %36, 2
  %38 = add i32 %35, -1
  %39 = select i1 %37, i32 %38, i32 %36
  store i32 %39, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %40 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 8), align 4
  %41 = sext i32 %40 to i64
  switch i64 %41, label %42 [
    i64 0, label %42
    i64 1, label %43
  ]

42:                                               ; preds = %32, %32
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_7_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %43 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_7_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %42 ]
  %46 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %46, ptr %22, ptr @C_L1L2_7_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 8), align 4
  %48 = add i32 %47, 1
  %49 = icmp sge i32 %48, 2
  %50 = add i32 %47, -1
  %51 = select i1 %49, i32 %50, i32 %48
  store i32 %51, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %52 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 8), align 4
  %53 = sext i32 %52 to i64
  switch i64 %53, label %54 [
    i64 0, label %54
    i64 1, label %55
  ]

54:                                               ; preds = %44, %44
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_7_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %55 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_7_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %54 ]
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %58, ptr %22, ptr @C_L1L2_7_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %59 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 8), align 4
  %60 = add i32 %59, 1
  %61 = icmp sge i32 %60, 2
  %62 = add i32 %59, -1
  %63 = select i1 %61, i32 %62, i32 %60
  store i32 %63, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %64 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 4), align 4
  %65 = add i32 %64, 1
  %66 = icmp sge i32 %65, 2
  %67 = add i32 %64, -1
  %68 = select i1 %66, i32 %67, i32 %65
  store i32 %68, ptr getelementptr inbounds (i8, ptr @_anonymous7, i64 4), align 4
  %69 = add i64 %6, 1
  br label %5

70:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %71 = load i32, ptr @_anonymous7, align 4
  %72 = add i32 %71, 1
  %73 = icmp sge i32 %72, 1
  %74 = select i1 %73, i32 %71, i32 %72
  store i32 %74, ptr @_anonymous7, align 4
  %75 = add i64 %2, 1
  br label %1

76:                                               ; preds = %1
  ret void
}

define void @core_6_2() addrspace(0) {
  store i32 0, ptr @_anonymous6, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 4), align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 8), align 4
  br label %1

1:                                                ; preds = %70, %0
  %2 = phi i64 [ %75, %70 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %76

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel_bf16(ptr @C_L1L2_6_0_buff_0)
  br label %5

5:                                                ; preds = %56, %4
  %6 = phi i64 [ %69, %56 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %70

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 4), align 4
  %10 = sext i32 %9 to i64
  switch i64 %10, label %11 [
    i64 0, label %11
    i64 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_6_cons_buff_1, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_6_cons_buff_0, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %11 ]
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %15 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 8), align 4
  %16 = sext i32 %15 to i64
  switch i64 %16, label %17 [
    i64 0, label %17
    i64 1, label %18
  ]

17:                                               ; preds = %13, %13
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_6_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %18 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_6_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %17 ]
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, 1
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %21, ptr %22, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %23 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 8), align 4
  %24 = add i32 %23, 1
  %25 = icmp sge i32 %24, 2
  %26 = add i32 %23, -1
  %27 = select i1 %25, i32 %26, i32 %24
  store i32 %27, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %28 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 8), align 4
  %29 = sext i32 %28 to i64
  switch i64 %29, label %30 [
    i64 0, label %30
    i64 1, label %31
  ]

30:                                               ; preds = %19, %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_6_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %31 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_6_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %30 ]
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %34, ptr %22, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %35 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 8), align 4
  %36 = add i32 %35, 1
  %37 = icmp sge i32 %36, 2
  %38 = add i32 %35, -1
  %39 = select i1 %37, i32 %38, i32 %36
  store i32 %39, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %40 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 8), align 4
  %41 = sext i32 %40 to i64
  switch i64 %41, label %42 [
    i64 0, label %42
    i64 1, label %43
  ]

42:                                               ; preds = %32, %32
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_6_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %43 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_6_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %42 ]
  %46 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %46, ptr %22, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 8), align 4
  %48 = add i32 %47, 1
  %49 = icmp sge i32 %48, 2
  %50 = add i32 %47, -1
  %51 = select i1 %49, i32 %50, i32 %48
  store i32 %51, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %52 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 8), align 4
  %53 = sext i32 %52 to i64
  switch i64 %53, label %54 [
    i64 0, label %54
    i64 1, label %55
  ]

54:                                               ; preds = %44, %44
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_6_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %55 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_6_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %54 ]
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %58, ptr %22, ptr @C_L1L2_6_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %59 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 8), align 4
  %60 = add i32 %59, 1
  %61 = icmp sge i32 %60, 2
  %62 = add i32 %59, -1
  %63 = select i1 %61, i32 %62, i32 %60
  store i32 %63, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %64 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 4), align 4
  %65 = add i32 %64, 1
  %66 = icmp sge i32 %65, 2
  %67 = add i32 %64, -1
  %68 = select i1 %66, i32 %67, i32 %65
  store i32 %68, ptr getelementptr inbounds (i8, ptr @_anonymous6, i64 4), align 4
  %69 = add i64 %6, 1
  br label %5

70:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %71 = load i32, ptr @_anonymous6, align 4
  %72 = add i32 %71, 1
  %73 = icmp sge i32 %72, 1
  %74 = select i1 %73, i32 %71, i32 %72
  store i32 %74, ptr @_anonymous6, align 4
  %75 = add i64 %2, 1
  br label %1

76:                                               ; preds = %1
  ret void
}

define void @core_5_2() addrspace(0) {
  store i32 0, ptr @_anonymous5, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 4), align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 8), align 4
  br label %1

1:                                                ; preds = %70, %0
  %2 = phi i64 [ %75, %70 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %76

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel_bf16(ptr @C_L1L2_5_0_buff_0)
  br label %5

5:                                                ; preds = %56, %4
  %6 = phi i64 [ %69, %56 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %70

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 4), align 4
  %10 = sext i32 %9 to i64
  switch i64 %10, label %11 [
    i64 0, label %11
    i64 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_5_cons_buff_1, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_5_cons_buff_0, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %11 ]
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %15 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 8), align 4
  %16 = sext i32 %15 to i64
  switch i64 %16, label %17 [
    i64 0, label %17
    i64 1, label %18
  ]

17:                                               ; preds = %13, %13
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_5_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %18 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_5_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %17 ]
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, 1
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %21, ptr %22, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %23 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 8), align 4
  %24 = add i32 %23, 1
  %25 = icmp sge i32 %24, 2
  %26 = add i32 %23, -1
  %27 = select i1 %25, i32 %26, i32 %24
  store i32 %27, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %28 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 8), align 4
  %29 = sext i32 %28 to i64
  switch i64 %29, label %30 [
    i64 0, label %30
    i64 1, label %31
  ]

30:                                               ; preds = %19, %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_5_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %31 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_5_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %30 ]
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %34, ptr %22, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %35 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 8), align 4
  %36 = add i32 %35, 1
  %37 = icmp sge i32 %36, 2
  %38 = add i32 %35, -1
  %39 = select i1 %37, i32 %38, i32 %36
  store i32 %39, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %40 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 8), align 4
  %41 = sext i32 %40 to i64
  switch i64 %41, label %42 [
    i64 0, label %42
    i64 1, label %43
  ]

42:                                               ; preds = %32, %32
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_5_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %43 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_5_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %42 ]
  %46 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %46, ptr %22, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 8), align 4
  %48 = add i32 %47, 1
  %49 = icmp sge i32 %48, 2
  %50 = add i32 %47, -1
  %51 = select i1 %49, i32 %50, i32 %48
  store i32 %51, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %52 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 8), align 4
  %53 = sext i32 %52 to i64
  switch i64 %53, label %54 [
    i64 0, label %54
    i64 1, label %55
  ]

54:                                               ; preds = %44, %44
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_5_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %55 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_5_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %54 ]
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %58, ptr %22, ptr @C_L1L2_5_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %59 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 8), align 4
  %60 = add i32 %59, 1
  %61 = icmp sge i32 %60, 2
  %62 = add i32 %59, -1
  %63 = select i1 %61, i32 %62, i32 %60
  store i32 %63, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %64 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 4), align 4
  %65 = add i32 %64, 1
  %66 = icmp sge i32 %65, 2
  %67 = add i32 %64, -1
  %68 = select i1 %66, i32 %67, i32 %65
  store i32 %68, ptr getelementptr inbounds (i8, ptr @_anonymous5, i64 4), align 4
  %69 = add i64 %6, 1
  br label %5

70:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %71 = load i32, ptr @_anonymous5, align 4
  %72 = add i32 %71, 1
  %73 = icmp sge i32 %72, 1
  %74 = select i1 %73, i32 %71, i32 %72
  store i32 %74, ptr @_anonymous5, align 4
  %75 = add i64 %2, 1
  br label %1

76:                                               ; preds = %1
  ret void
}

define void @core_4_2() addrspace(0) {
  store i32 0, ptr @_anonymous4, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 4), align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 8), align 4
  br label %1

1:                                                ; preds = %70, %0
  %2 = phi i64 [ %75, %70 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %76

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel_bf16(ptr @C_L1L2_4_0_buff_0)
  br label %5

5:                                                ; preds = %56, %4
  %6 = phi i64 [ %69, %56 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %70

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 4), align 4
  %10 = sext i32 %9 to i64
  switch i64 %10, label %11 [
    i64 0, label %11
    i64 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_4_cons_buff_1, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_4_cons_buff_0, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %11 ]
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %15 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 8), align 4
  %16 = sext i32 %15 to i64
  switch i64 %16, label %17 [
    i64 0, label %17
    i64 1, label %18
  ]

17:                                               ; preds = %13, %13
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_4_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %18 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_4_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %17 ]
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, 1
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %21, ptr %22, ptr @C_L1L2_4_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %23 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 8), align 4
  %24 = add i32 %23, 1
  %25 = icmp sge i32 %24, 2
  %26 = add i32 %23, -1
  %27 = select i1 %25, i32 %26, i32 %24
  store i32 %27, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %28 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 8), align 4
  %29 = sext i32 %28 to i64
  switch i64 %29, label %30 [
    i64 0, label %30
    i64 1, label %31
  ]

30:                                               ; preds = %19, %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_4_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %31 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_4_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %30 ]
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %34, ptr %22, ptr @C_L1L2_4_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %35 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 8), align 4
  %36 = add i32 %35, 1
  %37 = icmp sge i32 %36, 2
  %38 = add i32 %35, -1
  %39 = select i1 %37, i32 %38, i32 %36
  store i32 %39, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %40 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 8), align 4
  %41 = sext i32 %40 to i64
  switch i64 %41, label %42 [
    i64 0, label %42
    i64 1, label %43
  ]

42:                                               ; preds = %32, %32
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_4_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %43 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_4_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %42 ]
  %46 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %46, ptr %22, ptr @C_L1L2_4_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 8), align 4
  %48 = add i32 %47, 1
  %49 = icmp sge i32 %48, 2
  %50 = add i32 %47, -1
  %51 = select i1 %49, i32 %50, i32 %48
  store i32 %51, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %52 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 8), align 4
  %53 = sext i32 %52 to i64
  switch i64 %53, label %54 [
    i64 0, label %54
    i64 1, label %55
  ]

54:                                               ; preds = %44, %44
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_4_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %55 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_4_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %54 ]
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %58, ptr %22, ptr @C_L1L2_4_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %59 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 8), align 4
  %60 = add i32 %59, 1
  %61 = icmp sge i32 %60, 2
  %62 = add i32 %59, -1
  %63 = select i1 %61, i32 %62, i32 %60
  store i32 %63, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %64 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 4), align 4
  %65 = add i32 %64, 1
  %66 = icmp sge i32 %65, 2
  %67 = add i32 %64, -1
  %68 = select i1 %66, i32 %67, i32 %65
  store i32 %68, ptr getelementptr inbounds (i8, ptr @_anonymous4, i64 4), align 4
  %69 = add i64 %6, 1
  br label %5

70:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %71 = load i32, ptr @_anonymous4, align 4
  %72 = add i32 %71, 1
  %73 = icmp sge i32 %72, 1
  %74 = select i1 %73, i32 %71, i32 %72
  store i32 %74, ptr @_anonymous4, align 4
  %75 = add i64 %2, 1
  br label %1

76:                                               ; preds = %1
  ret void
}

define void @core_3_2() addrspace(0) {
  store i32 0, ptr @_anonymous3, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 4), align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 8), align 4
  br label %1

1:                                                ; preds = %70, %0
  %2 = phi i64 [ %75, %70 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %76

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel_bf16(ptr @C_L1L2_3_0_buff_0)
  br label %5

5:                                                ; preds = %56, %4
  %6 = phi i64 [ %69, %56 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %70

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 4), align 4
  %10 = sext i32 %9 to i64
  switch i64 %10, label %11 [
    i64 0, label %11
    i64 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_3_cons_buff_1, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_3_cons_buff_0, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %11 ]
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %15 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 8), align 4
  %16 = sext i32 %15 to i64
  switch i64 %16, label %17 [
    i64 0, label %17
    i64 1, label %18
  ]

17:                                               ; preds = %13, %13
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_3_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %18 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_3_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %17 ]
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, 1
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %21, ptr %22, ptr @C_L1L2_3_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %23 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 8), align 4
  %24 = add i32 %23, 1
  %25 = icmp sge i32 %24, 2
  %26 = add i32 %23, -1
  %27 = select i1 %25, i32 %26, i32 %24
  store i32 %27, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %28 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 8), align 4
  %29 = sext i32 %28 to i64
  switch i64 %29, label %30 [
    i64 0, label %30
    i64 1, label %31
  ]

30:                                               ; preds = %19, %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_3_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %31 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_3_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %30 ]
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %34, ptr %22, ptr @C_L1L2_3_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %35 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 8), align 4
  %36 = add i32 %35, 1
  %37 = icmp sge i32 %36, 2
  %38 = add i32 %35, -1
  %39 = select i1 %37, i32 %38, i32 %36
  store i32 %39, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %40 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 8), align 4
  %41 = sext i32 %40 to i64
  switch i64 %41, label %42 [
    i64 0, label %42
    i64 1, label %43
  ]

42:                                               ; preds = %32, %32
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_3_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %43 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_3_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %42 ]
  %46 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %46, ptr %22, ptr @C_L1L2_3_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 8), align 4
  %48 = add i32 %47, 1
  %49 = icmp sge i32 %48, 2
  %50 = add i32 %47, -1
  %51 = select i1 %49, i32 %50, i32 %48
  store i32 %51, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %52 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 8), align 4
  %53 = sext i32 %52 to i64
  switch i64 %53, label %54 [
    i64 0, label %54
    i64 1, label %55
  ]

54:                                               ; preds = %44, %44
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_3_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %55 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_3_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %54 ]
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %58, ptr %22, ptr @C_L1L2_3_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %59 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 8), align 4
  %60 = add i32 %59, 1
  %61 = icmp sge i32 %60, 2
  %62 = add i32 %59, -1
  %63 = select i1 %61, i32 %62, i32 %60
  store i32 %63, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %64 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 4), align 4
  %65 = add i32 %64, 1
  %66 = icmp sge i32 %65, 2
  %67 = add i32 %64, -1
  %68 = select i1 %66, i32 %67, i32 %65
  store i32 %68, ptr getelementptr inbounds (i8, ptr @_anonymous3, i64 4), align 4
  %69 = add i64 %6, 1
  br label %5

70:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %71 = load i32, ptr @_anonymous3, align 4
  %72 = add i32 %71, 1
  %73 = icmp sge i32 %72, 1
  %74 = select i1 %73, i32 %71, i32 %72
  store i32 %74, ptr @_anonymous3, align 4
  %75 = add i64 %2, 1
  br label %1

76:                                               ; preds = %1
  ret void
}

define void @core_2_2() addrspace(0) {
  store i32 0, ptr @_anonymous2, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 4), align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 8), align 4
  br label %1

1:                                                ; preds = %70, %0
  %2 = phi i64 [ %75, %70 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %76

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel_bf16(ptr @C_L1L2_2_0_buff_0)
  br label %5

5:                                                ; preds = %56, %4
  %6 = phi i64 [ %69, %56 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %70

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 4), align 4
  %10 = sext i32 %9 to i64
  switch i64 %10, label %11 [
    i64 0, label %11
    i64 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_2_cons_buff_1, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_2_cons_buff_0, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %11 ]
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %15 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 8), align 4
  %16 = sext i32 %15 to i64
  switch i64 %16, label %17 [
    i64 0, label %17
    i64 1, label %18
  ]

17:                                               ; preds = %13, %13
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_2_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %18 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_2_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %17 ]
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, 1
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %21, ptr %22, ptr @C_L1L2_2_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %23 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 8), align 4
  %24 = add i32 %23, 1
  %25 = icmp sge i32 %24, 2
  %26 = add i32 %23, -1
  %27 = select i1 %25, i32 %26, i32 %24
  store i32 %27, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %28 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 8), align 4
  %29 = sext i32 %28 to i64
  switch i64 %29, label %30 [
    i64 0, label %30
    i64 1, label %31
  ]

30:                                               ; preds = %19, %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_2_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %31 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_2_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %30 ]
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %34, ptr %22, ptr @C_L1L2_2_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %35 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 8), align 4
  %36 = add i32 %35, 1
  %37 = icmp sge i32 %36, 2
  %38 = add i32 %35, -1
  %39 = select i1 %37, i32 %38, i32 %36
  store i32 %39, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %40 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 8), align 4
  %41 = sext i32 %40 to i64
  switch i64 %41, label %42 [
    i64 0, label %42
    i64 1, label %43
  ]

42:                                               ; preds = %32, %32
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_2_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %43 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_2_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %42 ]
  %46 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %46, ptr %22, ptr @C_L1L2_2_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 8), align 4
  %48 = add i32 %47, 1
  %49 = icmp sge i32 %48, 2
  %50 = add i32 %47, -1
  %51 = select i1 %49, i32 %50, i32 %48
  store i32 %51, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %52 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 8), align 4
  %53 = sext i32 %52 to i64
  switch i64 %53, label %54 [
    i64 0, label %54
    i64 1, label %55
  ]

54:                                               ; preds = %44, %44
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_2_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %55 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_2_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %54 ]
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %58, ptr %22, ptr @C_L1L2_2_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %59 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 8), align 4
  %60 = add i32 %59, 1
  %61 = icmp sge i32 %60, 2
  %62 = add i32 %59, -1
  %63 = select i1 %61, i32 %62, i32 %60
  store i32 %63, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %64 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 4), align 4
  %65 = add i32 %64, 1
  %66 = icmp sge i32 %65, 2
  %67 = add i32 %64, -1
  %68 = select i1 %66, i32 %67, i32 %65
  store i32 %68, ptr getelementptr inbounds (i8, ptr @_anonymous2, i64 4), align 4
  %69 = add i64 %6, 1
  br label %5

70:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %71 = load i32, ptr @_anonymous2, align 4
  %72 = add i32 %71, 1
  %73 = icmp sge i32 %72, 1
  %74 = select i1 %73, i32 %71, i32 %72
  store i32 %74, ptr @_anonymous2, align 4
  %75 = add i64 %2, 1
  br label %1

76:                                               ; preds = %1
  ret void
}

define void @core_1_2() addrspace(0) {
  store i32 0, ptr @_anonymous1, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 4), align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8), align 4
  br label %1

1:                                                ; preds = %70, %0
  %2 = phi i64 [ %75, %70 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %76

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel_bf16(ptr @C_L1L2_1_0_buff_0)
  br label %5

5:                                                ; preds = %56, %4
  %6 = phi i64 [ %69, %56 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %70

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 4), align 4
  %10 = sext i32 %9 to i64
  switch i64 %10, label %11 [
    i64 0, label %11
    i64 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_1_cons_buff_1, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_1_cons_buff_0, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %11 ]
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %15 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8), align 4
  %16 = sext i32 %15 to i64
  switch i64 %16, label %17 [
    i64 0, label %17
    i64 1, label %18
  ]

17:                                               ; preds = %13, %13
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_1_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %18 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_1_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %17 ]
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, 1
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %21, ptr %22, ptr @C_L1L2_1_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %23 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8), align 4
  %24 = add i32 %23, 1
  %25 = icmp sge i32 %24, 2
  %26 = add i32 %23, -1
  %27 = select i1 %25, i32 %26, i32 %24
  store i32 %27, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %28 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8), align 4
  %29 = sext i32 %28 to i64
  switch i64 %29, label %30 [
    i64 0, label %30
    i64 1, label %31
  ]

30:                                               ; preds = %19, %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_1_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %31 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_1_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %30 ]
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %34, ptr %22, ptr @C_L1L2_1_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %35 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8), align 4
  %36 = add i32 %35, 1
  %37 = icmp sge i32 %36, 2
  %38 = add i32 %35, -1
  %39 = select i1 %37, i32 %38, i32 %36
  store i32 %39, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %40 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8), align 4
  %41 = sext i32 %40 to i64
  switch i64 %41, label %42 [
    i64 0, label %42
    i64 1, label %43
  ]

42:                                               ; preds = %32, %32
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_1_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %43 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_1_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %42 ]
  %46 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %46, ptr %22, ptr @C_L1L2_1_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8), align 4
  %48 = add i32 %47, 1
  %49 = icmp sge i32 %48, 2
  %50 = add i32 %47, -1
  %51 = select i1 %49, i32 %50, i32 %48
  store i32 %51, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %52 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8), align 4
  %53 = sext i32 %52 to i64
  switch i64 %53, label %54 [
    i64 0, label %54
    i64 1, label %55
  ]

54:                                               ; preds = %44, %44
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_1_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %55 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_1_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %54 ]
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %58, ptr %22, ptr @C_L1L2_1_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %59 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8), align 4
  %60 = add i32 %59, 1
  %61 = icmp sge i32 %60, 2
  %62 = add i32 %59, -1
  %63 = select i1 %61, i32 %62, i32 %60
  store i32 %63, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %64 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 4), align 4
  %65 = add i32 %64, 1
  %66 = icmp sge i32 %65, 2
  %67 = add i32 %64, -1
  %68 = select i1 %66, i32 %67, i32 %65
  store i32 %68, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 4), align 4
  %69 = add i64 %6, 1
  br label %5

70:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %71 = load i32, ptr @_anonymous1, align 4
  %72 = add i32 %71, 1
  %73 = icmp sge i32 %72, 1
  %74 = select i1 %73, i32 %71, i32 %72
  store i32 %74, ptr @_anonymous1, align 4
  %75 = add i64 %2, 1
  br label %1

76:                                               ; preds = %1
  ret void
}

define void @core_0_2() addrspace(0) {
  store i32 0, ptr @_anonymous0, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 4), align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 8), align 4
  br label %1

1:                                                ; preds = %70, %0
  %2 = phi i64 [ %75, %70 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %76

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel_bf16(ptr @C_L1L2_0_0_buff_0)
  br label %5

5:                                                ; preds = %56, %4
  %6 = phi i64 [ %69, %56 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %70

8:                                                ; preds = %5
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 4), align 4
  %10 = sext i32 %9 to i64
  switch i64 %10, label %11 [
    i64 0, label %11
    i64 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_0_cons_buff_1, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @B_L2L1_0_cons_buff_0, i64 0, [2 x i64] [i64 64, i64 16], [2 x i64] [i64 16, i64 1] }, %11 ]
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %15 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 8), align 4
  %16 = sext i32 %15 to i64
  switch i64 %16, label %17 [
    i64 0, label %17
    i64 1, label %18
  ]

17:                                               ; preds = %13, %13
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_0_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %18 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_0_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %17 ]
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, 1
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %21, ptr %22, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %23 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 8), align 4
  %24 = add i32 %23, 1
  %25 = icmp sge i32 %24, 2
  %26 = add i32 %23, -1
  %27 = select i1 %25, i32 %26, i32 %24
  store i32 %27, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %28 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 8), align 4
  %29 = sext i32 %28 to i64
  switch i64 %29, label %30 [
    i64 0, label %30
    i64 1, label %31
  ]

30:                                               ; preds = %19, %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_0_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %31 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_0_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %30 ]
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %34, ptr %22, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %35 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 8), align 4
  %36 = add i32 %35, 1
  %37 = icmp sge i32 %36, 2
  %38 = add i32 %35, -1
  %39 = select i1 %37, i32 %38, i32 %36
  store i32 %39, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %40 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 8), align 4
  %41 = sext i32 %40 to i64
  switch i64 %41, label %42 [
    i64 0, label %42
    i64 1, label %43
  ]

42:                                               ; preds = %32, %32
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_0_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %43 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_0_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %42 ]
  %46 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %46, ptr %22, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %47 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 8), align 4
  %48 = add i32 %47, 1
  %49 = icmp sge i32 %48, 2
  %50 = add i32 %47, -1
  %51 = select i1 %49, i32 %50, i32 %48
  store i32 %51, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %52 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 8), align 4
  %53 = sext i32 %52 to i64
  switch i64 %53, label %54 [
    i64 0, label %54
    i64 1, label %55
  ]

54:                                               ; preds = %44, %44
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi { ptr, ptr, i64, [2 x i64], [2 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_0_cons_buff_1, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %55 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @A_L2L1_0_0_cons_buff_0, i64 0, [2 x i64] [i64 32, i64 64], [2 x i64] [i64 64, i64 1] }, %54 ]
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, 1
  call addrspace(0) void @matmul_vectorized_different_datatypes(ptr %58, ptr %22, ptr @C_L1L2_0_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %59 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 8), align 4
  %60 = add i32 %59, 1
  %61 = icmp sge i32 %60, 2
  %62 = add i32 %59, -1
  %63 = select i1 %61, i32 %62, i32 %60
  store i32 %63, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %64 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 4), align 4
  %65 = add i32 %64, 1
  %66 = icmp sge i32 %65, 2
  %67 = add i32 %64, -1
  %68 = select i1 %66, i32 %67, i32 %65
  store i32 %68, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 4), align 4
  %69 = add i64 %6, 1
  br label %5

70:                                               ; preds = %5
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %71 = load i32, ptr @_anonymous0, align 4
  %72 = add i32 %71, 1
  %73 = icmp sge i32 %72, 1
  %74 = select i1 %73, i32 %71, i32 %72
  store i32 %74, ptr @_anonymous0, align 4
  %75 = add i64 %2, 1
  br label %1

76:                                               ; preds = %1
  ret void
}

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
