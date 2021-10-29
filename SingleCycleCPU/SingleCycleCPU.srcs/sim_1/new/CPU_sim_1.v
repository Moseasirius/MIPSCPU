`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 17:59:09
// Design Name: 
// Module Name: CPU_sim_1
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


module CPU_sim_1;
    reg clk, Reset;
    wire [31:0] currentIAddr, nextIAddr;
    wire [4:0] rs, rt;
    wire [31:0] ReadData1, ReadData2;
    wire [31:0] ALU_result, DataBus;
    wire [31:0] WriteData;
    wire [4:0] WriteReg;
    wire [31:0] instruction;
   
    
   SingleCycleCPU uut(
        .clk(clk),
        .Reset(Reset),
        .currentIAddr(currentIAddr), .nextIAddr(nextIAddr),
        .rs(rs), .rt(rt),
        .ReadData1(ReadData1), .ReadData2(ReadData2),
        .ALU_result(ALU_result), .DataBus(DataBus),
        .WriteData(WriteData),
        .WriteReg(WriteReg),
        .instruction(instruction)
        
    );
    
    always #50 clk = ~clk;    // ����ʱ������Ϊ100ns
    
    initial begin
        clk = 1;
        Reset = 0;
        #25;
        Reset = 1;    // ��ʼ����
        #30000;        // ����3000ns�ķ���
        #100; $stop; // �ϵ�
    end
endmodule
