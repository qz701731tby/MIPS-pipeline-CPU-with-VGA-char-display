`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/23 14:44:55
// Design Name: 
// Module Name: mul
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/09 16:44:40
// Design Name: 
// Module Name: mul
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


module mul(
    input  [31:0] mlu_src1,
    input  [31:0] mlu_src2,
    output [31:0] mlu_result_l,
    output [31:0] mlu_result_h
    );
    reg [31:0] src1_temp;
    reg [31:0] src2_temp;
    reg [63:0] src1;
    reg [63:0] src2;
    reg [63:0] result;
    reg [63:0] temp;
    reg [5:0] cycles;
    initial begin 
            src1=64'h1;
            src2=64'h2;
            cycles=6'b0;
            result=src1[0]?src2:64'b0;
    end
    
    initial begin
       repeat (31)
            begin
               cycles=cycles+1;
               src2=src2<<1;
               result=src1[cycles]?result+src2:result;
            end
    end
    assign mlu_result_l=result[31:0];
    assign mlu_result_h=result[63:32];
endmodule

