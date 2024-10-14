// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:vivado_cache_wrapper:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_vivado_cache_wrapper_0_0 (
  clk,
  rst_n,
  axil_awaddr_sbd,
  axil_awvalid_sbd,
  axil_awready_sbd,
  axil_wdata_sbd,
  axil_wvalid_sbd,
  axil_wready_sbd,
  axil_bresp_sbd,
  axil_bvalid_sbd,
  axil_bready_sbd,
  axil_araddr_sbd,
  axil_arvalid_sbd,
  axil_arready_sbd,
  axil_rdata_sbd,
  axil_rvalid_sbd,
  axil_rresp_sbd,
  axil_rready_sbd,
  axil_awaddr_mng,
  axil_awvalid_mng,
  axil_awready_mng,
  axil_wdata_mng,
  axil_wvalid_mng,
  axil_wready_mng,
  axil_bresp_mng,
  axil_bvalid_mng,
  axil_bready_mng,
  axil_araddr_mng,
  axil_arvalid_mng,
  axil_arready_mng,
  axil_rdata_mng,
  axil_rresp_mng,
  axil_rvalid_mng,
  axil_rready_mng
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axil_mng:axil_sbd, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_CLK, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd AWADDR" *)
input wire [31 : 0] axil_awaddr_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd AWVALID" *)
input wire axil_awvalid_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd AWREADY" *)
output wire axil_awready_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd WDATA" *)
input wire [31 : 0] axil_wdata_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd WVALID" *)
input wire axil_wvalid_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd WREADY" *)
output wire axil_wready_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd BRESP" *)
output wire [1 : 0] axil_bresp_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd BVALID" *)
output wire axil_bvalid_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd BREADY" *)
input wire axil_bready_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd ARADDR" *)
input wire [31 : 0] axil_araddr_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd ARVALID" *)
input wire axil_arvalid_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd ARREADY" *)
output wire axil_arready_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd RDATA" *)
output wire [31 : 0] axil_rdata_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd RVALID" *)
output wire axil_rvalid_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd RRESP" *)
output wire [1 : 0] axil_rresp_sbd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axil_sbd, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_CLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RU\
SER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd RREADY" *)
input wire axil_rready_sbd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng AWADDR" *)
output wire [31 : 0] axil_awaddr_mng;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng AWVALID" *)
output wire axil_awvalid_mng;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng AWREADY" *)
input wire axil_awready_mng;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng WDATA" *)
output wire [31 : 0] axil_wdata_mng;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng WVALID" *)
output wire axil_wvalid_mng;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng WREADY" *)
input wire axil_wready_mng;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng BRESP" *)
input wire [1 : 0] axil_bresp_mng;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng BVALID" *)
input wire axil_bvalid_mng;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng BREADY" *)
output wire axil_bready_mng;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng ARADDR" *)
output wire [31 : 0] axil_araddr_mng;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng ARVALID" *)
output wire axil_arvalid_mng;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng ARREADY" *)
input wire axil_arready_mng;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng RDATA" *)
input wire [31 : 0] axil_rdata_mng;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng RRESP" *)
input wire [1 : 0] axil_rresp_mng;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng RVALID" *)
input wire axil_rvalid_mng;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axil_mng, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_CLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RU\
SER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng RREADY" *)
output wire axil_rready_mng;

  vivado_cache_wrapper inst (
    .clk(clk),
    .rst_n(rst_n),
    .axil_awaddr_sbd(axil_awaddr_sbd),
    .axil_awvalid_sbd(axil_awvalid_sbd),
    .axil_awready_sbd(axil_awready_sbd),
    .axil_wdata_sbd(axil_wdata_sbd),
    .axil_wvalid_sbd(axil_wvalid_sbd),
    .axil_wready_sbd(axil_wready_sbd),
    .axil_bresp_sbd(axil_bresp_sbd),
    .axil_bvalid_sbd(axil_bvalid_sbd),
    .axil_bready_sbd(axil_bready_sbd),
    .axil_araddr_sbd(axil_araddr_sbd),
    .axil_arvalid_sbd(axil_arvalid_sbd),
    .axil_arready_sbd(axil_arready_sbd),
    .axil_rdata_sbd(axil_rdata_sbd),
    .axil_rvalid_sbd(axil_rvalid_sbd),
    .axil_rresp_sbd(axil_rresp_sbd),
    .axil_rready_sbd(axil_rready_sbd),
    .axil_awaddr_mng(axil_awaddr_mng),
    .axil_awvalid_mng(axil_awvalid_mng),
    .axil_awready_mng(axil_awready_mng),
    .axil_wdata_mng(axil_wdata_mng),
    .axil_wvalid_mng(axil_wvalid_mng),
    .axil_wready_mng(axil_wready_mng),
    .axil_bresp_mng(axil_bresp_mng),
    .axil_bvalid_mng(axil_bvalid_mng),
    .axil_bready_mng(axil_bready_mng),
    .axil_araddr_mng(axil_araddr_mng),
    .axil_arvalid_mng(axil_arvalid_mng),
    .axil_arready_mng(axil_arready_mng),
    .axil_rdata_mng(axil_rdata_mng),
    .axil_rresp_mng(axil_rresp_mng),
    .axil_rvalid_mng(axil_rvalid_mng),
    .axil_rready_mng(axil_rready_mng)
  );
endmodule
