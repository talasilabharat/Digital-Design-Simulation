		`timescale 1ns / 1ps
// dataflow style comparator 
// lt A<B, gt A>B, eq A=B
module Comparator(lt,gt,eq,A,B,cas_lt,cas_gt,cas_eq);
	output lt,gt,eq;
	input cas_lt,cas_eq,cas_gt;
	input[3:0] A;
	input[3:0] B;
	reg lt,gt,eq;
	always @(A,B,cas_lt,cas_gt,cas_eq)
	if(A>B) 
		begin
			gt=1;
			lt=0;
			eq=0;
		end 
	else if(A<B)
		begin
			gt=0;
			lt=1;
			eq=0;
		end 
	else
		begin
		
		if(cas_eq)
			begin
				gt=0;
				lt=0;
				eq=1;
			end
		else if(cas_lt)
			begin
				gt=0;
				lt=1;
				eq=0;
			end
		else if(cas_gt)
			begin
				gt=1;
				lt=0;
				eq=0;
			end
		else
			begin
				gt=0;
				lt=0;
				eq=0;
			end
			
		end
			
endmodule
