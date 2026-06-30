; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2p"

@main_chunk_pong = external global [128 x i32]
@main_chunk_ping = external global [128 x i32]
@main_record_pong = external global [128 x i32]
@main_wt_pong = external global [2560 x bfloat]
@main_record_ping = external global [128 x i32]
@main_wt_ping = external global [2560 x bfloat]
@main_accum = external global [32 x i32]

declare void @debug_i32(i32)

; Unknown intrinsic
declare void @llvm.aie2p.event(i32)

; Unknown intrinsic
declare void @llvm.aie2p.put.ms(i32, i32)

; Unknown intrinsic
declare { i32, i32 } @llvm.aie2p.get.ss()

; Unknown intrinsic
declare void @llvm.aie2p.mcd.write.vec(<16 x i32>, i32)

; Unknown intrinsic
declare <16 x i32> @llvm.aie2p.scd.read.vec(i32)

; Unknown intrinsic
declare void @llvm.aie2p.acquire(i32, i32)

; Unknown intrinsic
declare void @llvm.aie2p.release(i32, i32)

; Unknown intrinsic
declare void @llvm.aie2p.set.ctrl.reg(i32, i32)

declare void @q4nx_main16_layer_scheduler(ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32)

define void @core_2_2() {
  call void @q4nx_main16_layer_scheduler(ptr @main_wt_ping, ptr @main_wt_pong, ptr @main_chunk_ping, ptr @main_chunk_pong, ptr @main_record_ping, ptr @main_record_pong, i32 0, i32 0, i32 32, i32 1)
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
