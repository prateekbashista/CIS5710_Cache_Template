// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Oct 13 13:42:14 2024
// Host        : lywong-thin running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_vivado_cache_wrapper_0_0_stub.v
// Design      : design_1_vivado_cache_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vivado_cache_wrapper,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst_n, axil_awaddr_sbd, axil_awvalid_sbd, 
  axil_awready_sbd, axil_wdata_sbd, axil_wvalid_sbd, axil_wready_sbd, axil_bresp_sbd, 
  axil_bvalid_sbd, axil_bready_sbd, axil_araddr_sbd, axil_arvalid_sbd, axil_arready_sbd, 
  axil_rdata_sbd, axil_rvalid_sbd, axil_rresp_sbd, axil_rready_sbd, axil_awaddr_mng, 
  axil_awvalid_mng, axil_awready_mng, axil_wdata_mng, axil_wvalid_mng, axil_wready_mng, 
  axil_bresp_mng, axil_bvalid_mng, axil_bready_mng, axil_araddr_mng, axil_arvalid_mng, 
  axil_arready_mng, axil_rdata_mng, axil_rresp_mng, axil_rvalid_mng, axil_rready_mng)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,axil_awaddr_sbd[31:0],axil_awvalid_sbd,axil_awready_sbd,axil_wdata_sbd[31:0],axil_wvalid_sbd,axil_wready_sbd,axil_bresp_sbd[1:0],axil_bvalid_sbd,axil_bready_sbd,axil_araddr_sbd[31:0],axil_arvalid_sbd,axil_arready_sbd,axil_rdata_sbd[31:0],axil_rvalid_sbd,axil_rresp_sbd[1:0],axil_rready_sbd,axil_awaddr_mng[31:0],axil_awvalid_mng,axil_awready_mng,axil_wdata_mng[31:0],axil_wvalid_mng,axil_wready_mng,axil_bresp_mng[1:0],axil_bvalid_mng,axil_bready_mng,axil_araddr_mng[31:0],axil_arvalid_mng,axil_arready_mng,axil_rdata_mng[31:0],axil_rresp_mng[1:0],axil_rvalid_mng,axil_rready_mng" */;
  input clk;
  input rst_n;
  input [31:0]axil_awaddr_sbd;
  input axil_awvalid_sbd;
  output axil_awready_sbd;
  input [31:0]axil_wdata_sbd;
  input axil_wvalid_sbd;
  output axil_wready_sbd;
  output [1:0]axil_bresp_sbd;
  output axil_bvalid_sbd;
  input axil_bready_sbd;
  input [31:0]axil_araddr_sbd;
  input axil_arvalid_sbd;
  output axil_arready_sbd;
  output [31:0]axil_rdata_sbd;
  output axil_rvalid_sbd;
  output [1:0]axil_rresp_sbd;
  input axil_rready_sbd;
  output [31:0]axil_awaddr_mng;
  output axil_awvalid_mng;
  input axil_awready_mng;
  output [31:0]axil_wdata_mng;
  output axil_wvalid_mng;
  input axil_wready_mng;
  input [1:0]axil_bresp_mng;
  input axil_bvalid_mng;
  output axil_bready_mng;
  output [31:0]axil_araddr_mng;
  output axil_arvalid_mng;
  input axil_arready_mng;
  input [31:0]axil_rdata_mng;
  input [1:0]axil_rresp_mng;
  input axil_rvalid_mng;
  output axil_rready_mng;
endmodule
