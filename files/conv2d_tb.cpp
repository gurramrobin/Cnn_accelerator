// ============================================================
// conv2d_tb.cpp  — Version 2 (AXI-Stream Interface)
// Testbench for Conv2D IP Core
// Project : FPGA CNN Accelerator — Breast Tumour Classification
//
// Same test values as Version 1 — results must be identical.
// This testbench packs values into stream packets and unpacks
// the output stream to verify correctness.
// ============================================================

#include <iostream>
#include <iomanip>
#include <cmath>
#include "conv2d.h"

int main()
{
    // ── Declare streams ───────────────────────────────────
    stream_t in_stream, weight_stream, out_stream;

    // ── Fill input stream: values 1 to 25 row-major ───────
    for (int i = 0; i < IN_SIZE; i++) {
        stream_pkt_t pkt;
        fixed_t val = (fixed_t)(i + 1);   // 1,2,3,...,25
        pkt.data.range(15,0) = val.range(15,0);
        pkt.keep = 0xFF;
        pkt.last = (i == IN_SIZE - 1) ? 1 : 0;
        in_stream.write(pkt);
    }

    // ── Fill weight stream: plus-shaped kernel ────────────
    // Kernel: [[0,1,0],[1,2,1],[0,1,0]] row-major = 9 values
    fixed_t kw[9] = {0,1,0, 1,2,1, 0,1,0};
    for (int i = 0; i < W_SIZE; i++) {
        stream_pkt_t pkt;
        pkt.data.range(15,0) = kw[i].range(15,0);
        pkt.keep = 0xFF;
        pkt.last = (i == W_SIZE - 1) ? 1 : 0;
        weight_stream.write(pkt);
    }

    // ── Call DUT ──────────────────────────────────────────
    fixed_t bias = (fixed_t)0.5;
    conv2d(in_stream, weight_stream, bias, out_stream);

    // ── Expected output (Python reference) ───────────────
    float expected[OUT_CH][OUT_ROWS][OUT_COLS] = {
        {{ 42.5,  48.5,  54.5},
         { 72.5,  78.5,  84.5},
         {102.5, 108.5, 114.5}}
    };

    // ── Read and verify output stream ────────────────────
    std::cout << "==============================" << std::endl;
    std::cout << "Conv2D Testbench (AXI-Stream)" << std::endl;
    std::cout << "==============================" << std::endl;

    int pass = 0, fail = 0;
    float tolerance = 0.1f;

    for (int i = 0; i < OUT_SIZE; i++) {
        stream_pkt_t pkt = out_stream.read();
        fixed_t val;
        val.range(15,0) = pkt.data.range(15,0);
        float got = (float)val;

        int oc  = i / (OUT_ROWS * OUT_COLS);
        int rem = i % (OUT_ROWS * OUT_COLS);
        int r   = rem / OUT_COLS;
        int c   = rem % OUT_COLS;
        float exp = expected[oc][r][c];
        bool ok = (std::fabs(got - exp) <= tolerance);

        std::cout << "  output[" << oc << "][" << r << "][" << c
                  << "] = " << std::setw(7) << got
                  << "  expected=" << exp
                  << "  " << (ok ? "PASS" : "FAIL") << std::endl;

        if (ok) pass++; else fail++;
    }

    std::cout << "==============================" << std::endl;
    std::cout << "PASS: " << pass << "  FAIL: " << fail << std::endl;

    if (fail == 0) {
        std::cout << "RESULT: ALL TESTS PASSED" << std::endl;
        return 0;
    } else {
        std::cout << "RESULT: TESTS FAILED" << std::endl;
        return 1;
    }
}
