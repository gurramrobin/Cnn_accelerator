// ============================================================
// relu.cpp  — Version 2 (AXI-Stream Interface)
// ReLU IP Core Implementation
// Project : FPGA CNN Accelerator — Breast Tumour Classification
// Target  : xck26-sfvc784-2LV-c (AMD Kria KV260)
// Clock   : 5 ns (200 MHz)
//
// HOW THIS WORKS:
//   Reads one stream packet per cycle, applies max(0,x),
//   writes the result immediately to the output stream.
//   No buffering needed — ReLU is a purely element-wise op.
//   This gives the lowest possible latency (II=1, depth=1).
//
// PIPELINE BEHAVIOUR:
//   Cycle 1: read pkt[0], compute relu[0], write pkt[0]
//   Cycle 2: read pkt[1], compute relu[1], write pkt[1]
//   ...
//   Every single cycle does a read-compute-write → II=1
// ============================================================

#include "relu.h"

void relu(
    stream_t &in_stream,
    stream_t &out_stream
)
{
#pragma HLS INTERFACE axis       port=in_stream  register
#pragma HLS INTERFACE axis       port=out_stream register
#pragma HLS INTERFACE ap_ctrl_none bundle=control

    RELU_LOOP: for (int i = 0; i < RELU_SIZE; i++) {
#pragma HLS PIPELINE II=1

        // Read one element from input stream
        stream_pkt_t in_pkt = in_stream.read();

        // Unpack 16-bit data to fixed_t
        fixed_t val;
        val.range(15,0) = in_pkt.data.range(15,0);

        // Apply ReLU: max(0, val)
        // In hardware: sign bit check → MUX → 1 LUT per bit
        fixed_t result = (val > (fixed_t)0) ? val : (fixed_t)0;

        // Pack result back to stream packet
        stream_pkt_t out_pkt;
        out_pkt.data.range(15,0) = result.range(15,0);
        out_pkt.keep = in_pkt.keep;   // preserve keep from input
        out_pkt.last = in_pkt.last;   // preserve last flag

        out_stream.write(out_pkt);
    }
}
