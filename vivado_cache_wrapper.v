`timescale 1ns/1ps

module vivado_cache_wrapper
(
/*--------------------------------------------------------------------------
    system clock and reset
--------------------------------------------------------------------------*/
input   wire                        clk,                // System Clock
input   wire                        rst_n,              // Negative Edge Triggered Sychronous Reset

/*---------------------------------------------------------------------------
    AXI Lite Subordinate Mode - From Processor
---------------------------------------------------------------------------*/

input   wire [31:0]                 axil_awaddr_sbd,    // Write Address In
input   wire                        axil_awvalid_sbd,   // Write Address valid In
output  wire                        axil_awready_sbd,   // Write Address Ready Out

input   wire [31:0]                 axil_wdata_sbd,     // Write Data Value In
input   wire                        axil_wvalid_sbd,    // Write Data Valid In
output  wire                        axil_wready_sbd,    // Write Data Ready Out

output  wire [1:0]                  axil_bresp_sbd,     // Write Response Out
output  wire                        axil_bvalid_sbd,    // Write Response Valid Out
input   wire                        axil_bready_sbd,    // Write Response Ready In

input   wire [31:0]                 axil_araddr_sbd,    // Read Address In
input   wire                        axil_arvalid_sbd,   // Read Address Valid In
output  wire                        axil_arready_sbd,   // Read Address Ready Out

output  wire [31:0]                 axil_rdata_sbd,     // Read Data Out
output  wire                        axil_rvalid_sbd,    // Read Data Valid Out
output  wire [1:0]                  axil_rresp_sbd,     // Read Response Status Out 
input   wire                        axil_rready_sbd,    // Read Response Ready In

/*---------------------------------------------------------------------------
    AXI Lite Manager Mode - To next level of memory
---------------------------------------------------------------------------*/

output  wire [31:0]                 axil_awaddr_mng,    // Write Address Out
output  wire                        axil_awvalid_mng,   // Write Address Valid Out
input   wire                        axil_awready_mng,   // Write Address Ready In

output  wire [31:0]                 axil_wdata_mng,     // Write Data Out
output  wire                        axil_wvalid_mng,    // Write Data Valid Out
input   wire                        axil_wready_mng,    // Write Data In

input   wire [1:0]                  axil_bresp_mng,     // Write Response In
input   wire                        axil_bvalid_mng,    // Write Response Valid In
output  wire                        axil_bready_mng,    // Write Response Ready Out

output  wire [31:0]                 axil_araddr_mng,    // Read Address Out
output  wire                        axil_arvalid_mng,   // Read Address Valid Out
input   wire                        axil_arready_mng,   // Read Address Ready In

input   wire [31:0]                 axil_rdata_mng,     // Read Data In
input   wire [1:0]                  axil_rresp_mng,     // Read Response In
input   wire                        axil_rvalid_mng,    // Read Response Valid In
output  wire                        axil_rready_mng     // Read Response Ready Out
);

cache cache_inst
(
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