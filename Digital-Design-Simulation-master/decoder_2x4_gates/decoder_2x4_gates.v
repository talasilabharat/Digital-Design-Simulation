`timescale 1ns / 1ps

module decoder_2x4_gates(Y,S,enable);
	 // gate level modelling
	 output[3:0] Y; //3 msb 0 lsb
	 input[1:0]	S;
	 input enable;
	 wire S0,S1,en;
	 
	 not	(S0,S[0]),(S1,S[1]),(en,enable);
	 nand	(Y[0],S0,S1,en),(Y[1],S[0],S1,en),(Y[2],S0,S[1],en),(Y[3],S[0],S[1],en);
			
endmodule
