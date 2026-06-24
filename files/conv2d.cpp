// ============================================================
// conv2d.cpp  — Version 2 (AXI-Stream Interface)
// Conv2D IP Core Implementation
// Project : FPGA CNN Accelerator — Breast Tumour Classification
// Target  : xck26-sfvc784-2LV-c (AMD Kria KV260)
// Clock   : 5 ns (200 MHz)
//
// HOW THIS WORKS:
//   Step 1 — Read 25 input values from in_stream into local buf
//   Step 2 — Read  9 weight values from weight_stream into w[]
//   Step 3 — Perform 3x3 valid convolution (same math as before)
//   Step 4 — Write  9 output values to out_stream
//
// WHY LOCAL BUFFERS:
//   We read the streams into fixed arrays first, then do the
//   convolution. This is called "burst read" pattern — it lets
//   Vitis HLS pipeline the computation without stalling waiting
//   for stream data, achieving II=1 on the compute loops.
// ============================================================

#include "conv2d.h"

void conv2d(
    stream_t &in_stream,
    stream_t &weight_stream,
    fixed_t   bias,
    stream_t &out_stream
)
{
    // ── Interface pragmas ─────────────────────────────────
    // axis = AXI4-Stream protocol
    //   Vivado sees these as standard AXIS ports and connects
    //   them to other AXIS IPs with a single click.
    // ap_none = scalar port (bias is just a 16-bit input wire)
    // ap_ctrl_none = no ap_start/ap_done handshake on top-level
    //   function — the stream valid/ready handshake IS the
    //   flow control. This makes chaining cleaner in Vivado.
#pragma HLS INTERFACE axis      port=in_stream     register
#pragma HLS INTERFACE axis      port=weight_stream register
#pragma HLS INTERFACE axis      port=out_stream    register
#pragma HLS INTERFACE ap_none   port=bias
#pragma HLS INTERFACE ap_ctrl_none bundle=control

    // ── Local buffers ─────────────────────────────────────
    // These are fully partitioned — every element has its own
    // register so all 9 MACs can happen in parallel (II=1).
    fixed_t input  [IN_CH][IN_ROWS][IN_COLS];
    fixed_t weights[OUT_CH][IN_CH][K_SIZE][K_SIZE];
    fixed_t output [OUT_CH][OUT_ROWS][OUT_COLS];

#pragma HLS ARRAY_PARTITION variable=input   complete dim=0
#pragma HLS ARRAY_PARTITION variable=weights complete dim=0
#pragma HLS ARRAY_PARTITION variable=output  complete dim=0

    // ── Step 1: Burst-read input stream (25 elements) ─────
    // Elements arrive row-major: [0][0][0], [0][0][1], ...
    READ_INPUT: for (int i = 0; i < IN_SIZE; i++) {
#pragma HLS PIPELINE II=1
        stream_pkt_t pkt = in_stream.read();
        // Unpack the 16-bit TDATA field back to fixed_t
        fixed_t val;
        val.range(15,0) = pkt.data.range(15,0);
        // Convert flat index i to [ic][row][col]
        int ic  = i / (IN_ROWS * IN_COLS);
        int rem = i % (IN_ROWS * IN_COLS);
        int r   = rem / IN_COLS;
        int c   = rem % IN_COLS;
        input[ic][r][c] = val;
    }

    // ── Step 2: Burst-read weight stream (9 elements) ─────
    // Elements arrive: [0][0][0][0], [0][0][0][1], ...
    READ_WEIGHTS: for (int i = 0; i < W_SIZE; i++) {
#pragma HLS PIPELINE II=1
        stream_pkt_t pkt = weight_stream.read();
        fixed_t val;
        val.range(15,0) = pkt.data.range(15,0);
        int oc  = i / (IN_CH * K_SIZE * K_SIZE);
        int rem = i % (IN_CH * K_SIZE * K_SIZE);
        int ic  = rem / (K_SIZE * K_SIZE);
        int kr  = (rem % (K_SIZE * K_SIZE)) / K_SIZE;
        int kc  = (rem % (K_SIZE * K_SIZE)) % K_SIZE;
        weights[oc][ic][kr][kc] = val;
    }

    // ── Step 3: Convolution compute ───────────────────────
    // Identical math to Version 1 — valid convolution, no pad.
    CONV_OC: for (int oc = 0; oc < OUT_CH; oc++) {
        CONV_OR: for (int or_ = 0; or_ < OUT_ROWS; or_++) {
            CONV_OC2: for (int oc_ = 0; oc_ < OUT_COLS; oc_++) {
#pragma HLS PIPELINE II=1
                fixed_t acc = bias;
                CONV_IC: for (int ic = 0; ic < IN_CH; ic++) {
                    CONV_KR: for (int kr = 0; kr < K_SIZE; kr++) {
                        CONV_KC: for (int kc = 0; kc < K_SIZE; kc++) {
                            acc += input[ic][or_+kr][oc_+kc]
                                 * weights[oc][ic][kr][kc];
                        }
                    }
                }
                output[oc][or_][oc_] = acc;
            }
        }
    }

    // ── Step 4: Write output stream (9 elements) ──────────
    // Write row-major. Set .last=1 on final element so the
    // downstream IP (ReLU) knows the packet is complete.
    WRITE_OUTPUT: for (int i = 0; i < OUT_SIZE; i++) {
#pragma HLS PIPELINE II=1
        int oc  = i / (OUT_ROWS * OUT_COLS);
        int rem = i % (OUT_ROWS * OUT_COLS);
        int r   = rem / OUT_COLS;
        int c   = rem % OUT_COLS;
        stream_pkt_t pkt;
        pkt.data.range(15,0) = output[oc][r][c].range(15,0);
        pkt.keep = 0xFF;
        pkt.last = (i == OUT_SIZE - 1) ? 1 : 0;
        out_stream.write(pkt);
    }
}
