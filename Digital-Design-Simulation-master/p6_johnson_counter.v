`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:58:37 10/18/2016 
// Design Name: 
// Module Name:    p5_ring_counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

	 
module p6_johnson_counter(
    input clk,
	 input reset,
	 input preset,
    inout [3:0] q
    );
	
	p2_d_ff_preset d11(~q[3],clk, reset, preset, q[0]);
    p2_d_ff d22(q[0],clk, reset, q[1]);
    p2_d_ff d33(q[1],clk, reset, q[2]);
    p2_d_ff d44(q[2],clk, reset, q[3]);

endmodule


