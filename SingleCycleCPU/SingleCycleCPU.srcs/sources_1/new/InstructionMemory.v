`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 17:44:01
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(
    input [31:0] IAddr,
    //input [31:0] IDataIn,
    //input RW,    // ָ��洢����д�����źţ�Ϊ0д��Ϊ1��
    output [31:0] IDataOut
    );
    
    reg [7:0] ROM [0:256];
    
    initial begin
        $readmemb("E:/ComputerLogicDesign/MIPS/SingleCycleCPU/test/test_instructions.txt", ROM);
    end
    
    assign IDataOut[31:24] = ROM[IAddr+0];
    assign IDataOut[23:16] = ROM[IAddr+1];
    assign IDataOut[15:8]  = ROM[IAddr+2];
    assign IDataOut[7:0]   = ROM[IAddr+3];

    
endmodule
