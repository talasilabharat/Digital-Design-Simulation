`timescale 1ns / 1ps

module mux_tb;

	// Inputs
	reg [1:0] i;
	reg s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_2x1_beh uut (
		.y(y), 
		.i(i), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		i = 2'b10;
		s = 0;

		// Wait 100 ns for global reset to finish
		repeat(50)
			#30s=~s;
		// Add stimulus here

	end
      
endmodule

