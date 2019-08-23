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

module s2_mealy ( clk, rst, inp, outp, state);

   input clk, rst, inp;
   output outp;

   reg [1:0] state;
   reg outp;

   always @( posedge clk or rst )
   begin
   if( rst )
       state <= 2'b00;
   else
   begin
       case( state )
       2'b00:
       begin
            if( inp ) state <= 2'b01;
            else state <= 2'b10;
       end

       2'b01:
       begin
            if( inp ) state <= 2'b11;
            else state <= 2'b10;
       end

       2'b10:
       begin
            if( inp ) state <= 2'b01;
            else state <= 2'b11;
       end

       2'b11:
       begin
            if( inp ) state <= 2'b01;
            else state <= 2'b10;
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
