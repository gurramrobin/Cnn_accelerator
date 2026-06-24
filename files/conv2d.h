// ============================================================
// conv2d.h  — Version 2 (AXI-Stream Interface)
// Conv2D IP Core Header
// Project : FPGA CNN Accelerator — Breast Tumour Classification
// Target  : xck26-sfvc784-2LV-c (AMD Kria KV260)
// Clock   : 5 ns (200 MHz)
//
// WHY AXI-STREAM:
//   AXI4-Stream (AXIS) is the standard Xilinx streaming interface.
//   Every IP gets identical TDATA/TVALID/TREADY ports.
//   In Vivado block design, two AXIS ports connect in ONE CLICK.
//   The ARM PS can also stream data in/out via DMA (AXI DMA IP).
//   This solves ALL the connection problems from the raw port
//   version — no more mismatched widths or protocol errors.
//
// DATA PACKING:
//   ap_fixed<16,8> = 16 bits per element.
//   We stream elements one at a time: each TDATA = 16 bits.
//   For a 5x5 input: 25 beats (clock cycles) of input stream.
//   For weights 3x3: 9 beats.
//   For output 3x3:  9 beats.
// ============================================================

#ifndef CONV2D_H
#define CONV2D_H

#include "ap_fixed.h"
#include "hls_stream.h"     // Vitis HLS streaming library
#include "ap_axi_sdata.h"   // AXI-Stream data type definitions

// ── Data type ──────────────────────────────────────────────
typedef ap_fixed<16,8> fixed_t;

// ── AXI-Stream packet type ─────────────────────────────────
// ap_axiu<W,0,0,0> = AXI-Stream with W-bit TDATA
//   W     = data width in bits (16 for our fixed_t)
//   TKEEP, TSTRB, TUSER, TID, TDEST = 0 (not used)
// This struct has members: .data (the value), .keep, .last
typedef ap_axiu<16,0,0,0> stream_pkt_t;

// ── HLS stream type ────────────────────────────────────────
// hls::stream<T> is a FIFO channel between pipeline stages.
// In hardware it becomes an AXI-Stream interface automatically
// when we add the INTERFACE pragma below.
typedef hls::stream<stream_pkt_t> stream_t;

// ── Array dimensions ───────────────────────────────────────
#define IN_ROWS    5
#define IN_COLS    5
#define IN_CH      1
#define K_SIZE     3
#define OUT_CH     1
#define OUT_ROWS   3
#define OUT_COLS   3

// Total elements streamed in/out
#define IN_SIZE    (IN_CH  * IN_ROWS  * IN_COLS)   // 25
#define W_SIZE     (OUT_CH * IN_CH * K_SIZE*K_SIZE) //  9
#define OUT_SIZE   (OUT_CH * OUT_ROWS * OUT_COLS)   //  9

// ── Function declaration ───────────────────────────────────
void conv2d(
    stream_t &in_stream,      // input feature map  (25 beats)
    stream_t &weight_stream,  // conv weights       ( 9 beats)
    fixed_t   bias,           // scalar bias value
    stream_t &out_stream      // output feature map ( 9 beats)
);

#endif // CONV2D_H
