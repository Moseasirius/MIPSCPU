`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 17:51:56
// Design Name: 
// Module Name: Mux4_4bits
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


module Mux4_4bits(
    input [1:0] choice,
    input [3:0] in0, in1, in2, in3,
    output reg [3:0] out
    );
    
    always @(*) begin
        case(choice)
            0: out <= in0;
            1: out <= in1;
            2: out <= in2;
            3: out <= in3;
        endcase
    end
    
endmodule
