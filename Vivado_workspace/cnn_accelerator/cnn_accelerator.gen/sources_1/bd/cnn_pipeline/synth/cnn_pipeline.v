//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Fri Jun 12 17:33:48 2026
//Host        : DESKTOP-1HEQ2M2 running 64-bit major release  (build 9200)
//Command     : generate_target cnn_pipeline.bd
//Design      : cnn_pipeline
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "cnn_pipeline,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=cnn_pipeline,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=3,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=4,da_zynq_ultra_ps_e_cnt=2,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "cnn_pipeline.hwdef" *) 
module cnn_pipeline
   ();

  wire [15:0]axi_dma_0_M_AXIS_MM2S_TDATA;
  wire [1:0]axi_dma_0_M_AXIS_MM2S_TKEEP;
  wire axi_dma_0_M_AXIS_MM2S_TLAST;
  wire axi_dma_0_M_AXIS_MM2S_TREADY;
  wire axi_dma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARPROT;
  wire axi_dma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARSIZE;
  wire axi_dma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_RDATA;
  wire axi_dma_0_M_AXI_MM2S_RLAST;
  wire axi_dma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_0_M_AXI_MM2S_RRESP;
  wire axi_dma_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWPROT;
  wire axi_dma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWSIZE;
  wire axi_dma_0_M_AXI_S2MM_AWVALID;
  wire axi_dma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_0_M_AXI_S2MM_BRESP;
  wire axi_dma_0_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_0_M_AXI_S2MM_WDATA;
  wire axi_dma_0_M_AXI_S2MM_WLAST;
  wire axi_dma_0_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_0_M_AXI_S2MM_WSTRB;
  wire axi_dma_0_M_AXI_S2MM_WVALID;
  wire [48:0]axi_smc_1_M00_AXI_ARADDR;
  wire [1:0]axi_smc_1_M00_AXI_ARBURST;
  wire [3:0]axi_smc_1_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_1_M00_AXI_ARLEN;
  wire [0:0]axi_smc_1_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_1_M00_AXI_ARPROT;
  wire [3:0]axi_smc_1_M00_AXI_ARQOS;
  wire axi_smc_1_M00_AXI_ARREADY;
  wire [2:0]axi_smc_1_M00_AXI_ARSIZE;
  wire axi_smc_1_M00_AXI_ARVALID;
  wire [48:0]axi_smc_1_M00_AXI_AWADDR;
  wire [1:0]axi_smc_1_M00_AXI_AWBURST;
  wire [3:0]axi_smc_1_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_1_M00_AXI_AWLEN;
  wire [0:0]axi_smc_1_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_1_M00_AXI_AWPROT;
  wire [3:0]axi_smc_1_M00_AXI_AWQOS;
  wire axi_smc_1_M00_AXI_AWREADY;
  wire [2:0]axi_smc_1_M00_AXI_AWSIZE;
  wire axi_smc_1_M00_AXI_AWVALID;
  wire axi_smc_1_M00_AXI_BREADY;
  wire [1:0]axi_smc_1_M00_AXI_BRESP;
  wire axi_smc_1_M00_AXI_BVALID;
  wire [127:0]axi_smc_1_M00_AXI_RDATA;
  wire axi_smc_1_M00_AXI_RLAST;
  wire axi_smc_1_M00_AXI_RREADY;
  wire [1:0]axi_smc_1_M00_AXI_RRESP;
  wire axi_smc_1_M00_AXI_RVALID;
  wire [127:0]axi_smc_1_M00_AXI_WDATA;
  wire axi_smc_1_M00_AXI_WLAST;
  wire axi_smc_1_M00_AXI_WREADY;
  wire [15:0]axi_smc_1_M00_AXI_WSTRB;
  wire axi_smc_1_M00_AXI_WVALID;
  wire [48:0]axi_smc_1_M01_AXI_ARADDR;
  wire [1:0]axi_smc_1_M01_AXI_ARBURST;
  wire [3:0]axi_smc_1_M01_AXI_ARCACHE;
  wire [7:0]axi_smc_1_M01_AXI_ARLEN;
  wire [0:0]axi_smc_1_M01_AXI_ARLOCK;
  wire [2:0]axi_smc_1_M01_AXI_ARPROT;
  wire [3:0]axi_smc_1_M01_AXI_ARQOS;
  wire axi_smc_1_M01_AXI_ARREADY;
  wire [2:0]axi_smc_1_M01_AXI_ARSIZE;
  wire axi_smc_1_M01_AXI_ARVALID;
  wire [48:0]axi_smc_1_M01_AXI_AWADDR;
  wire [1:0]axi_smc_1_M01_AXI_AWBURST;
  wire [3:0]axi_smc_1_M01_AXI_AWCACHE;
  wire [7:0]axi_smc_1_M01_AXI_AWLEN;
  wire [0:0]axi_smc_1_M01_AXI_AWLOCK;
  wire [2:0]axi_smc_1_M01_AXI_AWPROT;
  wire [3:0]axi_smc_1_M01_AXI_AWQOS;
  wire axi_smc_1_M01_AXI_AWREADY;
  wire [2:0]axi_smc_1_M01_AXI_AWSIZE;
  wire axi_smc_1_M01_AXI_AWVALID;
  wire axi_smc_1_M01_AXI_BREADY;
  wire [1:0]axi_smc_1_M01_AXI_BRESP;
  wire axi_smc_1_M01_AXI_BVALID;
  wire [127:0]axi_smc_1_M01_AXI_RDATA;
  wire axi_smc_1_M01_AXI_RLAST;
  wire axi_smc_1_M01_AXI_RREADY;
  wire [1:0]axi_smc_1_M01_AXI_RRESP;
  wire axi_smc_1_M01_AXI_RVALID;
  wire [127:0]axi_smc_1_M01_AXI_WDATA;
  wire axi_smc_1_M01_AXI_WLAST;
  wire axi_smc_1_M01_AXI_WREADY;
  wire [15:0]axi_smc_1_M01_AXI_WSTRB;
  wire axi_smc_1_M01_AXI_WVALID;
  wire [9:0]axi_smc_M00_AXI_ARADDR;
  wire axi_smc_M00_AXI_ARREADY;
  wire axi_smc_M00_AXI_ARVALID;
  wire [9:0]axi_smc_M00_AXI_AWADDR;
  wire axi_smc_M00_AXI_AWREADY;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WREADY;
  wire axi_smc_M00_AXI_WVALID;
  wire [15:0]conv2d_0_out_stream_TDATA;
  wire [1:0]conv2d_0_out_stream_TKEEP;
  wire [0:0]conv2d_0_out_stream_TLAST;
  wire conv2d_0_out_stream_TREADY;
  wire [1:0]conv2d_0_out_stream_TSTRB;
  wire conv2d_0_out_stream_TVALID;
  wire [15:0]fifo_generator_0_M_AXIS_TDATA;
  wire fifo_generator_0_M_AXIS_TREADY;
  wire fifo_generator_0_M_AXIS_TVALID;
  wire [15:0]maxpool_0_out_stream_TDATA;
  wire [1:0]maxpool_0_out_stream_TKEEP;
  wire [0:0]maxpool_0_out_stream_TLAST;
  wire maxpool_0_out_stream_TREADY;
  wire maxpool_0_out_stream_TVALID;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [15:0]relu_0_out_stream_TDATA;
  wire [1:0]relu_0_out_stream_TKEEP;
  wire [0:0]relu_0_out_stream_TLAST;
  wire relu_0_out_stream_TREADY;
  wire [1:0]relu_0_out_stream_TSTRB;
  wire relu_0_out_stream_TVALID;
  wire [0:0]xlconstant_0_dout;
  wire [15:0]xlconstant_1_dout;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  cnn_pipeline_axi_dma_0_1 axi_dma_0
       (.axi_resetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_mm2s_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_mm2s_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_s2mm_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_lite_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_lite_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_lite_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_lite_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_lite_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_lite_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_lite_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_lite_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_lite_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_lite_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_lite_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_lite_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_lite_wvalid(axi_smc_M00_AXI_WVALID),
        .s_axis_s2mm_tdata(maxpool_0_out_stream_TDATA),
        .s_axis_s2mm_tkeep(maxpool_0_out_stream_TKEEP),
        .s_axis_s2mm_tlast(maxpool_0_out_stream_TLAST),
        .s_axis_s2mm_tready(maxpool_0_out_stream_TREADY),
        .s_axis_s2mm_tvalid(maxpool_0_out_stream_TVALID));
  cnn_pipeline_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  cnn_pipeline_axi_smc_1_0 axi_smc_1
       (.M00_AXI_araddr(axi_smc_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_1_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_1_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_smc_1_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_smc_1_M01_AXI_ARCACHE),
        .M01_AXI_arlen(axi_smc_1_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_smc_1_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_smc_1_M01_AXI_ARPROT),
        .M01_AXI_arqos(axi_smc_1_M01_AXI_ARQOS),
        .M01_AXI_arready(axi_smc_1_M01_AXI_ARREADY),
        .M01_AXI_arsize(axi_smc_1_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(axi_smc_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_1_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_smc_1_M01_AXI_AWBURST),
        .M01_AXI_awcache(axi_smc_1_M01_AXI_AWCACHE),
        .M01_AXI_awlen(axi_smc_1_M01_AXI_AWLEN),
        .M01_AXI_awlock(axi_smc_1_M01_AXI_AWLOCK),
        .M01_AXI_awprot(axi_smc_1_M01_AXI_AWPROT),
        .M01_AXI_awqos(axi_smc_1_M01_AXI_AWQOS),
        .M01_AXI_awready(axi_smc_1_M01_AXI_AWREADY),
        .M01_AXI_awsize(axi_smc_1_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(axi_smc_1_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_1_M01_AXI_RDATA),
        .M01_AXI_rlast(axi_smc_1_M01_AXI_RLAST),
        .M01_AXI_rready(axi_smc_1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_1_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_smc_1_M01_AXI_WLAST),
        .M01_AXI_wready(axi_smc_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_1_M01_AXI_WVALID),
        .S00_AXI_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .S01_AXI_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  cnn_pipeline_conv2d_0_1 conv2d_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .ap_start(xlconstant_0_dout),
        .bias(xlconstant_1_dout),
        .in_stream_TDATA(axi_dma_0_M_AXIS_MM2S_TDATA),
        .in_stream_TKEEP(axi_dma_0_M_AXIS_MM2S_TKEEP),
        .in_stream_TLAST(axi_dma_0_M_AXIS_MM2S_TLAST),
        .in_stream_TREADY(axi_dma_0_M_AXIS_MM2S_TREADY),
        .in_stream_TSTRB({1'b1,1'b1}),
        .in_stream_TVALID(axi_dma_0_M_AXIS_MM2S_TVALID),
        .out_stream_TDATA(conv2d_0_out_stream_TDATA),
        .out_stream_TKEEP(conv2d_0_out_stream_TKEEP),
        .out_stream_TLAST(conv2d_0_out_stream_TLAST),
        .out_stream_TREADY(conv2d_0_out_stream_TREADY),
        .out_stream_TSTRB(conv2d_0_out_stream_TSTRB),
        .out_stream_TVALID(conv2d_0_out_stream_TVALID),
        .weight_stream_TDATA(fifo_generator_0_M_AXIS_TDATA),
        .weight_stream_TKEEP({1'b1,1'b1}),
        .weight_stream_TLAST(1'b0),
        .weight_stream_TREADY(fifo_generator_0_M_AXIS_TREADY),
        .weight_stream_TSTRB({1'b1,1'b1}),
        .weight_stream_TVALID(fifo_generator_0_M_AXIS_TVALID));
  cnn_pipeline_fifo_generator_0_0 fifo_generator_0
       (.m_axis_tdata(fifo_generator_0_M_AXIS_TDATA),
        .m_axis_tready(fifo_generator_0_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_generator_0_M_AXIS_TVALID),
        .s_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0));
  cnn_pipeline_maxpool_0_1 maxpool_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .ap_start(xlconstant_0_dout),
        .in_stream_TDATA(relu_0_out_stream_TDATA),
        .in_stream_TKEEP(relu_0_out_stream_TKEEP),
        .in_stream_TLAST(relu_0_out_stream_TLAST),
        .in_stream_TREADY(relu_0_out_stream_TREADY),
        .in_stream_TSTRB(relu_0_out_stream_TSTRB),
        .in_stream_TVALID(relu_0_out_stream_TVALID),
        .out_stream_TDATA(maxpool_0_out_stream_TDATA),
        .out_stream_TKEEP(maxpool_0_out_stream_TKEEP),
        .out_stream_TLAST(maxpool_0_out_stream_TLAST),
        .out_stream_TREADY(maxpool_0_out_stream_TREADY),
        .out_stream_TVALID(maxpool_0_out_stream_TVALID));
  cnn_pipeline_proc_sys_reset_0_1 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  cnn_pipeline_relu_0_1 relu_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .ap_start(xlconstant_0_dout),
        .in_stream_TDATA(conv2d_0_out_stream_TDATA),
        .in_stream_TKEEP(conv2d_0_out_stream_TKEEP),
        .in_stream_TLAST(conv2d_0_out_stream_TLAST),
        .in_stream_TREADY(conv2d_0_out_stream_TREADY),
        .in_stream_TSTRB(conv2d_0_out_stream_TSTRB),
        .in_stream_TVALID(conv2d_0_out_stream_TVALID),
        .out_stream_TDATA(relu_0_out_stream_TDATA),
        .out_stream_TKEEP(relu_0_out_stream_TKEEP),
        .out_stream_TLAST(relu_0_out_stream_TLAST),
        .out_stream_TREADY(relu_0_out_stream_TREADY),
        .out_stream_TSTRB(relu_0_out_stream_TSTRB),
        .out_stream_TVALID(relu_0_out_stream_TVALID));
  cnn_pipeline_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  cnn_pipeline_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  cnn_pipeline_zynq_ultra_ps_e_0_1 zynq_ultra_ps_e_0
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp0_araddr(axi_smc_1_M00_AXI_ARADDR),
        .saxigp0_arburst(axi_smc_1_M00_AXI_ARBURST),
        .saxigp0_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .saxigp0_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arlen(axi_smc_1_M00_AXI_ARLEN),
        .saxigp0_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .saxigp0_arprot(axi_smc_1_M00_AXI_ARPROT),
        .saxigp0_arqos(axi_smc_1_M00_AXI_ARQOS),
        .saxigp0_arready(axi_smc_1_M00_AXI_ARREADY),
        .saxigp0_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .saxigp0_aruser(1'b0),
        .saxigp0_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .saxigp0_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .saxigp0_awburst(axi_smc_1_M00_AXI_AWBURST),
        .saxigp0_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .saxigp0_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awlen(axi_smc_1_M00_AXI_AWLEN),
        .saxigp0_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .saxigp0_awprot(axi_smc_1_M00_AXI_AWPROT),
        .saxigp0_awqos(axi_smc_1_M00_AXI_AWQOS),
        .saxigp0_awready(axi_smc_1_M00_AXI_AWREADY),
        .saxigp0_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .saxigp0_awuser(1'b0),
        .saxigp0_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .saxigp0_bready(axi_smc_1_M00_AXI_BREADY),
        .saxigp0_bresp(axi_smc_1_M00_AXI_BRESP),
        .saxigp0_bvalid(axi_smc_1_M00_AXI_BVALID),
        .saxigp0_rdata(axi_smc_1_M00_AXI_RDATA),
        .saxigp0_rlast(axi_smc_1_M00_AXI_RLAST),
        .saxigp0_rready(axi_smc_1_M00_AXI_RREADY),
        .saxigp0_rresp(axi_smc_1_M00_AXI_RRESP),
        .saxigp0_rvalid(axi_smc_1_M00_AXI_RVALID),
        .saxigp0_wdata(axi_smc_1_M00_AXI_WDATA),
        .saxigp0_wlast(axi_smc_1_M00_AXI_WLAST),
        .saxigp0_wready(axi_smc_1_M00_AXI_WREADY),
        .saxigp0_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .saxigp0_wvalid(axi_smc_1_M00_AXI_WVALID),
        .saxigp1_araddr(axi_smc_1_M01_AXI_ARADDR),
        .saxigp1_arburst(axi_smc_1_M01_AXI_ARBURST),
        .saxigp1_arcache(axi_smc_1_M01_AXI_ARCACHE),
        .saxigp1_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp1_arlen(axi_smc_1_M01_AXI_ARLEN),
        .saxigp1_arlock(axi_smc_1_M01_AXI_ARLOCK),
        .saxigp1_arprot(axi_smc_1_M01_AXI_ARPROT),
        .saxigp1_arqos(axi_smc_1_M01_AXI_ARQOS),
        .saxigp1_arready(axi_smc_1_M01_AXI_ARREADY),
        .saxigp1_arsize(axi_smc_1_M01_AXI_ARSIZE),
        .saxigp1_aruser(1'b0),
        .saxigp1_arvalid(axi_smc_1_M01_AXI_ARVALID),
        .saxigp1_awaddr(axi_smc_1_M01_AXI_AWADDR),
        .saxigp1_awburst(axi_smc_1_M01_AXI_AWBURST),
        .saxigp1_awcache(axi_smc_1_M01_AXI_AWCACHE),
        .saxigp1_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp1_awlen(axi_smc_1_M01_AXI_AWLEN),
        .saxigp1_awlock(axi_smc_1_M01_AXI_AWLOCK),
        .saxigp1_awprot(axi_smc_1_M01_AXI_AWPROT),
        .saxigp1_awqos(axi_smc_1_M01_AXI_AWQOS),
        .saxigp1_awready(axi_smc_1_M01_AXI_AWREADY),
        .saxigp1_awsize(axi_smc_1_M01_AXI_AWSIZE),
        .saxigp1_awuser(1'b0),
        .saxigp1_awvalid(axi_smc_1_M01_AXI_AWVALID),
        .saxigp1_bready(axi_smc_1_M01_AXI_BREADY),
        .saxigp1_bresp(axi_smc_1_M01_AXI_BRESP),
        .saxigp1_bvalid(axi_smc_1_M01_AXI_BVALID),
        .saxigp1_rdata(axi_smc_1_M01_AXI_RDATA),
        .saxigp1_rlast(axi_smc_1_M01_AXI_RLAST),
        .saxigp1_rready(axi_smc_1_M01_AXI_RREADY),
        .saxigp1_rresp(axi_smc_1_M01_AXI_RRESP),
        .saxigp1_rvalid(axi_smc_1_M01_AXI_RVALID),
        .saxigp1_wdata(axi_smc_1_M01_AXI_WDATA),
        .saxigp1_wlast(axi_smc_1_M01_AXI_WLAST),
        .saxigp1_wready(axi_smc_1_M01_AXI_WREADY),
        .saxigp1_wstrb(axi_smc_1_M01_AXI_WSTRB),
        .saxigp1_wvalid(axi_smc_1_M01_AXI_WVALID),
        .saxihpc0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihpc1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule
