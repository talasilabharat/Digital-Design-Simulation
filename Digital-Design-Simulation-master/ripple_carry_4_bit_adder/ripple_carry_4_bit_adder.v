`timescale 1ns / 1ps

module ripple_carry_4_bit_adder(S,cout,A,B,cin);

	output[3:0] S;
	output cout;
	input[3:0]	A,B;
	input cin;
	wire[2:0] c;
	
	full_adder	F0(S[0],c[0],A[0],B[0],cin);
	full_adder	F1(S[1],c[1],A[1],B[1],c[0]);
	full_adder	F2(S[2],c[2],A[2],B[2],c[1]);
	full_adder	F3(S[3],cout,A[3],B[3],c[2]);

endmodule

module full_adder(s,c,x,y,z);
	
	output s,c;
	input x,y,z;
	wire s0,c0,w1;
	
	xor (s0,x,y),(s,s0,z);
	and (c0,x,y),(w1,z,s0);
	or	 (c,w1,c0);
	
endmodule
