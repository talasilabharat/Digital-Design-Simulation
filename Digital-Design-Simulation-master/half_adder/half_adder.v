`timescale 1ns / 1ps

//Gate level modelling
module half_adder(S,C,A,B);
	output S,C;
	inout A,B;
	
	xor	(S,A,B);
	and	(C,A,B);

endmodule
