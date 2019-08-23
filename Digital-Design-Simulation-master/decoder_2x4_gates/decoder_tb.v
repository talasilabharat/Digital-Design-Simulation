`timescale 1ns / 1ps

module decoder_tb;

	// Inputs
	reg [1:0] S;
	reg enable;

	// Outputs
	wire [3:0] Y;

	// Instantiate the Unit Under Test (UUT)
	decoder_2x4_gates uut (
		.Y(Y), 
		.S(S), 
		.enable(enable)
	);

	initial begin
		// Initialize Inputs
		S = 0;  //2'b00
		enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#10S[0]=1;
		#10S[1]=1;
		#0S[0]=0;
		#10S[0]=1;
      
		// Add stimulus here

	end
   
	initial #200 $finish;
endmodule

