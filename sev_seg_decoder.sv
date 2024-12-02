module seven_seg_decoder(
input wire [3:0] bin,
output reg  [6:0] seg);
          // 7-bit output for segments a-g

logic w,x,y,z;

assign w = bin[0];
assign x = bin[1];
assign y = bin[2];
assign z = bin[3];



assign seg[0] = (~w & x & ~y & ~z) | (~w & ~x & ~y & z) | (w & x & ~y & z) | (w & ~x & y & z);
assign seg[1] = (~w & x & ~y & z) | (~w & x & y & ~z) | (w & x & ~z) | (w & y & z);
assign seg[2] = (~w & ~x & y & ~z) | (w & x & ~y & ~z) | (w & x & y);
assign seg[3] = (~w & ~x & ~y & z) | (~w & x & ~y & ~z) | (w & ~x & y & ~z) | (x & y & z);
assign seg[4] = (~w & z) | (~w & x & ~y & ~z) | (w & ~x & ~y & z);
assign seg[5] = (~w & ~x & y) | (~w & ~x & ~y & z) | (~w & x & y & z) | (w & x & ~y & z);
assign seg[6] = (~w & ~x & ~y) | (w & x & ~y & ~z) | (~w & x & y & z);


endmodule
