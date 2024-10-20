//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Thu Oct 17 13:22:56 2024
//Host        : lywong-thin running 64-bit unknown
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=6,da_clkrst_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK,
    RST);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET RST, CLK_DOMAIN design_1_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input RST;

  wire Net;
  wire [31:0]axi_vip_0_M_AXI_ARADDR;
  wire axi_vip_0_M_AXI_ARREADY;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire axi_vip_0_M_AXI_AWREADY;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WREADY;
  wire axi_vip_0_M_AXI_WVALID;
  wire clk_wiz_clk_out1;
  wire [31:0]vivado_cache_wrapper_0_axil_mng_ARADDR;
  wire vivado_cache_wrapper_0_axil_mng_ARREADY;
  wire vivado_cache_wrapper_0_axil_mng_ARVALID;
  wire [31:0]vivado_cache_wrapper_0_axil_mng_AWADDR;
  wire vivado_cache_wrapper_0_axil_mng_AWREADY;
  wire vivado_cache_wrapper_0_axil_mng_AWVALID;
  wire vivado_cache_wrapper_0_axil_mng_BREADY;
  wire [1:0]vivado_cache_wrapper_0_axil_mng_BRESP;
  wire vivado_cache_wrapper_0_axil_mng_BVALID;
  wire [31:0]vivado_cache_wrapper_0_axil_mng_RDATA;
  wire vivado_cache_wrapper_0_axil_mng_RREADY;
  wire [1:0]vivado_cache_wrapper_0_axil_mng_RRESP;
  wire vivado_cache_wrapper_0_axil_mng_RVALID;
  wire [31:0]vivado_cache_wrapper_0_axil_mng_WDATA;
  wire vivado_cache_wrapper_0_axil_mng_WREADY;
  wire vivado_cache_wrapper_0_axil_mng_WVALID;

  assign Net = RST;
  assign clk_wiz_clk_out1 = CLK;
  design_1_axi_vip_0_0 axi_vip_0
       (.aclk(clk_wiz_clk_out1),
        .aresetn(Net),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  design_1_axi_vip_1_0 axi_vip_1
       (.aclk(clk_wiz_clk_out1),
        .aresetn(Net),
        .s_axi_araddr(vivado_cache_wrapper_0_axil_mng_ARADDR),
        .s_axi_arready(vivado_cache_wrapper_0_axil_mng_ARREADY),
        .s_axi_arvalid(vivado_cache_wrapper_0_axil_mng_ARVALID),
        .s_axi_awaddr(vivado_cache_wrapper_0_axil_mng_AWADDR),
        .s_axi_awready(vivado_cache_wrapper_0_axil_mng_AWREADY),
        .s_axi_awvalid(vivado_cache_wrapper_0_axil_mng_AWVALID),
        .s_axi_bready(vivado_cache_wrapper_0_axil_mng_BREADY),
        .s_axi_bresp(vivado_cache_wrapper_0_axil_mng_BRESP),
        .s_axi_bvalid(vivado_cache_wrapper_0_axil_mng_BVALID),
        .s_axi_rdata(vivado_cache_wrapper_0_axil_mng_RDATA),
        .s_axi_rready(vivado_cache_wrapper_0_axil_mng_RREADY),
        .s_axi_rresp(vivado_cache_wrapper_0_axil_mng_RRESP),
        .s_axi_rvalid(vivado_cache_wrapper_0_axil_mng_RVALID),
        .s_axi_wdata(vivado_cache_wrapper_0_axil_mng_WDATA),
        .s_axi_wready(vivado_cache_wrapper_0_axil_mng_WREADY),
        .s_axi_wvalid(vivado_cache_wrapper_0_axil_mng_WVALID));
  design_1_vivado_cache_wrapper_0_0 vivado_cache_wrapper_0
       (.axil_araddr_mng(vivado_cache_wrapper_0_axil_mng_ARADDR),
        .axil_araddr_sbd(axi_vip_0_M_AXI_ARADDR),
        .axil_arready_mng(vivado_cache_wrapper_0_axil_mng_ARREADY),
        .axil_arready_sbd(axi_vip_0_M_AXI_ARREADY),
        .axil_arvalid_mng(vivado_cache_wrapper_0_axil_mng_ARVALID),
        .axil_arvalid_sbd(axi_vip_0_M_AXI_ARVALID),
        .axil_awaddr_mng(vivado_cache_wrapper_0_axil_mng_AWADDR),
        .axil_awaddr_sbd(axi_vip_0_M_AXI_AWADDR),
        .axil_awready_mng(vivado_cache_wrapper_0_axil_mng_AWREADY),
        .axil_awready_sbd(axi_vip_0_M_AXI_AWREADY),
        .axil_awvalid_mng(vivado_cache_wrapper_0_axil_mng_AWVALID),
        .axil_awvalid_sbd(axi_vip_0_M_AXI_AWVALID),
        .axil_bready_mng(vivado_cache_wrapper_0_axil_mng_BREADY),
        .axil_bready_sbd(axi_vip_0_M_AXI_BREADY),
        .axil_bresp_mng(vivado_cache_wrapper_0_axil_mng_BRESP),
        .axil_bresp_sbd(axi_vip_0_M_AXI_BRESP),
        .axil_bvalid_mng(vivado_cache_wrapper_0_axil_mng_BVALID),
        .axil_bvalid_sbd(axi_vip_0_M_AXI_BVALID),
        .axil_rdata_mng(vivado_cache_wrapper_0_axil_mng_RDATA),
        .axil_rdata_sbd(axi_vip_0_M_AXI_RDATA),
        .axil_rready_mng(vivado_cache_wrapper_0_axil_mng_RREADY),
        .axil_rready_sbd(axi_vip_0_M_AXI_RREADY),
        .axil_rresp_mng(vivado_cache_wrapper_0_axil_mng_RRESP),
        .axil_rresp_sbd(axi_vip_0_M_AXI_RRESP),
        .axil_rvalid_mng(vivado_cache_wrapper_0_axil_mng_RVALID),
        .axil_rvalid_sbd(axi_vip_0_M_AXI_RVALID),
        .axil_wdata_mng(vivado_cache_wrapper_0_axil_mng_WDATA),
        .axil_wdata_sbd(axi_vip_0_M_AXI_WDATA),
        .axil_wready_mng(vivado_cache_wrapper_0_axil_mng_WREADY),
        .axil_wready_sbd(axi_vip_0_M_AXI_WREADY),
        .axil_wvalid_mng(vivado_cache_wrapper_0_axil_mng_WVALID),
        .axil_wvalid_sbd(axi_vip_0_M_AXI_WVALID),
        .clk(clk_wiz_clk_out1),
        .rst_n(Net));
endmodule
