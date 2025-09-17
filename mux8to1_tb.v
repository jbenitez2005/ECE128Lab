`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 02:20:25 PM
// Design Name: 
// Module Name: mux8to1_tb
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


module mux8to1_tb;
wire Y; //output 
reg I0,I1,I2,I3,I4,I5,I6,I7, s0,s1,s2;
 
// Instantiate original module (named DUT {device under test}) 
mux8to1_structural uut (.I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4), .I5(I5), .I6(I6), .I7(I7), .s0(s0), .s1(s1), .s2(s2), .Y(Y));

initial begin 
	#10 I0=1'b1;I1=1'b0;I2=1'b0;I3=1'b0;I4=1'b0;I5=1'b0;I6=1'b0; I7=1'b0;s0=1'b0;s1=1'b0;s2=1'b0;
	#10 I0=1'b0;I1=1'b1;I2=1'b0;I3=1'b0;I4=1'b0;I5=1'b0;I6=1'b0;I7=1'b0;s0=1'b0;s1=1'b0;s2=1'b1;
	#10 I0=1'b0;I1=1'b0;I2=1'b1;I3=1'b0;I4=1'b0;I5=1'b0;I6=1'b0;I7=1'b0;s0=1'b0;s1=1'b1;s2=1'b0;
	#10 I0=1'b0;I1=1'b0;I2=1'b0;I3=1'b1;I4=1'b0;I5=1'b0;I6=1'b0;I7=1'b0;s0=1'b0;s1=1'b1;s2=1'b1;
	
	#10 I0=1'b0;I1=1'b0;I2=1'b0;I3=1'b0;I4=1'b1;I5=1'b0;I6=1'b0;I7=1'b0;s0=1'b1;s1=1'b0;s2=1'b0;
	#10 I0=1'b0;I1=1'b0;I2=1'b0;I3=1'b0;I4=1'b0;I5=1'b1;I6=1'b0;I7=1'b0;s0=1'b1;s1=1'b0;s2=1'b1;
	#10 I0=1'b0;I1=1'b0;I2=1'b0;I3=1'b0;I4=1'b0;I5=1'b0;I6=1'b1;I7=1'b0;s0=1'b1;s1=1'b1;s2=1'b0;
	#10 I0=1'b0;I1=1'b0;I2=1'b0;I3=1'b0;I4=1'b0;I5=1'b0;I6=1'b0;I7=1'b1;s0=1'b1;s1=1'b1;s2=1'b1;

	#10 $stop;

end 
endmodule



