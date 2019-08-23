`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:51:44 10/19/2016
// Design Name:   s2_mealy
// Module Name:   C:/Users/abhij/Desktop/class/session2/s2_mealy_tb.v
// Project Name:  session2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: s2_mealy
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module s2_mealy_tb;

	// Inputs
	reg clk;
	reg rst;
	reg inp;

	// Outputs
	wire outp;
	wire [1:0] state;

	// Instantiate the Unit Under Test (UUT)
	s2_mealy uut (
		.clk(clk), 
		.rst(rst), 
		.inp(inp), 
		.outp(outp),
		.state(state)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		inp = 1;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		
		#20 inp = 0;
		#20 inp = 1;
		#20 inp = 0;
		#20 inp = 1;
		#20 inp = 1;
		#20 inp = 0;
		
		// Add stimulus here

	end
	
		always
	begin
		#10 clk = ~clk;
	end
      
      
endmodule

