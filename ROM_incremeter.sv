`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2024 07:26:33 PM
// Design Name: 
// Module Name: ROM_incremeter
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


module ROM_incremeter(
input reg[3:0] in,
output reg [3:0]out
    );
  always @(*) begin
  case(in)
        4'b0000: out = 4'b0001;    // 1
        4'b0001: out = 4'b0010;    // 2
        4'b0010: out = 4'b0011;    // 3
        4'b0011: out = 4'b0100;    // 4
        4'b0100: out = 4'b0101;    // 5
        4'b0101: out = 4'b0110;    // 6
        4'b0110: out = 4'b0111;    // 7
        4'b0111: out = 4'b1000;    // 8
        4'b1000: out = 4'b1001;    // 9
        4'b1001: out = 4'b1010;    // 10
        4'b1010: out = 4'b1011;    // 11
        4'b1011: out = 4'b1100;    // 12
        4'b1100: out = 4'b1101;    // 13
        4'b1101: out = 4'b1110;    // 14
        4'b1110: out = 4'b1111;    // 15
        4'b1111: out = 4'b0000;    // 0 (overflow)
        default: out = 4'b0000;    // Default case
 
  endcase
  end  
    
    
    
endmodule
