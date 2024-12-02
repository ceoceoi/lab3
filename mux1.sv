`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 


module mux1(
    input logic a,
    input logic b,
    input logic s,
    output logic op1); 

    
    always @ (a,b,s)
    begin
   if(s)
   op1 = a &b;
   else
   op1 = (a << b);
   
    end
   

endmodule
