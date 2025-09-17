`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 01:44:54 PM
// Design Name: 
// Module Name: mux_8to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Structural 
// 
//////////////////////////////////////////////////////////////////////////////////

module mux8to1_structural(
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    input s0,
    input s1,
    input s2,
    output Y
    );
    wire ns0, ns1, ns2;
    wire y0,y1,y2,y3,y4,y5,y6,y7;
    not N1(ns0, s0);
    not N2(ns1, s1);
    not N3(ns2, s2);
    and A1(y0, I0, ns2, ns1, ns0);
    and A2(y1, I1, s2, ns1, ns0);
    and A3(y2, I2, ns2, s1, ns0);
    and A4(y3, I3, s2, s1, ns0);
    and A5(y4, I4, ns2, ns1, s0);
    and A6(y5, I5, s2, ns1, s0);
    and A7(y6, I6, ns2, s1, s0);
    and A8(y7, I7, s2, s1, s0);

    or O1(Y, y0, y1, y2, y3, y4, y5, y6, y7);
    
endmodule
