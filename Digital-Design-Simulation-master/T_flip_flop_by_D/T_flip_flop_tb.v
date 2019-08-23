`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:32:46 11/19/2016
// Design Name:   T_flip_flop_by_D
// Module Name:   C:/Users/bharat arora/Documents/GitHub/Xlinx/T_flip_flop_by_D/T_flip_flop_tb.v
// Project Name:  T_flip_flop_by_D
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: T_flip_flop_by_D
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module T_flip_flop_tb;

	// Inputs
	reg T;
	reg clk;
	reg reset;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	T_flip_flop_by_D uut (
		.Q(Q), 
		.T(T), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		T = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#10;
		reset=1;	
		T=1;
		#97reset=0;
		// Add stimulus here

	end
	
	initial begin
		forever #10clk=~clk;
	end
	
	initial #200 $finish;
      
endmodule

