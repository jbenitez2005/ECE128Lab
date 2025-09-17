`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 01:56:36 PM
// Design Name: 
// Module Name: behavioral_mux
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
module mux8to1_behavioral(Y, s2, s1, s0, I7, I6, I5, I4, I3, I2, I1, I0);
input I7, I6, I5, I4, I3, I2, I1, I0;
input s2, s1, s0;
output reg Y;
 
always @(*)
begin
   case ({s2, s1, s0})
      3'b000 : Y = I0;
	  3'b001 : Y = I1;
	  3'b010 : Y = I2;
	  3'b011 : Y = I3;
	  3'b100 : Y = I4;
	  3'b101 : Y = I5;
	  3'b110 : Y = I6;
	  3'b111 : Y = I7;

      default : Y = 1'bx;
   endcase
end
endmodule

