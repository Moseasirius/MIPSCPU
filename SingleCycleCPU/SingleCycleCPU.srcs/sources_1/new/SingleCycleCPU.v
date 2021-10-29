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
    output [31:0] currentIAddr, nextIAddr,//当前地址和下地址
    output [4:0] rs, rt,
    output [31:0] ReadData1, ReadData2,//从数据存储器读出rs,rt
    output [31:0] ALU_result, DataBus,//ALU的运算结果和DataBus
    output [31:0] WriteData, //写入Register的数据
    output [4:0] WriteReg,//写入Register的寄存器号
    output [31:0] instruction
    
    );
     // 需要用到的数据变量 
    wire [31:0] bincode;//指令
    wire [31:0] ALU_inA, ALU_inB;//ALU 的输入
    wire [31:0] DataOut;//DataMemory输出
    wire [31:0] extended;//扩展后的立即数
    wire ALU_zero, ALU_sign;//ALU的运算结果状态位
    
  
  
    //控制信号
    wire PCWre, ALUSrcA, ALUSrcB,RegWre,InsMemRW, mRD, mWR, ExtSel;
    wire [1:0] DBDataSrc;
    wire [1:0] PCSrc;
    wire [1:0] RegDst;
    wire [3:0] ALUOp;
    
    //将二进制代码划分需要的变量
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
    /* 控制单元 */
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
    
    /* 5个关键底层模块 */
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
    
    /* 立即数扩展 */
    ImmediateExtend ImmediateExtend(
        .original(immediate), .ExtSel(ExtSel),
        .extended(extended)
    );
    /* 数据选择器 */
 
    //与PCSrc对应，PC的地址改变方式
    Mux4_32bitsPC Mux_nextIAddr(
        .PCSrc(PCSrc), 
        .in0(currentIAddr + 4), 
        .in1(currentIAddr + 4 + (extended<<2)), 
        .in2({currentIAddr[31:28], bincode[25:0], 2'b00}), 
        .in3(ReadData1),
        .out(nextIAddr)
    );
    //与RegDst对应，将数据写入寄存器组的寄存器地址
     Mux4_5bitsWReg Mux_WriteReg(
        .RegDst(RegDst),
        .in0(rt),
        .in1(rd),
        .in2(5'd31), 
        .in3(5'b00000),
        .out(WriteReg)
    );
    //与DBDataSrc对应，写入寄存器组的数据
    Mux4_32bits Mux_WriteData(
        .DBDataSrc(DBDataSrc), 
        .in0(ALU_result),
        .in1(DataOut),
        .in2(currentIAddr + 4),
        .in3(31'b0),
        .out(WriteData)
    );
     //与ALUSrcA对应，ALU A端口的数据来源
    Mux2_32bits Mux_ALU_inA(
        .choice(ALUSrcA),
        .in0(ReadData1),
        .in1({27'd0, shamt}),
        .out(ALU_inA)
    );
    //与ALUSrcB对应，ALU B端口的数据来源
    Mux2_32bits Mux_ALU_inB(
        .choice(ALUSrcB),
        .in0(ReadData2), 
        .in1(extended),
        .out(ALU_inB)
    );
endmodule

