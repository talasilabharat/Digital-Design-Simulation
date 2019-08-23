`timescale 1ns / 1ps

module full_adder(s,c,x,y,z);
	
	output s,c;
	input x,y,z;
	wire s0,c0,w1;
	
	xor (s0,x,y),(s,s0,z);
	and (c0,x,y),(w1,z,s0);
	or	 (c,w1,c0);
	
endmodule
