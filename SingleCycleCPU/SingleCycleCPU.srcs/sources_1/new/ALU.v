`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 17:34:27
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [3:0] ALUOp,
    input [31:0] A,
    input [31:0] B,
    output reg [31:0] result,
    output zero,    // 结果是否为0？是为1，否为0
    output sign    // 结果是否为负？是为1，否为0
    );
    
    assign zero = (result == 0) ? 1 : 0;
    assign sign = result[31];
    
    always @(ALUOp or A or B) begin
        case(ALUOp)
            4'b0000: result = A + B;
            4'b0001: result = A - B;
            4'b0010: result = B << A;
            4'b0011: result = B >> A;
            4'b0100: result = A & B;
            4'b0101: result = A | B;
            4'b0110: result = A ^ B;
            4'b0111: result = ~(A|B);
            4'b1000: result = (A > B) ? 1 : 0; 
            4'b1001: begin                     
                        if((A[31] == B[31]) && (A > B)) result = 1;
                        else if(A[31]==0 && B[31]==1) result = 1;
                        else result = 0;
                    end    
            4'b1010: result = (A < B) ? 1 : 0; 
            4'b1011: begin                     
                        if((A[31] == B[31]) && (A < B)) result = 1;
                        else if(A[31]==1 && B[31]==0) result = 1;
                        else result = 0;
                    end
              
            4'b1100: begin 
                         if(A==B) result =0;
                         else result =1;
                     end
        endcase
    end
endmodule
