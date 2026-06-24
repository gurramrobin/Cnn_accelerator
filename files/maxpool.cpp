// ============================================================
// maxpool.cpp  — Version 2 (AXI-Stream Interface)
// MaxPool IP Core Implementation
// Project : FPGA CNN Accelerator — Breast Tumour Classification
// Target  : xck26-sfvc784-2LV-c (AMD Kria KV260)
// Clock   : 5 ns (200 MHz)
//
// HOW THIS WORKS:
//   Step 1 — Read 16 input elements into local buffer (burst)
//   Step 2 — Compute 2x2 max pooling with stride 2
//   Step 3 — Write 4 output elements to out_stream
// ============================================================

#include "maxpool.h"

void maxpool(
    stream_t &in_stream,
    stream_t &out_stream
)
{
#pragma HLS INTERFACE axis       port=in_stream  register
#pragma HLS INTERFACE axis       port=out_stream register
#pragma HLS INTERFACE ap_ctrl_none bundle=control

    // Local input buffer — fully partitioned for II=1
    fixed_t input[POOL_IN_ROWS][POOL_IN_COLS];
#pragma HLS ARRAY_PARTITION variable=input complete dim=0

    // Local output buffer
    fixed_t output[POOL_OUT_ROWS][POOL_OUT_COLS];
#pragma HLS ARRAY_PARTITION variable=output complete dim=0

    // ── Step 1: Burst-read 16 input elements ──────────────
    READ_INPUT: for (int i = 0; i < POOL_IN_SIZE; i++) {
#pragma HLS PIPELINE II=1
        stream_pkt_t pkt = in_stream.read();
        fixed_t val;
        val.range(15,0) = pkt.data.range(15,0);
        int r = i / POOL_IN_COLS;
        int c = i % POOL_IN_COLS;
        input[r][c] = val;
    }

    // ── Step 2: 2x2 max pooling with stride 2 ─────────────
    POOL_OR: for (int or_ = 0; or_ < POOL_OUT_ROWS; or_++) {
        POOL_OC: for (int oc_ = 0; oc_ < POOL_OUT_COLS; oc_++) {
#pragma HLS PIPELINE II=1
            fixed_t max_val = input[or_*POOL_STRIDE][oc_*POOL_STRIDE];
            POOL_KR: for (int kr = 0; kr < POOL_SIZE; kr++) {
#pragma HLS UNROLL
                POOL_KC: for (int kc = 0; kc < POOL_SIZE; kc++) {
#pragma HLS UNROLL
                    fixed_t v = input[or_*POOL_STRIDE+kr]
                                     [oc_*POOL_STRIDE+kc];
                    if (v > max_val) max_val = v;
                }
            }
            output[or_][oc_] = max_val;
        }
    }

    // ── Step 3: Write 4 output elements ───────────────────
    WRITE_OUTPUT: for (int i = 0; i < POOL_OUT_SIZE; i++) {
#pragma HLS PIPELINE II=1
        int r = i / POOL_OUT_COLS;
        int c = i % POOL_OUT_COLS;
        stream_pkt_t pkt;
        pkt.data.range(15,0) = output[r][c].range(15,0);
        pkt.keep = 0xFF;
        pkt.last = (i == POOL_OUT_SIZE - 1) ? 1 : 0;
        out_stream.write(pkt);
    }
}
