module Bit6Alu(clk,reset,load,hold,shift,A,B,Opt,Opt2,C,OutQ,OutR1,OutR2,OutMux1,OutMux2,OutFAsum,OutFACout);
input clk;
input reset;
input load,hold,shift;
input Opt2;
input [5:0] A;
input [5:0] B;
input [1:0] Opt;
input [1:0] C;
output OutQ;
output [5:0] OutR1;
output [5:0] OutR2;
output [5:0] OutMux1;
output OutMux2;
output OutFAsum;
output OutFACout;

wire [5:0] R1Out;
wire [5:0] R2Out;
wire [5:0] R2NOut;
wire [5:0] FA1sum;
wire [5:0] mux1Out;
wire mux2Out;
wire FA1Cout;
wire Q1;
reg [5:0] LG1Bit;
reg [5:0] LG0Bit;


always @ (posedge clk)
begin
LG1Bit <= 6'b111111;
LG0Bit <= 6'b000000;
end
assign R2NOut = ~R2Out;

Reg R1 (clk,reset, A, FA1sum, R1Out, load, hold, shift);
Reg R2 (clk,reset, B, R2Out, R2Out, load, hold, shift);
fourToOneMux6Bit Mux1 (clk,R2Out,R2NOut,R1Out,LG1Bit,Opt,mux1Out);
fourToOneMux1Bit Mux2 (clk,LG0Bit,Q1,Opt2,FA1Cout,C,mux2Out);
REclk DFF (clk,mux2Out,Q1);
fullAdder FullAdd (clk,R1Out,mux1Out,Q1,FA1sum,FA1Cout);

assign OutR1 = R1Out;
assign OutR2 = R2Out;
assign OutMux1 = mux1Out;
assign OutMux2 = mux2Out;
assign OutQ = Q1;
assign OutFAsum = FA1sum;
assign OutFACout = FA1Cout;

endmodule
