`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/26 11:06:41
// Design Name: 
// Module Name: Mux4_5bitsWReg
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


module Mux4_5bitsWReg(
    input [1:0] RegDst,
    input [4:0] in0,
    input [4:0] in1,
    input [4:0] in2,
    input [4:0] in3,
    output reg [4:0] out
    );
    
 always @(RegDst or in0 or in1 or in2 or in3) begin
        case(RegDst)
            2'b00: out = in0;
            2'b01: out = in1;
            2'b10: out = in2;
            2'b11: out = in3;
        endcase
    end
endmodule
