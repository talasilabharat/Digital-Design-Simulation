`timescale 1ns / 1ps

module full_adder_by_half(s,c,x,y,z);

	output s,c;
	input x,y,z;
	wire s0,c0,w1;
	
	half_adder	H1(s0,c0,x,y);
	half_adder	H2(s,w1,s0,z);
	or (c,w1,c0);

endmodule

module half_adder(S,C,A,B);

	output S,C;
	input A,B;
	
	xor	(S,A,B);
	and	(C,A,B);

endmodule

