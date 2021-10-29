`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 17:32:56
// Design Name: 
// Module Name: SingleCycleCPU
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


module SingleCycleCPU(
    input  clk,
    input  Reset,
    output [31:0] currentIAddr, nextIAddr,//��ǰ��ַ���µ�ַ
    output [4:0] rs, rt,
    output [31:0] ReadData1, ReadData2,//�����ݴ洢������rs,rt
    output [31:0] ALU_result, DataBus,//ALU����������DataBus
    output [31:0] WriteData, //д��Register������
    output [4:0] WriteReg,//д��Register�ļĴ�����
    output [31:0] instruction
    
    );
     // ��Ҫ�õ������ݱ��� 
    wire [31:0] bincode;//ָ��
    wire [31:0] ALU_inA, ALU_inB;//ALU ������
    wire [31:0] DataOut;//DataMemory���
    wire [31:0] extended;//��չ���������
    wire ALU_zero, ALU_sign;//ALU��������״̬λ
    
  
  
    //�����ź�
    wire PCWre, ALUSrcA, ALUSrcB,RegWre,InsMemRW, mRD, mWR, ExtSel;
    wire [1:0] DBDataSrc;
    wire [1:0] PCSrc;
    wire [1:0] RegDst;
    wire [3:0] ALUOp;
    
    //�������ƴ��뻮����Ҫ�ı���
    wire [5:0] opcode;//option
    wire [5:0] func;//function
    wire [4:0] rd;//rd
    wire [5:0] shamt;//shamt
    
    wire [15:0] immediate;//immediate
    
    assign instruction =  bincode;
    assign opcode = bincode[31:26];
    assign rs = bincode[25:21];
    assign rt = bincode[20:16];
    assign rd = bincode[15:11];
    assign shamt = bincode[10:6];
    assign func = bincode[5:0];
    assign immediate = bincode[15:0];
     
    assign DataBus = WriteData;
    /* ���Ƶ�Ԫ */
    ControlUnit ControlUnit(
        .opcode(opcode), 
        .func(func),
        .zero(ALU_zero), 
        .sign(ALU_sign),
        
        .PCWre(PCWre), 
        .ALUSrcA(ALUSrcA), 
        .ALUSrcB(ALUSrcB), 
        .RegWre(RegWre), 
        .InsMemRW(InsMemRW),
        .mRD(mRD), .mWR(mWR),
        .ExtSel(ExtSel),
        .DBDataSrc(DBDataSrc),
        .PCSrc(PCSrc),
        .RegDst(RegDst),
        .ALUOp(ALUOp)
    );
    
    /* 5���ؼ��ײ�ģ�� */
    PC PC(
        .clk(clk),
        .Reset(Reset), 
        .PCWre(PCWre), 
        .nextIAddr(nextIAddr),
        .currentIAddr(currentIAddr)
    );
    InstructionMemory InstructionMemory(
        .IAddr(currentIAddr),
        .IDataOut(bincode)
    );
    RegisterFile RegisterFile(
        .clk(clk), 
        .Reset(Reset), 
        .WE(RegWre),
        .ReadReg1(rs),
        .ReadReg2(rt), 
        .WriteReg(WriteReg), 
        .WriteData(WriteData),
        .ReadData1(ReadData1),
        .ReadData2(ReadData2)
    );
    ALU ALU(
        .ALUOp(ALUOp), 
        .A(ALU_inA),
        .B(ALU_inB),
        .result(ALU_result), 
        .zero(ALU_zero), 
        .sign(ALU_sign)
    );
    DataMemory DataMemory(
        .clk(clk), 
        .DAddr(ALU_result), 
        .DataIn(ReadData2), 
        .RD(mRD), 
        .WR(mWR),
        .DataOut(DataOut)
    );
    
    /* ��������չ */
    ImmediateExtend ImmediateExtend(
        .original(immediate), .ExtSel(ExtSel),
        .extended(extended)
    );
    /* ����ѡ���� */
 
    //��PCSrc��Ӧ��PC�ĵ�ַ�ı䷽ʽ
    Mux4_32bitsPC Mux_nextIAddr(
        .PCSrc(PCSrc), 
        .in0(currentIAddr + 4), 
        .in1(currentIAddr + 4 + (extended<<2)), 
        .in2({currentIAddr[31:28], bincode[25:0], 2'b00}), 
        .in3(ReadData1),
        .out(nextIAddr)
    );
    //��RegDst��Ӧ��������д��Ĵ�����ļĴ�����ַ
     Mux4_5bitsWReg Mux_WriteReg(
        .RegDst(RegDst),
        .in0(rt),
        .in1(rd),
        .in2(5'd31), 
        .in3(5'b00000),
        .out(WriteReg)
    );
    //��DBDataSrc��Ӧ��д��Ĵ����������
    Mux4_32bits Mux_WriteData(
        .DBDataSrc(DBDataSrc), 
        .in0(ALU_result),
        .in1(DataOut),
        .in2(currentIAddr + 4),
        .in3(31'b0),
        .out(WriteData)
    );
     //��ALUSrcA��Ӧ��ALU A�˿ڵ�������Դ
    Mux2_32bits Mux_ALU_inA(
        .choice(ALUSrcA),
        .in0(ReadData1),
        .in1({27'd0, shamt}),
        .out(ALU_inA)
    );
    //��ALUSrcB��Ӧ��ALU B�˿ڵ�������Դ
    Mux2_32bits Mux_ALU_inB(
        .choice(ALUSrcB),
        .in0(ReadData2), 
        .in1(extended),
        .out(ALU_inB)
    );
endmodule

