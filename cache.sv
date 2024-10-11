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
    parameter integer INDEX  = CACHE_LINES - $clog2(WAYS);
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
    // Size = 2 ^ Index = 2 ^ 12 = 4096 Lines each containing 1 32-Bit Word
    // Size for 1 ram = 4096 x 32/8 = 16384 Bytes

    logic [INDEX - 1 : 0] data_addr;    // Data Read/Write Address
    logic read_enable[2];               // Array, for each Bank Read Enable
    logic [31 : 0] data_out[2];         // Output from the RAM
    logic [31 : 0] data_in[2];          // Data to be written in RAM
    logic write_enable[2];              // Write-Enable

    sram
    #(
        .SIZE(4096),
        .DATA_WIDTH(32),
        .ADDR_WIDTH(INDEX)
    )
    data_ram_0
    (
        .clk(clk),              
        .addr(data_addr),       
        .re(read_enable[0]),                  
        .data_out(data_out[0]),            
        .data_in(data_in[0]),             
        .we(write_enable[0])                   
    );

    sram
    #(
        .SIZE(4096),
        .DATA_WIDTH(32),
        .ADDR_WIDTH(INDEX)
    )
    data_ram_1
    (
        .clk(clk),        
        .addr(data_addr),       
        .re(read_enable[1]),         
        .data_out(data_out[1]),   
        .data_in(data_in[1]),    
        .we(write_enable[1])          
    );
    //---------------------------------------------------------------------------

    //--------------------------Meta-data Tag RAM -------------------------------
    // Since Tag is associated with each cache line, we will require 2 Tag Data Banks
    // Tag Size for current configuration is 18 Address Bits
    // Size = 2 ^ 12 = 4096 Lines each containing 1 18-Bit Tag Data
    // Size for 1 Ram = 4096 x 18 = 73,728 Bits
    // Tag Overhead  = 18 / 32 * 100 = 56.25 %

    logic [INDEX - 1 : 0] tag_addr;    
    logic tag_read_enable[2];               
    logic [TAG_SIZE - 1 : 0] tag_out[2];        
    logic [TAG_SIZE - 1 : 0] tag_in[2];          
    logic tag_write_enable[2];              

    sram
    #(
        .SIZE(4096),
        .DATA_WIDTH(TAG_SIZE),
        .ADDR_WIDTH(INDEX)
    )
    tag_ram_0
    (
        .clk(clk),              
        .addr(tag_addr),       
        .re(tag_read_enable[0]),                  
        .data_out(tag_out[0]),            
        .data_in(tag_in[0]),             
        .we(tag_write_enable[0])                   
    );

    sram
    #(
        .SIZE(4096),
        .DATA_WIDTH(TAG_SIZE),
        .ADDR_WIDTH(INDEX)
    )
    tag_ram_1
    (
        .clk(clk),              
        .addr(tag_addr),       
        .re(tag_read_enable[1]),                  
        .data_out(tag_out[1]),            
        .data_in(tag_in[1]),             
        .we(tag_write_enable[1])            
    );
    //---------------------------------------------------------------------------

    //--------------------------Meta-data Valid RAM -----------------------------
    // Since Valid Bit is associated with each cache line, we will require 2 Valid Banks
    // Size = 2 ^ 12 = 4096 Lines each containing 1 1-Bit Valid Data
    // Size for 1 Ram = 4096 x 1 = 4096 Bits

    logic [INDEX - 1 : 0] valid_addr;    
    logic valid_read_enable[2];               
    logic valid_out[2];         
    logic valid_in[2];          
    logic valid_write_enable[2];            

    sram
    #(
        .SIZE(4096),
        .DATA_WIDTH(1),
        .ADDR_WIDTH(INDEX)
    )
    valid_ram_0
    (
        .clk(clk),              
        .addr(valid_addr),       
        .re(valid_read_enable[0]),                  
        .data_out(valid_out[0]),            
        .data_in(valid_in[0]),             
        .we(valid_write_enable[0])                   
    );

    sram
    #(
        .SIZE(4096),
        .DATA_WIDTH(1),
        .ADDR_WIDTH(INDEX)
    )
    valid_ram_1
    (
        .clk(clk),              
        .addr(valid_addr),       
        .re(valid_read_enable[1]),                  
        .data_out(valid_out[1]),            
        .data_in(valid_in[1]),             
        .we(valid_write_enable[1])               
    );
    //---------------------------------------------------------------------------

    //--------------------------Meta-data Valid RAM -----------------------------
    // This Cache has Least Recently Used (LRU) eviction policy
    // For associativity > 2, LRU ranking bits are required for all cache lines
    // But, since associativity = 2, we only require 1 bit per set.
    // if lru  = 0, evict way 0, if 1, evict way 1
    // Thus, we only require 1 RAM Bank

    logic [INDEX - 1 : 0] lru_addr;    
    logic lru_read_enable;               
    logic lru_out;         
    logic lru_in;          
    logic lru_write_enable;            

    sram
    #(
        .SIZE(4096),
        .DATA_WIDTH(1),
        .ADDR_WIDTH(INDEX)
    )
    lru_ram
    (
        .clk(clk),              
        .addr(lru_addr),       
        .re(lruread_enable),                  
        .data_out(lru_out),            
        .data_in(lru_in),             
        .we(lru_write_enable)                   
    );

    //---------------------------------------------------------------------------    



endmodule