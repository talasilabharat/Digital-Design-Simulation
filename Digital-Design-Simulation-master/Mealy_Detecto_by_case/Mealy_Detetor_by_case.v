`timescale 1ns / 1ps

module Mealy_Detetor_by_case(Y,x,clk,reset);
	output reg Y;
	input x,clk,reset;
	reg[1:0] state,next;
	parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
	always @(posedge clk,negedge reset)
		if(~reset)
			state=S0;
		else 
			state=next;
	
	always @(state,x)
		case(state)
			S0: next= x?S1:S0;
			S1: next= x?S3:S0;
			S2: next= x?S2:S0;
			S3: next= x?S2:S0;
		endcase
	
	always @(state,x)
		case(state)
			S0: Y=0;
			S1,S2,S3: Y = x?0:1;
		endcase
endmodule
