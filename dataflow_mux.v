`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 02:09:37 PM
// Design Name: 
// Module Name: dataflow_mux
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


module mux8to1_dataflow(Y,s0,s1,s2,I0,I1,I2,I3,I4,I5,I6,I7);
input wire s0,s1,s2,I0,I1,I2,I3,I4,I5,I6,I7;
output wire Y;

assign Y =  (I0 & ~s2 & ~s1 & ~s0) | 
			(I1 & ~s2 & ~s1 &  s0) |
			(I2 & ~s2 &  s1 & ~s0) |
			(I3 & ~s2 &  s1 &  s0) |
			(I4 &  s2 & ~s1 & ~s0) |
			(I5 &  s2 & ~s1 &  s0) |
			(I6 &  s2 &  s1 & ~s0) |
			(I7 &  s2 &  s1 &  s0);
endmodule
