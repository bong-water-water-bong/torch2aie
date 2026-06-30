; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-p:32:32:32:32:8-s0:512:512-a0:8:8-S512-n32:64-P1-p0:20:32:32:32:8-p1:20:32:32:32:8-p2:20:32:32:32:8-p3:20:32:32:32:8-p4:20:32:32:32:8-p5:20:32:32:32:8-p6:20:32:32:32:8-p7:20:32:32:32:8-p8:20:32:32:32:8-p9:20:32:32:32:8-p10:20:32:32:32:8-p11:20:32:32:32:8-p12:20:32:32:32:8-p13:20:32:32:32:8-p14:20:32:32:32:8-p15:20:32:32:32:8"
target triple = "aie2p"

%struct.ipd.custom_type.uint2_t = type { i2 }
%struct.ipd.custom_type.tm_byte_t = type { i8 }

@_anonymous26 = external global [3 x i32]
@A_L2L1_0_3_2_cons_buff_1 = external global [32 x [16 x i72]]
@A_L2L1_0_3_2_cons_buff_0 = external global [32 x [16 x i72]]
@B_L2L1_26_0_cons_buff_1 = external global [128 x [12 x i72]]
@B_L2L1_26_0_cons_buff_0 = external global [128 x [12 x i72]]
@C_L1L2_26_0_buff_0 = external global [192 x [12 x i72]]

define void @core_26_2() addrspace(0) {
  store i32 0, ptr @_anonymous26, align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 4), align 4
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  br label %1

1:                                                ; preds = %71, %0
  %2 = phi i64 [ %86, %71 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %87

4:                                                ; preds = %1
  call addrspace(0) void @llvm.aie2p.acquire(i32 52, i32 -1)
  call addrspace(0) void @zero_kernel(ptr @C_L1L2_26_0_buff_0)
  call addrspace(0) void @llvm.aie2p.acquire(i32 51, i32 -1)
  %5 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 4), align 4
  %6 = sext i32 %5 to i64
  switch i64 %6, label %7 [
    i64 0, label %88
    i64 1, label %90
  ]

7:                                                ; preds = %90, %88, %4
  %8 = phi ptr [ %91, %90 ], [ %89, %88 ], [ @B_L2L1_26_0_cons_buff_0, %4 ]
  %9 = getelementptr [128 x [12 x i72]], ptr %8, i32 0, i32 0, i32 0
  br label %10

10:                                               ; preds = %7
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %11 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  %12 = sext i32 %11 to i64
  switch i64 %12, label %13 [
    i64 0, label %92
    i64 1, label %94
  ]

13:                                               ; preds = %94, %92, %10
  %14 = phi ptr [ %95, %94 ], [ %93, %92 ], [ @A_L2L1_0_3_2_cons_buff_0, %10 ]
  %15 = getelementptr [32 x [16 x i72]], ptr %14, i32 0, i32 0, i32 0
  br label %16

16:                                               ; preds = %13
  call addrspace(0) void @matmul_vectorized_bfp16(ptr %15, ptr %9, ptr @C_L1L2_26_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %17 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  %18 = add i32 %17, 1
  %19 = icmp sge i32 %18, 2
  %20 = add i32 %17, -1
  %21 = select i1 %19, i32 %20, i32 %18
  store i32 %21, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %22 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  %23 = sext i32 %22 to i64
  switch i64 %23, label %24 [
    i64 0, label %96
    i64 1, label %98
  ]

24:                                               ; preds = %98, %96, %16
  %25 = phi ptr [ %99, %98 ], [ %97, %96 ], [ @A_L2L1_0_3_2_cons_buff_0, %16 ]
  %26 = getelementptr [32 x [16 x i72]], ptr %25, i32 0, i32 0, i32 0
  br label %27

27:                                               ; preds = %24
  call addrspace(0) void @matmul_vectorized_bfp16(ptr %26, ptr %9, ptr @C_L1L2_26_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %28 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  %29 = add i32 %28, 1
  %30 = icmp sge i32 %29, 2
  %31 = add i32 %28, -1
  %32 = select i1 %30, i32 %31, i32 %29
  store i32 %32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %33 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  %34 = sext i32 %33 to i64
  switch i64 %34, label %35 [
    i64 0, label %100
    i64 1, label %102
  ]

35:                                               ; preds = %102, %100, %27
  %36 = phi ptr [ %103, %102 ], [ %101, %100 ], [ @A_L2L1_0_3_2_cons_buff_0, %27 ]
  %37 = getelementptr [32 x [16 x i72]], ptr %36, i32 0, i32 0, i32 0
  br label %38

38:                                               ; preds = %35
  call addrspace(0) void @matmul_vectorized_bfp16(ptr %37, ptr %9, ptr @C_L1L2_26_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %39 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  %40 = add i32 %39, 1
  %41 = icmp sge i32 %40, 2
  %42 = add i32 %39, -1
  %43 = select i1 %41, i32 %42, i32 %40
  store i32 %43, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %44 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  %45 = sext i32 %44 to i64
  switch i64 %45, label %46 [
    i64 0, label %104
    i64 1, label %106
  ]

46:                                               ; preds = %106, %104, %38
  %47 = phi ptr [ %107, %106 ], [ %105, %104 ], [ @A_L2L1_0_3_2_cons_buff_0, %38 ]
  %48 = getelementptr [32 x [16 x i72]], ptr %47, i32 0, i32 0, i32 0
  br label %49

49:                                               ; preds = %46
  call addrspace(0) void @matmul_vectorized_bfp16(ptr %48, ptr %9, ptr @C_L1L2_26_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %50 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  %51 = add i32 %50, 1
  %52 = icmp sge i32 %51, 2
  %53 = add i32 %50, -1
  %54 = select i1 %52, i32 %53, i32 %51
  store i32 %54, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %55 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  %56 = sext i32 %55 to i64
  switch i64 %56, label %57 [
    i64 0, label %108
    i64 1, label %110
  ]

57:                                               ; preds = %110, %108, %49
  %58 = phi ptr [ %111, %110 ], [ %109, %108 ], [ @A_L2L1_0_3_2_cons_buff_0, %49 ]
  %59 = getelementptr [32 x [16 x i72]], ptr %58, i32 0, i32 0, i32 0
  br label %60

60:                                               ; preds = %57
  call addrspace(0) void @matmul_vectorized_bfp16(ptr %59, ptr %9, ptr @C_L1L2_26_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %61 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  %62 = add i32 %61, 1
  %63 = icmp sge i32 %62, 2
  %64 = add i32 %61, -1
  %65 = select i1 %63, i32 %64, i32 %62
  store i32 %65, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.acquire(i32 49, i32 -1)
  %66 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  %67 = sext i32 %66 to i64
  switch i64 %67, label %68 [
    i64 0, label %112
    i64 1, label %114
  ]

68:                                               ; preds = %114, %112, %60
  %69 = phi ptr [ %115, %114 ], [ %113, %112 ], [ @A_L2L1_0_3_2_cons_buff_0, %60 ]
  %70 = getelementptr [32 x [16 x i72]], ptr %69, i32 0, i32 0, i32 0
  br label %71

71:                                               ; preds = %68
  call addrspace(0) void @matmul_vectorized_bfp16(ptr %70, ptr %9, ptr @C_L1L2_26_0_buff_0)
  call addrspace(0) void @llvm.aie2p.release(i32 48, i32 1)
  %72 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  %73 = add i32 %72, 1
  %74 = icmp sge i32 %73, 2
  %75 = add i32 %72, -1
  %76 = select i1 %74, i32 %75, i32 %73
  store i32 %76, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 8), align 4
  call addrspace(0) void @llvm.aie2p.release(i32 50, i32 1)
  %77 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 4), align 4
  %78 = add i32 %77, 1
  %79 = icmp sge i32 %78, 2
  %80 = add i32 %77, -1
  %81 = select i1 %79, i32 %80, i32 %78
  store i32 %81, ptr getelementptr inbounds (i8, ptr @_anonymous26, i64 4), align 4
  call addrspace(0) void @llvm.aie2p.release(i32 53, i32 1)
  %82 = load i32, ptr @_anonymous26, align 4
  %83 = add i32 %82, 1
  %84 = icmp sge i32 %83, 1
  %85 = select i1 %84, i32 %82, i32 %83
  store i32 %85, ptr @_anonymous26, align 4
  %86 = add i64 %2, 1
  br label %1

87:                                               ; preds = %1
  ret void

88:                                               ; preds = %4
  %89 = phi ptr [ @B_L2L1_26_0_cons_buff_0, %4 ]
  br label %7

90:                                               ; preds = %4
  %91 = phi ptr [ @B_L2L1_26_0_cons_buff_1, %4 ]
  br label %7

92:                                               ; preds = %10
  %93 = phi ptr [ @A_L2L1_0_3_2_cons_buff_0, %10 ]
  br label %13

94:                                               ; preds = %10
  %95 = phi ptr [ @A_L2L1_0_3_2_cons_buff_1, %10 ]
  br label %13

96:                                               ; preds = %16
  %97 = phi ptr [ @A_L2L1_0_3_2_cons_buff_0, %16 ]
  br label %24

98:                                               ; preds = %16
  %99 = phi ptr [ @A_L2L1_0_3_2_cons_buff_1, %16 ]
  br label %24

100:                                              ; preds = %27
  %101 = phi ptr [ @A_L2L1_0_3_2_cons_buff_0, %27 ]
  br label %35

102:                                              ; preds = %27
  %103 = phi ptr [ @A_L2L1_0_3_2_cons_buff_1, %27 ]
  br label %35

104:                                              ; preds = %38
  %105 = phi ptr [ @A_L2L1_0_3_2_cons_buff_0, %38 ]
  br label %46

106:                                              ; preds = %38
  %107 = phi ptr [ @A_L2L1_0_3_2_cons_buff_1, %38 ]
  br label %46

108:                                              ; preds = %49
  %109 = phi ptr [ @A_L2L1_0_3_2_cons_buff_0, %49 ]
  br label %57

110:                                              ; preds = %49
  %111 = phi ptr [ @A_L2L1_0_3_2_cons_buff_1, %49 ]
  br label %57

112:                                              ; preds = %60
  %113 = phi ptr [ @A_L2L1_0_3_2_cons_buff_0, %60 ]
  br label %68

114:                                              ; preds = %60
  %115 = phi ptr [ @A_L2L1_0_3_2_cons_buff_1, %60 ]
  br label %68
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
