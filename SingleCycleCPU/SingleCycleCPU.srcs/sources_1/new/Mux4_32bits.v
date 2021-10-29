`timescale 1ns / 1ps
module Mux4_32bits(
    input [1:0] DBDataSrc,
    input [31:0] in0,
    input [31:0] in1,
    input [31:0] in2,
    input [31:0] in3,
    output reg [31:0] out
    );
    
    always @(DBDataSrc or in0 or in1 or in2 or in3) begin
        case(DBDataSrc)
            2'b00: out = in0;
            2'b01: out = in1;
            2'b10: out = in2;
            2'b11: out = in3;
            default: out = 0;
        endcase
    end
    
endmodule