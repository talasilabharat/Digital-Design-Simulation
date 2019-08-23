`timescale 1ns / 1ps

module t_Simple_Circuit_opo_delay;

	// Inputs
	reg A;
	reg B;
	reg C;

	// Outputs
	wire D;
	wire E;

	// Instantiate the Unit Under Test (UUT)
	Simple_Circuit_pop_delay uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A=1;
		B=1;
		C=1;
        
		// Add stimulus here

	end
      
	initial #200 $finish;
endmodule

