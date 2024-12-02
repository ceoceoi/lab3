`timescale 1ns / 1ps

module seven_seg_tb;

 reg [3:0] bin;
 wire [6:0] seg;

seven_seg_decoder uut (
.bin(bin),
.seg(seg)
);
initial begin

$display("Time\t Input\t Output");
$display("-----\t-----\t-----");


bin = 4'b0000; #10 //0
$display("%0t\t %b\t %b", $time, bin, seg);

bin = 4'b0001; #10 //1
$display("%0t\t %b\t %b", $time, bin, seg);

bin = 4'b0010; #10 //2
$display("%0t\t %b\t %b", $time, bin, seg);

bin = 4'b0011; #10 //3
$display("%0t\t %b\t %b", $time, bin, seg);

bin = 4'b0100; #10 //4
$display("%0t\t %b\t %b", $time, bin, seg);

bin = 4'b0101; #10 //5
$display("%0t\t %b\t %b", $time, bin, seg);

bin = 4'b0110; #10 //6
$display("%0t\t %b\t %b", $time, bin, seg);


bin = 4'b0111; #10 //7
$display("%0t\t %b\t %b", $time, bin, seg);

bin = 4'b1000; #10 //8
$display("%0t\t %b\t %b", $time, bin, seg);

bin = 4'b1001; #10 //9
$display("%0t\t %b\t %b", $time, bin, seg);

bin = 4'b1010; #10 //10
$display("%0t\t %b\t %b", $time, bin, seg);

bin = 4'b1011; #10 //11
$display("%0t\t %b\t %b", $time, bin, seg);

bin = 4'b1100; #10 //12
$display("%0t\t %b\t %b", $time, bin, seg);

bin = 4'b1101; #10 //13
$display("%0t\t %b\t %b", $time, bin, seg);

bin = 4'b1110; #10 //14
$display("%0t\t %b\t %b", $time, bin, seg);

bin = 4'b1111; #10 //15
$display("%0t\t %b\t %b", $time, bin, seg);


$finish;
end
endmodule

