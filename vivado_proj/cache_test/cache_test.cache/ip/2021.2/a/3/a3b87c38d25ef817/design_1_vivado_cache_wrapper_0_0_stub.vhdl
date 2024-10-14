-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sun Oct 13 13:42:14 2024
-- Host        : lywong-thin running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_vivado_cache_wrapper_0_0_stub.vhdl
-- Design      : design_1_vivado_cache_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    axil_awaddr_sbd : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_awvalid_sbd : in STD_LOGIC;
    axil_awready_sbd : out STD_LOGIC;
    axil_wdata_sbd : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_wvalid_sbd : in STD_LOGIC;
    axil_wready_sbd : out STD_LOGIC;
    axil_bresp_sbd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axil_bvalid_sbd : out STD_LOGIC;
    axil_bready_sbd : in STD_LOGIC;
    axil_araddr_sbd : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_arvalid_sbd : in STD_LOGIC;
    axil_arready_sbd : out STD_LOGIC;
    axil_rdata_sbd : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_rvalid_sbd : out STD_LOGIC;
    axil_rresp_sbd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axil_rready_sbd : in STD_LOGIC;
    axil_awaddr_mng : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_awvalid_mng : out STD_LOGIC;
    axil_awready_mng : in STD_LOGIC;
    axil_wdata_mng : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_wvalid_mng : out STD_LOGIC;
    axil_wready_mng : in STD_LOGIC;
    axil_bresp_mng : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axil_bvalid_mng : in STD_LOGIC;
    axil_bready_mng : out STD_LOGIC;
    axil_araddr_mng : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_arvalid_mng : out STD_LOGIC;
    axil_arready_mng : in STD_LOGIC;
    axil_rdata_mng : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_rresp_mng : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axil_rvalid_mng : in STD_LOGIC;
    axil_rready_mng : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,axil_awaddr_sbd[31:0],axil_awvalid_sbd,axil_awready_sbd,axil_wdata_sbd[31:0],axil_wvalid_sbd,axil_wready_sbd,axil_bresp_sbd[1:0],axil_bvalid_sbd,axil_bready_sbd,axil_araddr_sbd[31:0],axil_arvalid_sbd,axil_arready_sbd,axil_rdata_sbd[31:0],axil_rvalid_sbd,axil_rresp_sbd[1:0],axil_rready_sbd,axil_awaddr_mng[31:0],axil_awvalid_mng,axil_awready_mng,axil_wdata_mng[31:0],axil_wvalid_mng,axil_wready_mng,axil_bresp_mng[1:0],axil_bvalid_mng,axil_bready_mng,axil_araddr_mng[31:0],axil_arvalid_mng,axil_arready_mng,axil_rdata_mng[31:0],axil_rresp_mng[1:0],axil_rvalid_mng,axil_rready_mng";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vivado_cache_wrapper,Vivado 2021.2";
begin
end;
