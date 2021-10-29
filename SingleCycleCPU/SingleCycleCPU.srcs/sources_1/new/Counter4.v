`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 17:39:21
// Design Name: 
// Module Name: Counter4
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


module Counter4(
 input clk,
    output reg [1:0] count
    );
    
    always @(posedge clk) begin
        if(count == 2'b11) count <= 0;
        else count <= count + 1;
    end
    
endmodule
