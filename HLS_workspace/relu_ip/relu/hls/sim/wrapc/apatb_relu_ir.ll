; ModuleID = 'C:/Users/LAB2_PC10/Desktop/CHINNA/HLS_workspace/relu_ip/relu/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<16>>" }
%"struct.hls::axis<ap_uint<16>>" = type { %"struct.ap_uint<16>", %"struct.ap_uint<2>", %"struct.ap_uint<2>", %"struct.hls::axis_disabled_signal", %"struct.ap_uint<1>", %"struct.hls::axis_disabled_signal", %"struct.hls::axis_disabled_signal" }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.hls::axis_disabled_signal" = type { i8 }

; Function Attrs: noinline willreturn
define void @apatb_relu_ir(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* noalias nonnull align 2 dereferenceable(8) %in_stream, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* noalias nonnull align 2 dereferenceable(8) %out_stream) local_unnamed_addr #0 {
entry:
  %in_stream_copy.data = alloca i16, align 512
  %in_stream_copy.keep = alloca i2, align 512
  %in_stream_copy.strb = alloca i2, align 512
  %in_stream_copy.last = alloca i1, align 512
  %out_stream_copy.data = alloca i16, align 512
  %out_stream_copy.keep = alloca i2, align 512
  %out_stream_copy.strb = alloca i2, align 512
  %out_stream_copy.last = alloca i1, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* nonnull %in_stream, i16* nonnull align 512 %in_stream_copy.data, i2* nonnull align 512 %in_stream_copy.keep, i2* nonnull align 512 %in_stream_copy.strb, i1* nonnull align 512 %in_stream_copy.last, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* nonnull %out_stream, i16* nonnull align 512 %out_stream_copy.data, i2* nonnull align 512 %out_stream_copy.keep, i2* nonnull align 512 %out_stream_copy.strb, i1* nonnull align 512 %out_stream_copy.last)
  call void @apatb_relu_hw(i16* %in_stream_copy.data, i2* %in_stream_copy.keep, i2* %in_stream_copy.strb, i1* %in_stream_copy.last, i16* %out_stream_copy.data, i2* %out_stream_copy.keep, i2* %out_stream_copy.strb, i1* %out_stream_copy.last)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %in_stream, i16* %in_stream_copy.data, i2* %in_stream_copy.keep, i2* %in_stream_copy.strb, i1* %in_stream_copy.last, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %out_stream, i16* %out_stream_copy.data, i2* %out_stream_copy.keep, i2* %out_stream_copy.strb, i1* %out_stream_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* noalias, i16* noalias align 512 "unpacked"="1.0" %_V_data_V, i2* noalias align 512 "unpacked"="1.1" %_V_keep_V, i2* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* noalias, i16* noalias align 512 "unpacked"="3.0" %_V_data_V1, i2* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i2* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_last_V4) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>.44"(i16* align 512 %_V_data_V, i2* align 512 %_V_keep_V, i2* align 512 %_V_strb_V, i1* align 512 %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>.44"(i16* align 512 %_V_data_V1, i2* align 512 %_V_keep_V2, i2* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %1)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* noalias, i16* noalias align 512 "unpacked"="1.0" %_V_data_V, i2* noalias align 512 "unpacked"="1.1" %_V_keep_V, i2* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* noalias, i16* noalias align 512 "unpacked"="3.0" %_V_data_V1, i2* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i2* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_last_V4) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %0, i16* align 512 %_V_data_V, i2* align 512 %_V_keep_V, i2* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %1, i16* align 512 %_V_data_V1, i2* align 512 %_V_keep_V2, i2* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* noalias %dst, i16* noalias align 512 "unpacked"="1.0" %src_V_data_V, i2* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i2* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_last_V) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>.39"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* nonnull %dst, i16* align 512 %src_V_data_V, i2* align 512 %src_V_keep_V, i2* align 512 %src_V_strb_V, i1* align 512 %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>.39"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* noalias nocapture, i16* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i2* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i2* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca i16
  %2 = alloca i2
  %3 = alloca i2
  %4 = alloca i1
  %5 = alloca %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i16* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_2(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i16* %1 to i8*
  %9 = bitcast i16* %_V_data_V to i8*
  call void @fpga_fifo_pop_2(i8* %8, i8* %9)
  %10 = load volatile i16, i16* %1
  %11 = bitcast i2* %3 to i8*
  %12 = bitcast i2* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %11, i8* %12)
  %13 = bitcast i2* %3 to i8*
  %14 = load i8, i8* %13
  %15 = trunc i8 %14 to i2
  %16 = bitcast i2* %2 to i8*
  %17 = bitcast i2* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %16, i8* %17)
  %18 = bitcast i2* %2 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i2
  %21 = bitcast i1* %4 to i8*
  %22 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %21, i8* %22)
  %23 = bitcast i1* %4 to i8*
  %24 = load i8, i8* %23
  %25 = trunc i8 %24 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>" undef, i16 %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i2 %15, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i2 %20, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %25, 0, 4, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>" %.fca.0.4.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %5
  %26 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %5 to i8*
  %27 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %26, i8* %27)
  br label %empty, !llvm.loop !6

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>.44"(i16* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i2* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i2* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>.47"(i16* align 512 %dst_V_data_V, i2* align 512 %dst_V_keep_V, i2* align 512 %dst_V_strb_V, i1* align 512 %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>.47"(i16* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i2* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i2* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"
  %2 = alloca i16
  %3 = alloca i2
  %4 = alloca i2
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  %7 = call i1 @fpga_fifo_not_empty_8(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %1 to i8*
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_8(i8* %8, i8* %9)
  %10 = load volatile %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>" %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>" %10, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>" %10, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>" %10, 0, 4, 0, 0, 0
  store i16 %.fca.0.0.0.0.0.extract, i16* %2
  %11 = bitcast i16* %2 to i8*
  %12 = bitcast i16* %_V_data_V to i8*
  call void @fpga_fifo_push_2(i8* %11, i8* %12)
  store i2 %.fca.0.1.0.0.0.extract, i2* %4
  %13 = bitcast i2* %4 to i8*
  %14 = bitcast i2* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %13, i8* %14)
  store i2 %.fca.0.2.0.0.0.extract, i2* %3
  %15 = bitcast i2* %3 to i8*
  %16 = bitcast i2* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %15, i8* %16)
  store i1 %.fca.0.4.0.0.0.extract, i1* %5
  %17 = bitcast i1* %5 to i8*
  %18 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %17, i8* %18)
  br label %empty, !llvm.loop !6

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_relu_hw(i16*, i2*, i2*, i1*, i16*, i2*, i2*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* noalias, i16* noalias align 512 "unpacked"="1.0" %_V_data_V, i2* noalias align 512 "unpacked"="1.1" %_V_keep_V, i2* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* noalias, i16* noalias align 512 "unpacked"="3.0" %_V_data_V1, i2* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i2* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_last_V4) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %0, i16* align 512 %_V_data_V, i2* align 512 %_V_keep_V, i2* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %1, i16* align 512 %_V_data_V1, i2* align 512 %_V_keep_V2, i2* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4)
  ret void
}

declare void @relu_hw_stub(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* noalias nonnull)

define void @relu_hw_stub_wrapper(i16*, i2*, i2*, i1*, i16*, i2*, i2*, i1*) #5 {
entry:
  %8 = call i8* @malloc(i64 8)
  %9 = bitcast i8* %8 to %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"*
  %10 = call i8* @malloc(i64 8)
  %11 = bitcast i8* %10 to %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"*
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %9, i16* %0, i2* %1, i2* %2, i1* %3, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %11, i16* %4, i2* %5, i2* %6, i1* %7)
  call void @relu_hw_stub(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %9, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %11)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %9, i16* %0, i2* %1, i2* %2, i1* %3, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0, '8', false>, 0>"* %11, i16* %4, i2* %5, i2* %6, i1* %7)
  call void @free(i8* %8)
  call void @free(i8* %10)
  ret void
}

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4}
!blackbox_cfg = !{!5}

!0 = !{!"AMD/Xilinx clang version 16.0.6"}
!1 = !{!"clang version 7.0.0 "}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.rotate.disable"}
