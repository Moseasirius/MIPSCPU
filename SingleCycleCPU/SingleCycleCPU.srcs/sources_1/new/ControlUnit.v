`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 17:38:27
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
    input [5:0] opcode,//option
    input [5:0] func,//function
    input zero,
    input sign,
    
    output reg PCWre,//PC修改
    output reg ALUSrcA,//ALU运算的数据来源 寄存器堆 data1 输出
    output reg ALUSrcB,//ALU运算的数据来源 寄存器堆 data2 输出
    output reg RegWre,//寄存器组写
    output reg InsMemRW,//读写指令寄存器,设置为只读
    output reg mRD,//数据存储器读
    output reg mWR, //数据存储器写
    output reg ExtSel,//位拓展类型
    output reg [1:0]DBDataSrc,//ALU结果输出或数据存储器输出或PC+4
    output reg [1:0] RegDst,//写寄存器地址的来源
    output reg [1:0] PCSrc,//PC改变的方式
    output reg [3:0] ALUOp//ALU的功能选择
    );
    
   
    
    /* 信号控制 */
    //对应指令和状态产生控制信号
    always @(opcode or func or zero) begin //触发控制信号改变  
      case(opcode)
       6'b000000:begin
          case(func)
            6'b100000:begin  // add
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre,mRD,mWR,ExtSel,
                DBDataSrc[1:0],PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_00_100_0_00_00_01_0000;
            end
            6'b100001:begin  // addu
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre,mRD,mWR,ExtSel,
                DBDataSrc[1:0],PCSrc[1:0], RegDst[1:0], ALUOp[3:0]}
                <= 18'b11_00_100_0_00_00_01_0000;
           
            end
            6'b100010:begin  // sub
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB, RegWre, mRD,mWR, ExtSel,
                DBDataSrc[1:0], PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_00_100_0_00_00_01_0001;
            end      
            6'b100011:begin  // subu       
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre,mRD,mWR, ExtSel,
                DBDataSrc[1:0], PCSrc[1:0], RegDst[1:0], ALUOp[3:0]}
                 <= 18'b11_00_100_0_00_00_01_0001;
            end
            6'b100100:begin  // and           
                {InsMemRW,PCWre,ALUSrcA,ALUSrcB,RegWre,mRD,mWR,ExtSel,
                DBDataSrc[1:0],PCSrc[1:0],RegDst[1:0],ALUOp[3:0]} 
                <= 18'b11_00_100_0_00_00_01_0100;          
            end
            6'b100101:begin  // or          
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre, mRD,mWR, ExtSel,
                DBDataSrc[1:0],PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_00_100_0_00_00_01_0101;             
            end
            6'b100110:begin  // xor            
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre, mRD,mWR, ExtSel, 
                DBDataSrc[1:0],PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_00_100_0_00_00_01_0110;              
            end
            6'b100111:begin  // nor
               
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre, mRD,mWR ,ExtSel,
                 DBDataSrc[1:0],PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_00_100_0_00_00_01_0111;
              
            end
            6'b000000: begin  // sll
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre, mRD,mWR, ExtSel,
                 DBDataSrc[1:0],PCSrc[1:0], RegDst[1:0], ALUOp[3:0]}
                 <= 18'b11_10_100_0_00_00_01_0010;        
           end
           6'b000010:begin  // srl       
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre, mRD,mWR, ExtSel,
                DBDataSrc[1:0],PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_10_100_0_00_00_01_0011;         
           end
           6'b101010:begin  // slt          
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB, RegWre, mRD,mWR, ExtSel,
                DBDataSrc[1:0], PCSrc[1:0], RegDst[1:0], ALUOp[3:0]}
                 <= 18'b11_00_100_0_00_00_01_1011;              
            end
           6'b101011:begin  // sltu               
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB, RegWre, mRD,mWR, ExtSel, 
                DBDataSrc[1:0],PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_00_100_0_00_00_01_1010;                
            end
           6'b001000:begin  // jr             
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,  RegWre, mRD,mWR, ExtSel, 
                 DBDataSrc[1:0],PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_00_000_0_00_11_01_0000;              
           end
           default:{InsMemRW,PCWre,ALUSrcA, ALUSrcB,  RegWre, mRD,mWR, ExtSel, 
                 DBDataSrc[1:0],PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_00_000_0_00_00_11_0000;
       endcase 
       end
       6'b001000:begin  // addi              
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre,mRD,mWR,ExtSel,
                 DBDataSrc[1:0], PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_01_100_1_00_00_00_0000;             
       end
       6'b001001:begin  // addiu             
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,  RegWre, mRD,mWR, ExtSel,
                 DBDataSrc[1:0], PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_01_100_1_00_00_00_0000;             
       end
       6'b001100:begin  // andi               
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB, DBDataSrc, RegWre, mRD,mWR, ExtSel, 
                DBDataSrc[1:0], PCSrc[1:0], RegDst[1:0], ALUOp[3:0]}
                 <= 18'b11_01_100_0_00_00_00_0100;             
       end
       6'b001101:begin  // ori
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre, mRD,mWR, ExtSel, 
                DBDataSrc[1:0], PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_01_100_0_00_00_00_0101;              
       end
       6'b001110:begin  // xori          
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB, RegWre, mRD,mWR, ExtSel,
                 DBDataSrc[1:0], PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_01_100_0_00_00_00_0110;            
       end
       6'b001010:begin  // slti            
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB, RegWre, mRD,mWR, ExtSel, 
                DBDataSrc[1:0], PCSrc[1:0], RegDst[1:0], ALUOp[3:0]}
                 <= 18'b11_01_100_1_00_00_00_1011;              
       end
       6'b001011:begin  // sltiu       
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre, mRD,mWR, ExtSel, 
                 DBDataSrc[1:0],PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_01_100_0_00_00_00_1010;           
        end
       6'b101011:begin  // sw               
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB, RegWre, mRD,mWR, ExtSel, 
                 DBDataSrc[1:0],PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_01_001_1_00_00_11_0000;          
        end
       6'b100011:begin  // lw                
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre, mRD,mWR, ExtSel, 
                DBDataSrc[1:0], PCSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 18'b11_01_110_1_01_00_00_0000;          
       end
       6'b000100:begin  // beq              
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB, RegWre, mRD,mWR, ExtSel,
                 DBDataSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 16'b11_00_000_1_00_11_0001;
                PCSrc[1:0] <= (zero==1) ? 2'b01 : 2'b00;             
       end
       6'b000101:begin  // bne            
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre, mRD,mWR,ExtSel,
                 DBDataSrc[1:0], RegDst[1:0], ALUOp[3:0]} 
                <= 16'b11_00_000_1_00_11_0001;
                PCSrc[1:0] <= (zero==0) ? 2'b01 : 2'b00;            
       end
       6'b000010:begin  // j            
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre, mRD,mWR, ExtSel, 
                 DBDataSrc[1:0],PCSrc[1:0], RegDst[1:0], ALUOp[3:0]}
                 <= 18'b11_00_000_0_00_10_11_0000;          
       end
       6'b000011:begin  // jal        
                {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre, mRD, mWR,ExtSel,
                 DBDataSrc[1:0], PCSrc[1:0], RegDst[1:0], ALUOp[3:0]}
                 <= 18'b11_00_100_1_10_10_10_0000;         
       end  
       6'b111111: begin    // halt
               {InsMemRW,PCWre,ALUSrcA, ALUSrcB,RegWre, mRD,mWR, ExtSel,
                DBDataSrc[1:0],PCSrc[1:0], RegDst[1:0], ALUOp[3:0]}
                <= 18'b11_00_000_0_00_00_11_0000;         
       end  
     endcase       
    end           
endmodule
