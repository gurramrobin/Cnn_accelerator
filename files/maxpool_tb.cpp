// ============================================================
// maxpool_tb.cpp  — Version 2 (AXI-Stream Interface)
// Testbench for MaxPool IP Core
// Same test values as Version 1.
// ============================================================

#include <iostream>
#include <iomanip>
#include <cmath>
#include "maxpool.h"

int main()
{
    stream_t in_stream, out_stream;

    // ── Test input: 4x4 matrix ────────────────────────────
    float input_vals[POOL_IN_SIZE] = {
        1, 3, 2, 4,
        5, 6, 1, 2,
        1, 2, 3, 4,
        5, 7, 8, 9
    };

    for (int i = 0; i < POOL_IN_SIZE; i++) {
        stream_pkt_t pkt;
        fixed_t val = (fixed_t)input_vals[i];
        pkt.data.range(15,0) = val.range(15,0);
        pkt.keep = 0xFF;
        pkt.last = (i == POOL_IN_SIZE - 1) ? 1 : 0;
        in_stream.write(pkt);
    }

    // ── Expected output ───────────────────────────────────
    float expected[POOL_OUT_SIZE] = {6, 4, 7, 9};

    // ── Call DUT ──────────────────────────────────────────
    maxpool(in_stream, out_stream);

    // ── Verify ────────────────────────────────────────────
    std::cout << "==============================" << std::endl;
    std::cout << "MaxPool Testbench (AXI-Stream)" << std::endl;
    std::cout << "==============================" << std::endl;

    int pass = 0, fail = 0;
    float tolerance = 0.1f;

    for (int i = 0; i < POOL_OUT_SIZE; i++) {
        stream_pkt_t pkt = out_stream.read();
        fixed_t val;
        val.range(15,0) = pkt.data.range(15,0);
        float got = (float)val;
        float exp = expected[i];
        bool ok = (std::fabs(got - exp) <= tolerance);

        int r = i / POOL_OUT_COLS;
        int c = i % POOL_OUT_COLS;
        std::cout << "  pool[" << r << "][" << c << "] = "
                  << std::setw(5) << got
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
