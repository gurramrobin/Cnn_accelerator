// ============================================================
// relu_tb.cpp  — Version 2 (AXI-Stream Interface)
// Testbench for ReLU IP Core
// Same test values as Version 1.
// ============================================================

#include <iostream>
#include <iomanip>
#include <cmath>
#include "relu.h"

int main()
{
    stream_t in_stream, out_stream;

    // ── Test input: mix of positive and negative values ───
    float input_vals[RELU_SIZE] = {
         47.5,  52.5,  57.5,
         -5.0,  77.5, -10.0,
         97.5, -20.0, 107.5
    };

    // Pack into stream
    for (int i = 0; i < RELU_SIZE; i++) {
        stream_pkt_t pkt;
        fixed_t val = (fixed_t)input_vals[i];
        pkt.data.range(15,0) = val.range(15,0);
        pkt.keep = 0xFF;
        pkt.last = (i == RELU_SIZE - 1) ? 1 : 0;
        in_stream.write(pkt);
    }

    // ── Expected output ───────────────────────────────────
    float expected[RELU_SIZE] = {
         47.5,  52.5,  57.5,
          0.0,  77.5,   0.0,
         97.5,   0.0, 107.5
    };

    // ── Call DUT ──────────────────────────────────────────
    relu(in_stream, out_stream);

    // ── Verify ────────────────────────────────────────────
    std::cout << "==============================" << std::endl;
    std::cout << "ReLU Testbench (AXI-Stream)" << std::endl;
    std::cout << "==============================" << std::endl;

    int pass = 0, fail = 0;
    float tolerance = 0.1f;

    for (int i = 0; i < RELU_SIZE; i++) {
        stream_pkt_t pkt = out_stream.read();
        fixed_t val;
        val.range(15,0) = pkt.data.range(15,0);
        float got = (float)val;
        float exp = expected[i];
        bool ok = (std::fabs(got - exp) <= tolerance);

        int r = i / 3, c = i % 3;
        std::cout << "  relu[" << r << "][" << c << "] = "
                  << std::setw(7) << got
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
