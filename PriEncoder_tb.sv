`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2024 12:59:01 PM
// Design Name: 
// Module Name: PriEncoder_tb
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


module PriEncoder_tb;
    
    logic [3:0] W;
    logic [7:0] SW;
    logic [2:0] base_index;
    
    PriEncoder dut (
        .SW({W,SW}),
        .base_index(base_index)
    );

    initial begin
    $display("Time      Input        Window      Index");

    SW = 8'b1111_1010; W = 4'b1010; #10;
    $display("%0t     %08b     %04b      %03b", $time, SW, W, base_index);

    SW = 8'b1110_1010; W = 4'b1010; #10;
    $display("%0t     %08b     %04b      %03b", $time, SW, W, base_index);
    
    SW = 8'b0001_0100; W = 4'b1010; #10;
    $display("%0t     %08b     %04b      %03b", $time, SW, W, base_index);
    
    SW = 8'b1101_0100; W = 4'b1010; #10;
    $display("%0t     %08b     %04b      %03b ", $time, SW, W, base_index);
    
    SW = 8'b1010_1000; W = 4'b1010; #10;
    $display("%0t     %08b     %04b      %03b", $time, SW, W, base_index);
    
    SW = 8'b1010_0000; W = 4'b1010; #10;
    $display("%0t     %08b     %04b      %03b", $time, SW, W, base_index);
    
    SW = 8'b1010_1010; W = 4'b1010; #10;
    $display("%0t     %08b     %04b      %03b", $time, SW, W, base_index);
    
    SW = 8'b1111_1111; W = 4'b1010; #10;
    $display("%0t   |  %08b   |  %04b   |   %03b", $time, SW, W, base_index);
    
    // End simulation
            $finish;
    end
    
endmodule