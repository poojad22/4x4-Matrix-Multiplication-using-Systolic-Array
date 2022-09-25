`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2022 22:37:46
// Design Name: 
// Module Name: sys_array_tb
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


module systolicc_tb();
reg [31:0] a1,a2,a3,a4,b1,b2,b3,b4;
reg clk,rst;
wire [63:0] c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16;
syst_array dut(a1,a2,a3,a4,b1,b2,b3,b4,clk,rst,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16);
initial begin
clk=0;
end
always #5 clk=~clk;

initial begin
rst=0;
#5 rst=1;
#5 rst=0;a1=1;a2=0;a3=0;a4=0;b1=2;b2=0;b3=0;b4=0;
#10 a1=3;a2=4;a3=0;a4=0;b1=5;b2=6;b3=0;b4=0;
#10 a1=7;a2=8;a3=9;a4=0;b1=10;b2=11;b3=12;b4=0;
#10 a1=13;a2=14;a3=15;a4=16;b1=17;b2=18;b3=19;b4=20;
#10 a1=0;a2=21;a3=22;a4=23;b1=0;b2=24;b3=25;b4=26;
#10 a1=0;a2=0;a3=27;a4=28;b1=0;b2=0;b3=29;b4=30;
#10 a1=1;a2=0;a3=0;a4=31;b1=0;b2=0;b3=0;b4=32;
#10 a1=0;a2=0;a3=0;a4=0;b1=0;b2=0;b3=0;b4=0;

#50 $stop;
end
endmodule
