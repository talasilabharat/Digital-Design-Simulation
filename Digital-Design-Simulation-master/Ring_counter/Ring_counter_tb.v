`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:40:19 11/20/2016
// Design Name:   Ring_counter
// Module Name:   C:/Users/bharat arora/Documents/GitHub/Xlinx/Ring_counter/Ring_counter_tb.v
// Project Name:  Ring_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ring_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ring_counter_tb;

	// Inputs
	reg select;
	reg[3:0] I;
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] Y;

	// Instantiate the Unit Under Test (UUT)
	Ring_counter uut (
		.Y(Y), 
		.I(I),
		.select(select),
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		I=4'b0000;
		select=1;
		// Wait 100 ns for global reset to finish
		#50;
		reset=1;
		select=0;
		I=4'b1000;
		#50;
		select=1;
		// Add stimulus here

	end
	initial forever #10clk=~clk;
	
	initial #400 $finish;
      
endmodule

