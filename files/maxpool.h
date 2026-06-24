// ============================================================
// maxpool.h  — Version 2 (AXI-Stream Interface)
// MaxPool IP Core Header
// Project : FPGA CNN Accelerator — Breast Tumour Classification
// Target  : xck26-sfvc784-2LV-c (AMD Kria KV260)
// Clock   : 5 ns (200 MHz)
// ============================================================

#ifndef MAXPOOL_H
#define MAXPOOL_H

#include "ap_fixed.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"

typedef ap_fixed<16,8>        fixed_t;
typedef ap_axiu<16,0,0,0>     stream_pkt_t;
typedef hls::stream<stream_pkt_t> stream_t;

// Input  : 4x4 = 16 elements streamed in (but we use 3x3=9
//          from ReLU output, padded to 4x4 in ARM software)
// For this test: 4x4 = 16 input elements
// Output : 2x2 =  4 elements streamed out
#define POOL_IN_ROWS   4
#define POOL_IN_COLS   4
#define POOL_SIZE      2
#define POOL_STRIDE    2
#define POOL_OUT_ROWS  2
#define POOL_OUT_COLS  2
#define POOL_IN_SIZE   (POOL_IN_ROWS * POOL_IN_COLS)   // 16
#define POOL_OUT_SIZE  (POOL_OUT_ROWS * POOL_OUT_COLS)  //  4

void maxpool(
    stream_t &in_stream,
    stream_t &out_stream
);

#endif // MAXPOOL_H
