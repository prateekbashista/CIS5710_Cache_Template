`timescale 1ns/1ps

/*--------------------------------------------------------------------------
    Specifications of the Cache :
    - 2 Way Set Associativity
    - Block Size of 4 Bytes
    - Pipelined Implementation
    - Requests aligned to 4B Boundaries
    - Writeback Policy
    - Read Allocate/ Write Allocate Policy
--------------------------------------------------------------------------*/

module cache
(
/*--------------------------------------------------------------------------
    core clock and reset
--------------------------------------------------------------------------*/
input                       clk,                // System Clock
input                       rst_n,              // Negative Edge Triggered Sychronous Reset

/*---------------------------------------------------------------------------
    AXI Lite Subordinate Mode - From Processor
---------------------------------------------------------------------------*/

input [31:0]                axil_awaddr_sbd,    // Write Address In
input                       axil_awvalid_sbd,   // Write Address valid In
output logic                axil_awready_sbd,   // Write Address Ready Out

input [31:0]                axil_wdata_sbd,     // Write Data Value In
input                       axil_wvalid_sbd,    // Write Data Valid In
output logic                axil_wready_sbd,    // Write Data Ready Out

output logic [1:0]          axil_bresp_sbd,     // Write Response Out
output logic                axil_bvalid_sbd,    // Write Response Valid Out
input                       axil_bready_sbd,    // Write Response Ready In

input [31:0]                axil_araddr_sbd,    // Read Address In
input                       axil_arvalid_sbd,   // Read Address Valid In
output logic                axil_arready_sbd,   // Read Address Ready Out

output logic [31:0]         axil_rdata_sbd,     // Read Data Out
output logic                axil_rvalid_sbd,    // Read Data Valid Out
output logic [1:0]          axil_rresp_sbd,     // Read Response Status Out 
input                       axil_rready_sbd,    // Read Response Ready In

/*---------------------------------------------------------------------------
    AXI Lite Manager Mode - To next level of memory
---------------------------------------------------------------------------*/

output logic [31:0]         axil_awaddr_mng,    // Write Address Out
output logic                axil_awvalid_mng,   // Write Address Valid Out
input                       axil_awready_mng,   // Write Address Ready In

output logic [31:0]         axil_wdata_mng,     // Write Data Out
output logic                axil_wvalid_mng,    // Write Data Valid Out
input                       axil_wready_mng,    // Write Data In

input [1:0]                 axil_bresp_mng,     // Write Response In
input                       axil_bvalid_mng,    // Write Response Valid In
output logic                axil_bready_mng,    // Write Response Ready Out

output logic [31:0]         axil_araddr_mng,    // Read Address Out
output logic                axil_arvalid_mng,   // Read Address Valid Out
input                       axil_arready_mng,   // Read Address Ready In

input [31:0]                axil_rdata_mng,     // Read Data In
input [1:0]                 axil_rresp_mng,     // Read Response In
input                       axil_rvalid_mng,    // Read Response Valid In
output logic                axil_rready_mng     // Read Response Ready Out
);


    typedef enum logic [3:0] {  IDLE = 4'b0000, 
                                READ = 4'b0001, 
                                WRITE = 4'b0011, 
                                WRITE_BACK_MEM = 4'b0100, 
                                FETCH_MEM = 4'b0101, 
                                CACHE_FILL = 4'b0110, 
                                CACHE_UPDATE_READ = 4'b0111, 
                                WRITE_BACK_CHECK = 4'b1000, 
                                WAIT_FOR_DATA = 4'b1001, 
                                CACHE_UPDATE_WRITE = 4'b1010, 
                                WAIT_FOR_RREADY = 4'b1011,
                                WAIT_FOR_BREADY = 4'b1100, 
                                WB_REG_STORE = 4'b1101} states;

    states state, next_state;

    /*--------------------------------------------------------------------------
        Calculation of the Tag, Index and Offset Bits
    --------------------------------------------------------------------------*/
    parameter integer BYTE_WIDTH = 8;
    parameter integer SIZE = 32768; // In Bytes -> 32 Kb Cache
    parameter integer BLOCK_SIZE = 1;
    parameter integer WAYS = 2;


    parameter integer CACHE_LINES = $clog2((SIZE*BYTE_WIDTH)/(BLOCK_SIZE*32));
    parameter integer OFFSET = $clog2(BLOCK_SIZE * 32 / BYTE_WIDTH);
    parameter integer INDEX  = CACHE_LINES - $clog2(C_WAYS);
    parameter integer TAG_SIZE  = 32 - INDEX - OFFSET;
    //---------------------------------------------------------------------------


    
    /* We Bank the Cache Across Associativity of a set so that we get parallel access
       to all the cache lines of a set. 
       So for a 2-way set associative cache, 2 banks are required :

                              SET N
            -----------------       -----------------
            |               |       |               |
            -----------------       -----------------
            |               |  <-   |               |   <- Index (Address for RAMs)
            -----------------       -----------------
            |               |       |               |
            -----------------       -----------------
                    '                       '       
                    '                       '
                    '                       '           
                    '                       '   
                    '                       '
            -----------------       -----------------
            |               |       |               |
            -----------------       -----------------    
                   WAY 0                  WAY 1                    
    */


    //------------------------------- Data RAM ----------------------------------
    // For 2 Way Set Associative Cache, 2 Data Banks are Required


    sram
    #(
        .SIZE(),
        .DATA_WIDTH(),
        .ADDR_WIDTH()
    )
    data_ram_1
    (
        .clk(),        // System Clock
        .addr(),       // Read/Write Address from the Memory
        .re(),         // Read Enable
        .data_out(),   // Output from the Memory
        .data_in(),    // Data to be written
        .we()          // Write Enable
    );

    sram
    #(
        .SIZE(),
        .DATA_WIDTH(),
        .ADDR_WIDTH()
    )
    data_ram_1
    (
        .clk(),        // System Clock
        .addr(),       // Read/Write Address from the Memory
        .re(),         // Read Enable
        .data_out(),   // Output from the Memory
        .data_in(),    // Data to be written
        .we()          // Write Enable
    );
    //---------------------------------------------------------------------------



endmodule