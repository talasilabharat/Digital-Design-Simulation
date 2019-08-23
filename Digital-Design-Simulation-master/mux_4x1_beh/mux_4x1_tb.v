`timescale 1ns / 1ps

module mux_4x1_tb;

	// Inputs
	reg [2:0] s;
	reg [3:0] i;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_4x1_beh uut (
		.y(y), 
		.s(s), 
		.i(i)
	);

	initial begin
		// Initialize Inputs
		s = 0;
		i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		

	end
      
endmodule

