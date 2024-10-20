`timescale 1ns/1ps


// Writes happen in same cycle, Reads are returned next cycle

module sram
#(
    parameter integer SIZE = 16,
    parameter integer DATA_WIDTH = 32,
    parameter integer ADDR_WIDTH = 4
)
(
    input                                   clk,        // System Clock
    input                                   rst_n,      // System Reset
    input           [ADDR_WIDTH - 1 : 0]    addr,       // Read/Write Address from the Memory
    input                                   re,         // Read Enable
    output  logic   [DATA_WIDTH - 1 : 0]    data_out,   // Output from the Memory
    input           [DATA_WIDTH - 1 : 0]    data_in,    // Data to be written
    input                                   we          // Write Enable
);

    //assert ($clog2(SIZE) == ADDR_WIDTH);

    reg [DATA_WIDTH - 1 : 0] data;
    reg [DATA_WIDTH - 1 : 0] mem [SIZE];

    // Priority is given to the read
    always_ff @(posedge clk) begin
        if(re) begin
            data <= mem[addr];
        end
    end

    integer i;
    always_ff @(posedge clk) begin
        if(!rst_n) begin
            for(i=0; i<SIZE; i = i+1) begin
                mem[i] <= 0;
            end
        end
        else if(we && !re) begin
           mem[addr] <= data_in;
        end 
    end


    assign data_out = data;


endmodule