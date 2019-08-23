`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:42:53 10/19/2016 
// Design Name: 
// Module Name:    s2_mealy 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module s3_moore( clk, rst, inp, outp,state);

   input clk, rst, inp;
   output outp,state;

   reg [1:0] state;
   reg outp;

   always @( posedge clk or rst ) begin
   if( rst ) begin
       state <= 2'b00;

   end
   else  begin
       case( state )
       2'b00: begin
            if( inp ) begin
               state <= 2'b01;
 
            end
            else begin
                state <= 2'b10;
              
            end
       end

       2'b01: begin
            if( inp ) begin
                state <= 2'b11;
               
            end
            else  begin
               state <= 2'b10;
              
            end

       end

       2'b10: begin
            if( inp ) begin
                state <= 2'b01;
              
            end
            else begin
               state <= 2'b11;
             
            end

       end
		 
		  2'b11: begin
            if( inp ) begin
                state <= 2'b01;
               
            end
            else begin
               state <= 2'b10;
              
            end

       end
		 
		
       default: begin
            state <= 2'b00;
            
       end
     endcase
   end
end


always @(posedge clk or rst)
begin
    if( rst )
       outp <= 0;
    else if( state == 2'b11 )
       outp <= 1;
    else outp <= 0;

end


endmodule
