`timescale 1ns / 1ps

module Ring_counter(Y,I,select,clk,reset);
	output[3:0] Y;
	input clk,reset;
	input[3:0] I;
	input select;
					
	Stage S0(Y[0],Y[3],I[0],select,clk,reset);
	Stage S1(Y[1],Y[0],I[1],select,clk,reset);
	Stage S2(Y[2],Y[1],I[2],select,clk,reset);
	Stage S3(Y[3],Y[2],I[3],select,clk,reset);

endmodule

module Stage(Q,I1,I0,select,clk,reset);
	output Q;
	input I0,I1;
	input select;
	input clk,reset;
	wire stage_Q;
	
	Mux M1(stage_Q,I1,I0,select);
	D_flip_flop D(Q,stage_Q,clk,reset);
	
endmodule

module D_flip_flop(D_Q,D,clk,reset);
	output D_Q;
	input D,clk,reset;
	reg D_Q;
	
	always @(posedge clk,negedge reset)
		begin 
		if(~reset)
			D_Q<=0;
		else
			D_Q<=D;
		end
endmodule

module Mux(mux_Q,I1,I0,mux_select);
	output reg mux_Q;
	input I0,I1;
	input mux_select;
	always @ (mux_select,I0,I1)
		case(mux_select)
			1'b0:mux_Q=I0;
			1'b1:mux_Q=I1;
		endcase
	
endmodule 