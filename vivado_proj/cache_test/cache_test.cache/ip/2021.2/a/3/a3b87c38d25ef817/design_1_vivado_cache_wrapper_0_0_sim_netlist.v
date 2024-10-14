// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Oct 13 13:42:14 2024
// Host        : lywong-thin running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_vivado_cache_wrapper_0_0_sim_netlist.v
// Design      : design_1_vivado_cache_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_vivado_cache_wrapper_0_0,vivado_cache_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "vivado_cache_wrapper,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
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
    axil_rready_mng);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axil_mng:axil_sbd, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_CLK, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd AWADDR" *) input [31:0]axil_awaddr_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd AWVALID" *) input axil_awvalid_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd AWREADY" *) output axil_awready_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd WDATA" *) input [31:0]axil_wdata_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd WVALID" *) input axil_wvalid_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd WREADY" *) output axil_wready_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd BRESP" *) output [1:0]axil_bresp_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd BVALID" *) output axil_bvalid_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd BREADY" *) input axil_bready_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd ARADDR" *) input [31:0]axil_araddr_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd ARVALID" *) input axil_arvalid_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd ARREADY" *) output axil_arready_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd RDATA" *) output [31:0]axil_rdata_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd RVALID" *) output axil_rvalid_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd RRESP" *) output [1:0]axil_rresp_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_sbd RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axil_sbd, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_CLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input axil_rready_sbd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng AWADDR" *) output [31:0]axil_awaddr_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng AWVALID" *) output axil_awvalid_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng AWREADY" *) input axil_awready_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng WDATA" *) output [31:0]axil_wdata_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng WVALID" *) output axil_wvalid_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng WREADY" *) input axil_wready_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng BRESP" *) input [1:0]axil_bresp_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng BVALID" *) input axil_bvalid_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng BREADY" *) output axil_bready_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng ARADDR" *) output [31:0]axil_araddr_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng ARVALID" *) output axil_arvalid_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng ARREADY" *) input axil_arready_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng RDATA" *) input [31:0]axil_rdata_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng RRESP" *) input [1:0]axil_rresp_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng RVALID" *) input axil_rvalid_mng;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axil_mng RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axil_mng, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_CLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output axil_rready_mng;

  wire \<const0> ;
  wire \<const1> ;

  assign axil_araddr_mng[31] = \<const0> ;
  assign axil_araddr_mng[30] = \<const0> ;
  assign axil_araddr_mng[29] = \<const0> ;
  assign axil_araddr_mng[28] = \<const0> ;
  assign axil_araddr_mng[27] = \<const0> ;
  assign axil_araddr_mng[26] = \<const0> ;
  assign axil_araddr_mng[25] = \<const0> ;
  assign axil_araddr_mng[24] = \<const0> ;
  assign axil_araddr_mng[23] = \<const0> ;
  assign axil_araddr_mng[22] = \<const0> ;
  assign axil_araddr_mng[21] = \<const0> ;
  assign axil_araddr_mng[20] = \<const0> ;
  assign axil_araddr_mng[19] = \<const0> ;
  assign axil_araddr_mng[18] = \<const0> ;
  assign axil_araddr_mng[17] = \<const0> ;
  assign axil_araddr_mng[16] = \<const0> ;
  assign axil_araddr_mng[15] = \<const0> ;
  assign axil_araddr_mng[14] = \<const0> ;
  assign axil_araddr_mng[13] = \<const0> ;
  assign axil_araddr_mng[12] = \<const0> ;
  assign axil_araddr_mng[11] = \<const0> ;
  assign axil_araddr_mng[10] = \<const0> ;
  assign axil_araddr_mng[9] = \<const0> ;
  assign axil_araddr_mng[8] = \<const0> ;
  assign axil_araddr_mng[7] = \<const0> ;
  assign axil_araddr_mng[6] = \<const0> ;
  assign axil_araddr_mng[5] = \<const0> ;
  assign axil_araddr_mng[4] = \<const0> ;
  assign axil_araddr_mng[3] = \<const0> ;
  assign axil_araddr_mng[2] = \<const0> ;
  assign axil_araddr_mng[1] = \<const0> ;
  assign axil_araddr_mng[0] = \<const0> ;
  assign axil_arready_sbd = \<const1> ;
  assign axil_arvalid_mng = \<const0> ;
  assign axil_awaddr_mng[31] = \<const0> ;
  assign axil_awaddr_mng[30] = \<const0> ;
  assign axil_awaddr_mng[29] = \<const0> ;
  assign axil_awaddr_mng[28] = \<const0> ;
  assign axil_awaddr_mng[27] = \<const0> ;
  assign axil_awaddr_mng[26] = \<const0> ;
  assign axil_awaddr_mng[25] = \<const0> ;
  assign axil_awaddr_mng[24] = \<const0> ;
  assign axil_awaddr_mng[23] = \<const0> ;
  assign axil_awaddr_mng[22] = \<const0> ;
  assign axil_awaddr_mng[21] = \<const0> ;
  assign axil_awaddr_mng[20] = \<const0> ;
  assign axil_awaddr_mng[19] = \<const0> ;
  assign axil_awaddr_mng[18] = \<const0> ;
  assign axil_awaddr_mng[17] = \<const0> ;
  assign axil_awaddr_mng[16] = \<const0> ;
  assign axil_awaddr_mng[15] = \<const0> ;
  assign axil_awaddr_mng[14] = \<const0> ;
  assign axil_awaddr_mng[13] = \<const0> ;
  assign axil_awaddr_mng[12] = \<const0> ;
  assign axil_awaddr_mng[11] = \<const0> ;
  assign axil_awaddr_mng[10] = \<const0> ;
  assign axil_awaddr_mng[9] = \<const0> ;
  assign axil_awaddr_mng[8] = \<const0> ;
  assign axil_awaddr_mng[7] = \<const0> ;
  assign axil_awaddr_mng[6] = \<const0> ;
  assign axil_awaddr_mng[5] = \<const0> ;
  assign axil_awaddr_mng[4] = \<const0> ;
  assign axil_awaddr_mng[3] = \<const0> ;
  assign axil_awaddr_mng[2] = \<const0> ;
  assign axil_awaddr_mng[1] = \<const0> ;
  assign axil_awaddr_mng[0] = \<const0> ;
  assign axil_awready_sbd = \<const1> ;
  assign axil_awvalid_mng = \<const0> ;
  assign axil_bready_mng = \<const0> ;
  assign axil_bresp_sbd[1] = \<const0> ;
  assign axil_bresp_sbd[0] = \<const0> ;
  assign axil_bvalid_sbd = \<const0> ;
  assign axil_rdata_sbd[31] = \<const0> ;
  assign axil_rdata_sbd[30] = \<const0> ;
  assign axil_rdata_sbd[29] = \<const0> ;
  assign axil_rdata_sbd[28] = \<const0> ;
  assign axil_rdata_sbd[27] = \<const0> ;
  assign axil_rdata_sbd[26] = \<const0> ;
  assign axil_rdata_sbd[25] = \<const0> ;
  assign axil_rdata_sbd[24] = \<const0> ;
  assign axil_rdata_sbd[23] = \<const0> ;
  assign axil_rdata_sbd[22] = \<const0> ;
  assign axil_rdata_sbd[21] = \<const0> ;
  assign axil_rdata_sbd[20] = \<const0> ;
  assign axil_rdata_sbd[19] = \<const0> ;
  assign axil_rdata_sbd[18] = \<const0> ;
  assign axil_rdata_sbd[17] = \<const0> ;
  assign axil_rdata_sbd[16] = \<const0> ;
  assign axil_rdata_sbd[15] = \<const0> ;
  assign axil_rdata_sbd[14] = \<const0> ;
  assign axil_rdata_sbd[13] = \<const0> ;
  assign axil_rdata_sbd[12] = \<const0> ;
  assign axil_rdata_sbd[11] = \<const0> ;
  assign axil_rdata_sbd[10] = \<const0> ;
  assign axil_rdata_sbd[9] = \<const0> ;
  assign axil_rdata_sbd[8] = \<const0> ;
  assign axil_rdata_sbd[7] = \<const0> ;
  assign axil_rdata_sbd[6] = \<const0> ;
  assign axil_rdata_sbd[5] = \<const0> ;
  assign axil_rdata_sbd[4] = \<const0> ;
  assign axil_rdata_sbd[3] = \<const0> ;
  assign axil_rdata_sbd[2] = \<const0> ;
  assign axil_rdata_sbd[1] = \<const0> ;
  assign axil_rdata_sbd[0] = \<const0> ;
  assign axil_rready_mng = \<const0> ;
  assign axil_rresp_sbd[1] = \<const0> ;
  assign axil_rresp_sbd[0] = \<const0> ;
  assign axil_rvalid_sbd = \<const0> ;
  assign axil_wdata_mng[31] = \<const0> ;
  assign axil_wdata_mng[30] = \<const0> ;
  assign axil_wdata_mng[29] = \<const0> ;
  assign axil_wdata_mng[28] = \<const0> ;
  assign axil_wdata_mng[27] = \<const0> ;
  assign axil_wdata_mng[26] = \<const0> ;
  assign axil_wdata_mng[25] = \<const0> ;
  assign axil_wdata_mng[24] = \<const0> ;
  assign axil_wdata_mng[23] = \<const0> ;
  assign axil_wdata_mng[22] = \<const0> ;
  assign axil_wdata_mng[21] = \<const0> ;
  assign axil_wdata_mng[20] = \<const0> ;
  assign axil_wdata_mng[19] = \<const0> ;
  assign axil_wdata_mng[18] = \<const0> ;
  assign axil_wdata_mng[17] = \<const0> ;
  assign axil_wdata_mng[16] = \<const0> ;
  assign axil_wdata_mng[15] = \<const0> ;
  assign axil_wdata_mng[14] = \<const0> ;
  assign axil_wdata_mng[13] = \<const0> ;
  assign axil_wdata_mng[12] = \<const0> ;
  assign axil_wdata_mng[11] = \<const0> ;
  assign axil_wdata_mng[10] = \<const0> ;
  assign axil_wdata_mng[9] = \<const0> ;
  assign axil_wdata_mng[8] = \<const0> ;
  assign axil_wdata_mng[7] = \<const0> ;
  assign axil_wdata_mng[6] = \<const0> ;
  assign axil_wdata_mng[5] = \<const0> ;
  assign axil_wdata_mng[4] = \<const0> ;
  assign axil_wdata_mng[3] = \<const0> ;
  assign axil_wdata_mng[2] = \<const0> ;
  assign axil_wdata_mng[1] = \<const0> ;
  assign axil_wdata_mng[0] = \<const0> ;
  assign axil_wready_sbd = \<const1> ;
  assign axil_wvalid_mng = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
