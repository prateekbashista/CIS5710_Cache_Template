`timescale  1ns/1ps


module mem_tb;

bit clk = 0;

reg [31:0] data_in;
reg [31:0] data_out;
reg [3:0] addr;

reg re,we;


initial begin
    clk = 0;
    forever begin
    #10    clk = ~clk;
    end
end

integer i;

initial begin

    for(i = 0; i<16; i = i+1) begin
        #10 data_in = 32'hDEADBEEF; we = 1'b1; addr = i; re = 1'b0;
        #20 we = 1'b0;addr = 0;
        #40 addr = i; re = 1'b1;
        #60 re = 1'b0; 
    end
end



sram
#(
    .SIZE(16),
    .DATA_WIDTH(32),
    .ADDR_WIDTH(4)
)
ram1
(
    .clk(clk),        
    .addr(addr),
    .re(re),
    .data_out(data_out), 
    .data_in(data_in),   
    .we(we)
);

endmodule