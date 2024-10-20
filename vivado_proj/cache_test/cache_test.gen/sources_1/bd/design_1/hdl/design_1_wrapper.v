//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Thu Oct 17 13:22:56 2024
//Host        : lywong-thin running 64-bit unknown
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (CLK,
    RST);
  input CLK;
  input RST;

  wire CLK;
  wire RST;

  design_1 design_1_i
       (.CLK(CLK),
        .RST(RST));
endmodule
