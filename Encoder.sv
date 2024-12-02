`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2024 10:34:59 PM
// Design Name: 
// Module Name: Encoder
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


module PriEncoder(
    input [11:0] SW,  // 8 switches
    output logic [2:0] base_index  
);
    logic [3:0] W;
    assign W = SW[11:8];
always @(*) begin 
    // Default to no match
    base_index = 3'b111;
    
    // Check matches in priority order using direct bit slicing
    if (SW[3:0] == W)
        base_index = 3'b000;
    else if (SW[4:1] == W)
        base_index = 3'b001;
    else if (SW[5:2] == W)
        base_index = 3'b010;
    else if (SW[6:3] == W)
        base_index = 3'b011;
    else if (SW[7:4] == W)
        base_index = 3'b100;
end  

endmodule