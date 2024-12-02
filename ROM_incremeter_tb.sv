`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2024 08:14:37 PM
// Design Name: 
// Module Name: ROM_incremeter_tb
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

module ROM_incremeter_tb;
    reg [3:0] in;
    reg [3:0] out;

    // Instance of the incrementer circuit ROM
    ROM_incremeter dut(
        .in(in),
        .out(out)
    );

    initial begin
        in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0011; #10;
        in = 4'b0100; #10;
        in = 4'b0101; #10;
        in = 4'b0110; #10;
        in = 4'b0111; #10;
        in = 4'b1000; #10;
        in = 4'b1001; #10;
        in = 4'b1010; #10;
        in = 4'b1011; #10;
        in = 4'b1100; #10;
        in = 4'b1101; #10;
        in = 4'b1110; #10;
        in = 4'b1111; #10;

        // Display the output in decimal and binary format
        $display("decimal input = %d ---decimal output %d", in, out);
        $display("decimal input = %d ---binary output = %b", in, out);
    end
endmodule








