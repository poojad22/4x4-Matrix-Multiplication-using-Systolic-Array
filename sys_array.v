`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2022 22:29:08
// Design Name: 
// Module Name: sys_array
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module syst_array(a1,a2,a3,a4,b1,b2,b3,b4,clk,rst,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16);
input [31:0] a1,a2,a3,a4,b1,b2,b3,b4;
input clk,rst;
inout [63:0] c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16;
wire [63:0] wc1,wc2,wc3,wc4,wc5,wc6,wc7,wc8,wc9,wc10,wc11,wc12,wc13,wc14,wc15,wc16;
wire [31:0] wh1,wh2,wh3,wh4,wh5,wh6,wh7,wh8,wh9,wh10,wh11,wh12,wh13,wh14,wh15,wh16;
wire [31:0] wh17,wh18,wh19,wh20,wh21,wh22,wh23,wh24;
wire [31:0] wv1,wv2,wv3,wv4,wv5,wv6,wv7,wv8,wv9,wv10,wv11,wv12,wv13,wv14,wv15,wv16;
wire [31:0] wv17,wv18,wv19,wv20,wv21,wv22,wv23,wv24;

//Instanitating processing element

processing_element pe1(.a(a1),.b(b1),.q(wc1),.a0(wh1),.b0(wv1),.c(c1));
processing_element pe2(.a(wh2),.b(b2),.q(wc2),.a0(wh3),.b0(wv7),.c(c2));
processing_element pe3(.a(wh4),.b(b3),.q(wc3),.a0(wh5),.b0(wv13),.c(c3));
processing_element pe4(.a(wh6),.b(b4),.q(wc4),.a0(),.b0(wv19),.c(c4));
processing_element pe5(.a(a2),.b(wv2),.q(wc5),.a0(wh7),.b0(wv3),.c(c5));
processing_element pe6(.a(wh8),.b(wv8),.q(wc6),.a0(wh9),.b0(wv9),.c(c6));
processing_element pe7(.a(wh10),.b(wv14),.q(wc7),.a0(wh11),.b0(wv15),.c(c7));
processing_element pe8(.a(wh12),.b(wv20),.q(wc8),.a0(),.b0(wv21),.c(c8));
processing_element pe9(.a(a3),.b(wv4),.q(wc9),.a0(wh13),.b0(wv5),.c(c9));
processing_element pe10(.a(wh14),.b(wv10),.q(wc10),.a0(wh15),.b0(wv11),.c(c10));
processing_element pe11(.a(wh16),.b(wv16),.q(wc11),.a0(wh17),.b0(wv17),.c(c11));
processing_element pe12(.a(wh18),.b(wv22),.q(wc12),.a0(),.b0(wv23),.c(c12));
processing_element pe13(.a(a4),.b(wv6),.q(wc13),.a0(wh19),.b0(),.c(c13));
processing_element pe14(.a(wh20),.b(wv12),.q(wc14),.a0(wh21),.b0(),.c(c14));
processing_element pe15(.a(wh22),.b(wv18),.q(wc15),.a0(wh23),.b0(),.c(c15));
processing_element pe16(.a(wh24),.b(wv24),.q(wc16),.a0(),.b0(),.c(c16));


//Instantiating D flip flop (Delay element)

d_flipflop dh1(.clk(clk),.rst(rst),.ip(wh1),.q(wh2));
d_flipflop dh2(.clk(clk),.rst(rst),.ip(wh3),.q(wh4));
d_flipflop dh3(.clk(clk),.rst(rst),.ip(wh5),.q(wh6));
d_flipflop dh4(.clk(clk),.rst(rst),.ip(wh7),.q(wh8));
d_flipflop dh5(.clk(clk),.rst(rst),.ip(wh9),.q(wh10));
d_flipflop dh6(.clk(clk),.rst(rst),.ip(wh11),.q(wh12));
d_flipflop dh7(.clk(clk),.rst(rst),.ip(wh13),.q(wh14));
d_flipflop dh8(.clk(clk),.rst(rst),.ip(wh15),.q(wh16));
d_flipflop dh9(.clk(clk),.rst(rst),.ip(wh17),.q(wh18));
d_flipflop dh10(.clk(clk),.rst(rst),.ip(wh19),.q(wh20));
d_flipflop dh11(.clk(clk),.rst(rst),.ip(wh21),.q(wh22));
d_flipflop dh12(.clk(clk),.rst(rst),.ip(wh23),.q(wh24));

d_flipflop dv1(.clk(clk),.rst(rst),.ip(wv1),.q(wv2));
d_flipflop dv2(.clk(clk),.rst(rst),.ip(wv3),.q(wv4));
d_flipflop dv3(.clk(clk),.rst(rst),.ip(wv5),.q(wv6));
d_flipflop dv4(.clk(clk),.rst(rst),.ip(wv7),.q(wv8));
d_flipflop dv5(.clk(clk),.rst(rst),.ip(wv9),.q(wv10));
d_flipflop dv6(.clk(clk),.rst(rst),.ip(wv11),.q(wv12));
d_flipflop dv7(.clk(clk),.rst(rst),.ip(wv13),.q(wv14));
d_flipflop dv8(.clk(clk),.rst(rst),.ip(wv15),.q(wv16));
d_flipflop dv9(.clk(clk),.rst(rst),.ip(wv17),.q(wv18));
d_flipflop dv10(.clk(clk),.rst(rst),.ip(wv19),.q(wv20));
d_flipflop dv11(.clk(clk),.rst(rst),.ip(wv21),.q(wv22));
d_flipflop dv12(.clk(clk),.rst(rst),.ip(wv23),.q(wv24));

d_flipflop dc1(.clk(clk),.rst(rst),.ip(c1),.q(wc1));
d_flipflop dc2(.clk(clk),.rst(rst),.ip(c2),.q(wc2));
d_flipflop dc3(.clk(clk),.rst(rst),.ip(c3),.q(wc3));
d_flipflop dc4(.clk(clk),.rst(rst),.ip(c4),.q(wc4));
d_flipflop dc5(.clk(clk),.rst(rst),.ip(c5),.q(wc5));
d_flipflop dc6(.clk(clk),.rst(rst),.ip(c6),.q(wc6));
d_flipflop dc7(.clk(clk),.rst(rst),.ip(c7),.q(wc7));
d_flipflop dc8(.clk(clk),.rst(rst),.ip(c8),.q(wc8));
d_flipflop dc9(.clk(clk),.rst(rst),.ip(c9),.q(wc9));
d_flipflop dc10(.clk(clk),.rst(rst),.ip(c10),.q(wc10));
d_flipflop dc11(.clk(clk),.rst(rst),.ip(c11),.q(wc11));
d_flipflop dc12(.clk(clk),.rst(rst),.ip(c12),.q(wc12));
d_flipflop dc13(.clk(clk),.rst(rst),.ip(c13),.q(wc13));
d_flipflop dc14(.clk(clk),.rst(rst),.ip(c14),.q(wc14));
d_flipflop dc15(.clk(clk),.rst(rst),.ip(c15),.q(wc15));
d_flipflop dc16(.clk(clk),.rst(rst),.ip(c16),.q(wc16));

endmodule


module d_flipflop(clk,rst,ip,q);
input clk,rst;
input [63:0] ip;
output reg [63:0] q;
always@(posedge clk)
begin
if(rst==1) begin
q<=0;
end
else begin
q<=ip;
end
end
endmodule


module processing_element(a,b,q,a0,b0,c);
input [31:0] a,b,q;
output [31:0] a0,b0;
output [63:0] c;
assign c=(a*b)+q;
assign a0=a;
assign b0=b;
endmodule
