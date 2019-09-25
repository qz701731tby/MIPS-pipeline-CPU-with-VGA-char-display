`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/23 14:47:04
// Design Name: 
// Module Name: sync_ram_data
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sync_ram_data(
    input         clk,
    input         en,       //access enable, HIGH valid
    input  [ 3:0] wen,      //write enable by byte, HIGH valid
    input  [ 9:0] addr,
    input  [31:0] wdata,
    output [31:0] rdata
);

reg  [31:0] bit_array [10:0];

reg         en_r;
reg  [ 3:0] wen_r;
reg  [ 9:0] addr_r;
reg  [31:0] wdata_r;
wire [31:0] rd_out;


initial begin
    $readmemh("D:/vivado/ram.txt",bit_array);
end
// inputs latch
//always @(posedge clk) begin
//    en_r <= en;
//    if (en) begin
//        wen_r   <= wen;
//        addr_r  <= addr;
//        wdata_r <= wdata;
//    end
//end


// bit array write
always @(posedge clk) begin
    if (en) begin
        if (wen[0]) bit_array[addr][ 7: 0] <= wdata[ 7: 0];
        if (wen[1]) bit_array[addr][15: 8] <= wdata[15: 8];
        if (wen[2]) bit_array[addr][23:16] <= wdata[23:16];
        if (wen[3]) bit_array[addr][31:24] <= wdata[31:24];
    end
end

// bit array read
assign rd_out = bit_array[addr];

// final output
assign rdata = rd_out;

endmodule

