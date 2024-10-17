`timescale 1ns / 1ps

import axi_vip_pkg::*;
import axi4stream_vip_pkg::*;
import design_1_axi_vip_0_0_pkg::*; 
import design_1_axi_vip_1_0_pkg::*;




module AXI_GPIO_tb;

bit aclk = 0;
bit aresetn=0;
xil_axi_ulong addr1=32'h10111112, addr2 = 32'h11011112, addr3 = 32'h11111111, addr4 = 32'h40400000, addr5 = 32'h40500000;
xil_axi_prot_t  prot = 0;
bit [31:0] data_wr1=32'hAAAAAAAA,data_wr2=32'hBBBBBBBB, data_wr3 = 32'hCCCCCCCC, data_wr4=32'hDDDDDDDD,data_wr5=32'hEEEEEEEE;
bit [31:0] data_rd1,data_rd2;
xil_axi_resp_t resp;
integer i;

// AXI4-Stream
axi4stream_transaction       wr_transaction;



design_1_wrapper DUT
( .RST(aresetn),
  .CLK(aclk)
);


initial begin
    aclk = 0; 
    forever begin
        #10 aclk = ~aclk;
    end
end



design_1_axi_vip_0_0_mst_t      master_agent;
design_1_axi_vip_1_0_slv_mem_t  slave_agent;



initial begin    //Create an agent    
    master_agent = new("master vip agent",DUT.design_1_i.axi_vip_0.inst.IF);    
    slave_agent = new("slave vip agent",DUT.design_1_i.axi_vip_1.inst.IF);
    
    //DUT.design_1_i.axi_vip_1.inst.IF.set_xilinx_no_strb_address_check_to_warn();
    // Agent tag
    slave_agent.set_agent_tag("My Slave VIP");
    master_agent.set_agent_tag("My Master VIP");
    

    // set print out verbosity level.    
    master_agent.set_verbosity(400);   
    slave_agent.set_verbosity(400); 
    

    //Start the agent    
    master_agent.start_master();
    slave_agent.start_slave();
    
    slave_agent.mem_model.set_memory_fill_policy(XIL_AXI_MEMORY_FILL_RANDOM);


    #20ns    aresetn = 1;
    #20ns     master_agent.AXI4LITE_WRITE_BURST(addr3,prot,data_wr3,resp);
    #200ns    master_agent.AXI4LITE_WRITE_BURST(addr2,prot,data_wr2,resp);   
    #200ns     master_agent.AXI4LITE_WRITE_BURST(addr1,prot,data_wr1,resp);
    #200ns     master_agent.AXI4LITE_READ_BURST(addr1,prot,data_rd1,resp);
    #200ns     master_agent.AXI4LITE_WRITE_BURST(addr1,prot,data_wr4,resp);
    #200ns     master_agent.AXI4LITE_READ_BURST(addr1,prot,data_rd1,resp);

 end

endmodule


