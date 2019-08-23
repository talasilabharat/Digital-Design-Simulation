`timescale 1ns / 1ps

module Mealy_Zero_Detector(Y,A,B,x,clk,reset);
	output Y,A,B;
	input x,clk,reset;
	wire DA,DB;
	
	assign DA=x&A | x&B ;
	assign DB=x&~A;
	assign Y= (A|B) & ~x ;
	
	D_flip_flop D1(A,DA,clk,reset);
	D_flip_flop D2(B,DB,clk,reset);
	
endmodule

module D_flip_flop(Q,D,clk,reset);
	output Q;
	input D,clk,reset;
	reg Q;
	
	always @(posedge clk,negedge reset)
		begin
		if(~reset)
			Q<=0;
		else
			Q<=D;
		end
endmodule
