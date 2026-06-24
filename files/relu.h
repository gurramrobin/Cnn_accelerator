// ============================================================
// relu.h  — Version 2 (AXI-Stream Interface)
// ReLU IP Core Header
// Project : FPGA CNN Accelerator — Breast Tumour Classification
// Target  : xck26-sfvc784-2LV-c (AMD Kria KV260)
// Clock   : 5 ns (200 MHz)
//
// CHAINING:
//   Conv2D out_stream → ReLU in_stream  (9 beats, 16-bit each)
//   ReLU   out_stream → MaxPool in_stream
//   In Vivado these connect with ONE CLICK (AXIS to AXIS).
// ============================================================

#ifndef RELU_IP_H
#define RELU_IP_H

#include "ap_fixed.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"

typedef ap_fixed<16,8>      fixed_t;
typedef ap_axiu<16,0,0,0>   stream_pkt_t;
typedef hls::stream<stream_pkt_t> stream_t;

// Input and output are both 3x3 = 9 elements
#define RELU_SIZE   9

void relu(
    stream_t &in_stream,
    stream_t &out_stream
);

#endif // RELU_IP_H
