`timescale 1ns / 1ps

module D_latch_tb;

	// Inputs
	reg d;
	reg enable;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	D_latch uut (
		.q(q), 
		.d(d), 
		.enable(enable)
	);

	initial 
		begin
		// Initialize Inputs
		d = 0;
		enable=0;

		// Wait 100 ns for global reset to finish
		#100;
      enable=1;
		#100
		enable=0;
		// Add stimulus here
		
		end
	initial
		begin
		repeat(50)
			#10d=~d;
		end
      
endmodule

