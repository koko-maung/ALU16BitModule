module Bit6ALU_TB;
reg clk;
reg reset;
reg load,hold,shift;
reg Opt2;
reg [5:0] A;
reg [5:0] B;
reg [1:0] Opt;
reg [1:0] C;
wire [5:0] OutR1;
wire [5:0] OutR2;
wire [5:0] OutMux1;
wire OutMux2;
Bit6Alu Test01(.clk(clk),.reset(reset),.load(load),.hold(hold),.shift(shift),.A(A),.B(B),.Opt(Opt),.Opt2(Opt2),.C(C),.OutQ(OutQ),.OutR1(OutR1),.OutR2(OutR2),.OutMux1(OutMux1),.OutMux2(OutMux2),.OutFAsum(OutFAsum),.OutFACout(OutFACout));

initial
begin
clk = 0;
reset = 1;
end

always 
#5 clk = !clk;
initial
begin
$monitor("clk=%b,reset=%b,load=%b,hold=%b,shift=%b,A=%b,B=%b,Opt=%b,Opt2=%b,C=%b,OutQ=%b,OutR1=%b,OutR2=%b,OutMux1=%b,OutMux2=%b,OutFAsum=%b,OutFACout=%b",clk,reset,load,hold,shift,A,B,Opt,Opt2,C,OutQ,OutR1,OutR2,OutMux1,OutMux2,OutFAsum,OutFACout);
//Initial
load = 1; hold = 0; shift = 0; A = 6'b000000; B = 6'b000000; Opt = 00; Opt2 = 0; C = 00; #10;
load = 0; hold = 1; shift = 0; A = 6'b000000; B = 6'b000000; Opt = 00; Opt2 = 0; C = 00; #20;

//----------------------------------------------------------------------------------------------------------|
//Test C00 ; Opt 00 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b000000; B = 6'b111111; Opt = 00; Opt2 = 0; C = 00; #20;
load = 0; hold = 1; shift = 0; A = 6'b000001; B = 6'b111110; Opt = 00; Opt2 = 0; C = 00; #20;
load = 0; hold = 0; shift = 1; A = 6'b000010; B = 6'b111101; Opt = 00; Opt2 = 0; C = 00; #20;

//Test C01 ; Opt 00 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b000011; B = 6'b111100; Opt = 00; Opt2 = 0; C = 01; #20;
load = 0; hold = 1; shift = 0; A = 6'b000100; B = 6'b111011; Opt = 00; Opt2 = 0; C = 01; #20;
load = 0; hold = 0; shift = 1; A = 6'b000101; B = 6'b111010; Opt = 00; Opt2 = 0; C = 01; #20;

//Test C10 ; Opt 00 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b000110; B = 6'b111001; Opt = 00; Opt2 = 0; C = 10; #20;
load = 0; hold = 1; shift = 0; A = 6'b000111; B = 6'b111000; Opt = 00; Opt2 = 0; C = 10; #20;
load = 0; hold = 0; shift = 1; A = 6'b001000; B = 6'b110111; Opt = 00; Opt2 = 0; C = 10; #20;

//Test C11 ; Opt 00 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b001001; B = 6'b111001; Opt = 00; Opt2 = 0; C = 11; #20;
load = 0; hold = 1; shift = 0; A = 6'b001010; B = 6'b111000; Opt = 00; Opt2 = 0; C = 11; #20;
load = 0; hold = 0; shift = 1; A = 6'b001011; B = 6'b110111; Opt = 00; Opt2 = 0; C = 11; #20;

//----------------------------------------------------------------------------------------------------------|
//Test C00 ; Opt 01 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b000000; B = 6'b111111; Opt = 01; Opt2 = 0; C = 00; #20;
load = 0; hold = 1; shift = 0; A = 6'b000001; B = 6'b111110; Opt = 01; Opt2 = 0; C = 00; #20;
load = 0; hold = 0; shift = 1; A = 6'b000010; B = 6'b111101; Opt = 01; Opt2 = 0; C = 00; #20;

//Test C01 ; Opt 01 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b000011; B = 6'b111100; Opt = 01; Opt2 = 0; C = 01; #20;
load = 0; hold = 1; shift = 0; A = 6'b000100; B = 6'b111011; Opt = 01; Opt2 = 0; C = 01; #20;
load = 0; hold = 0; shift = 1; A = 6'b000101; B = 6'b111010; Opt = 01; Opt2 = 0; C = 01; #20;

//Test C10 ; Opt 01 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b000110; B = 6'b111001; Opt = 01; Opt2 = 0; C = 10; #20;
load = 0; hold = 1; shift = 0; A = 6'b000111; B = 6'b111000; Opt = 01; Opt2 = 0; C = 10; #20;
load = 0; hold = 0; shift = 1; A = 6'b001000; B = 6'b110111; Opt = 01; Opt2 = 0; C = 10; #20;

//Test C11 ; Opt 01 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b001001; B = 6'b111001; Opt = 01; Opt2 = 0; C = 11; #20;
load = 0; hold = 1; shift = 0; A = 6'b001010; B = 6'b111000; Opt = 01; Opt2 = 0; C = 11; #20;
load = 0; hold = 0; shift = 1; A = 6'b001011; B = 6'b110111; Opt = 01; Opt2 = 0; C = 11; #20;

//----------------------------------------------------------------------------------------------------------|
//Test C00 ; Opt 10 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b000000; B = 6'b111111; Opt = 10; Opt2 = 0; C = 00; #20;
load = 0; hold = 1; shift = 0; A = 6'b000001; B = 6'b111110; Opt = 10; Opt2 = 0; C = 00; #20;
load = 0; hold = 0; shift = 1; A = 6'b000010; B = 6'b111101; Opt = 10; Opt2 = 0; C = 00; #20;

//Test C01 ; Opt 10 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b000011; B = 6'b111100; Opt = 10; Opt2 = 0; C = 01; #20;
load = 0; hold = 1; shift = 0; A = 6'b000100; B = 6'b111011; Opt = 10; Opt2 = 0; C = 01; #20;
load = 0; hold = 0; shift = 1; A = 6'b000101; B = 6'b111010; Opt = 10; Opt2 = 0; C = 01; #20;

//Test C10 ; Opt 10 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b000110; B = 6'b111001; Opt = 10; Opt2 = 0; C = 10; #20;
load = 0; hold = 1; shift = 0; A = 6'b000111; B = 6'b111000; Opt = 10; Opt2 = 0; C = 10; #20;
load = 0; hold = 0; shift = 1; A = 6'b001000; B = 6'b110111; Opt = 10; Opt2 = 0; C = 10; #20;

//Test C11 ; Opt 10 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b001001; B = 6'b111001; Opt = 10; Opt2 = 0; C = 11; #20;
load = 0; hold = 1; shift = 0; A = 6'b001010; B = 6'b111000; Opt = 10; Opt2 = 0; C = 11; #20;
load = 0; hold = 0; shift = 1; A = 6'b001011; B = 6'b110111; Opt = 10; Opt2 = 0; C = 11; #20;

//----------------------------------------------------------------------------------------------------------|
//Test C00 ; Opt 11 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b000000; B = 6'b111111; Opt = 11; Opt2 = 0; C = 00; #20;
load = 0; hold = 1; shift = 0; A = 6'b000001; B = 6'b111110; Opt = 11; Opt2 = 0; C = 00; #20;
load = 0; hold = 0; shift = 1; A = 6'b000010; B = 6'b111101; Opt = 11; Opt2 = 0; C = 00; #20;

//Test C01 ; Opt 11 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b000011; B = 6'b111100; Opt = 11; Opt2 = 0; C = 01; #20;
load = 0; hold = 1; shift = 0; A = 6'b000100; B = 6'b111011; Opt = 11; Opt2 = 0; C = 01; #20;
load = 0; hold = 0; shift = 1; A = 6'b000101; B = 6'b111010; Opt = 11; Opt2 = 0; C = 01; #20;

//Test C10 ; Opt 11 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b000110; B = 6'b111001; Opt = 11; Opt2 = 0; C = 10; #20;
load = 0; hold = 1; shift = 0; A = 6'b000111; B = 6'b111000; Opt = 11; Opt2 = 0; C = 10; #20;
load = 0; hold = 0; shift = 1; A = 6'b001000; B = 6'b110111; Opt = 11; Opt2 = 0; C = 10; #20;

//Test C11 ; Opt 11 ; Opt2 0
load = 1; hold = 0; shift = 0; A = 6'b001001; B = 6'b111001; Opt = 11; Opt2 = 0; C = 11; #20;
load = 0; hold = 1; shift = 0; A = 6'b001010; B = 6'b111000; Opt = 11; Opt2 = 0; C = 11; #20;
load = 0; hold = 0; shift = 1; A = 6'b001011; B = 6'b110111; Opt = 11; Opt2 = 0; C = 11; #20;

//----------------------------------------------------------------------------------------------------------|
//----------------------------------------------------------------------------------------------------------|
//Test C00 ; Opt 00 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b000000; B = 6'b111111; Opt = 00; Opt2 = 1; C = 00; #20;
load = 0; hold = 1; shift = 0; A = 6'b000001; B = 6'b111110; Opt = 00; Opt2 = 1; C = 00; #20;
load = 0; hold = 0; shift = 1; A = 6'b000010; B = 6'b111101; Opt = 00; Opt2 = 1; C = 00; #20;

//Test C01 ; Opt 00 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b000011; B = 6'b111100; Opt = 00; Opt2 = 1; C = 01; #20;
load = 0; hold = 1; shift = 0; A = 6'b000100; B = 6'b111011; Opt = 00; Opt2 = 1; C = 01; #20;
load = 0; hold = 0; shift = 1; A = 6'b000101; B = 6'b111010; Opt = 00; Opt2 = 1; C = 01; #20;

//Test C10 ; Opt 00 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b000110; B = 6'b111001; Opt = 00; Opt2 = 1; C = 10; #20;
load = 0; hold = 1; shift = 0; A = 6'b000111; B = 6'b111000; Opt = 00; Opt2 = 1; C = 10; #20;
load = 0; hold = 0; shift = 1; A = 6'b001000; B = 6'b110111; Opt = 00; Opt2 = 1; C = 10; #20;

//Test C11 ; Opt 00 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b001001; B = 6'b111001; Opt = 00; Opt2 = 1; C = 11; #20;
load = 0; hold = 1; shift = 0; A = 6'b001010; B = 6'b111000; Opt = 00; Opt2 = 1; C = 11; #20;
load = 0; hold = 0; shift = 1; A = 6'b001011; B = 6'b110111; Opt = 00; Opt2 = 1; C = 11; #20;

//----------------------------------------------------------------------------------------------------------|
//Test C00 ; Opt 01 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b000000; B = 6'b111111; Opt = 01; Opt2 = 1; C = 00; #20;
load = 0; hold = 1; shift = 0; A = 6'b000001; B = 6'b111110; Opt = 01; Opt2 = 1; C = 00; #20;
load = 0; hold = 0; shift = 1; A = 6'b000010; B = 6'b111101; Opt = 01; Opt2 = 1; C = 00; #20;

//Test C01 ; Opt 01 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b000011; B = 6'b111100; Opt = 01; Opt2 = 1; C = 01; #20;
load = 0; hold = 1; shift = 0; A = 6'b000100; B = 6'b111011; Opt = 01; Opt2 = 1; C = 01; #20;
load = 0; hold = 0; shift = 1; A = 6'b000101; B = 6'b111010; Opt = 01; Opt2 = 1; C = 01; #20;

//Test C10 ; Opt 01 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b000110; B = 6'b111001; Opt = 01; Opt2 = 1; C = 10; #20;
load = 0; hold = 1; shift = 0; A = 6'b000111; B = 6'b111000; Opt = 01; Opt2 = 1; C = 10; #20;
load = 0; hold = 0; shift = 1; A = 6'b001000; B = 6'b110111; Opt = 01; Opt2 = 1; C = 10; #20;

//Test C11 ; Opt 01 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b001001; B = 6'b111001; Opt = 01; Opt2 = 1; C = 11; #20;
load = 0; hold = 1; shift = 0; A = 6'b001010; B = 6'b111000; Opt = 01; Opt2 = 1; C = 11; #20;
load = 0; hold = 0; shift = 1; A = 6'b001011; B = 6'b110111; Opt = 01; Opt2 = 1; C = 11; #20;

//----------------------------------------------------------------------------------------------------------|
//Test C00 ; Opt 10 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b000000; B = 6'b111111; Opt = 10; Opt2 = 1; C = 00; #20;
load = 0; hold = 1; shift = 0; A = 6'b000001; B = 6'b111110; Opt = 10; Opt2 = 1; C = 00; #20;
load = 0; hold = 0; shift = 1; A = 6'b000010; B = 6'b111101; Opt = 10; Opt2 = 1; C = 00; #20;

//Test C01 ; Opt 10 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b000011; B = 6'b111100; Opt = 10; Opt2 = 1; C = 01; #20;
load = 0; hold = 1; shift = 0; A = 6'b000100; B = 6'b111011; Opt = 10; Opt2 = 1; C = 01; #20;
load = 0; hold = 0; shift = 1; A = 6'b000101; B = 6'b111010; Opt = 10; Opt2 = 1; C = 01; #20;

//Test C10 ; Opt 10 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b000110; B = 6'b111001; Opt = 10; Opt2 = 1; C = 10; #20;
load = 0; hold = 1; shift = 0; A = 6'b000111; B = 6'b111000; Opt = 10; Opt2 = 1; C = 10; #20;
load = 0; hold = 0; shift = 1; A = 6'b001000; B = 6'b110111; Opt = 10; Opt2 = 1; C = 10; #20;

//Test C11 ; Opt 10 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b001001; B = 6'b111001; Opt = 10; Opt2 = 1; C = 11; #20;
load = 0; hold = 1; shift = 0; A = 6'b001010; B = 6'b111000; Opt = 10; Opt2 = 1; C = 11; #20;
load = 0; hold = 0; shift = 1; A = 6'b001011; B = 6'b110111; Opt = 10; Opt2 = 1; C = 11; #20;

//----------------------------------------------------------------------------------------------------------|
//Test C00 ; Opt 11 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b000000; B = 6'b111111; Opt = 11; Opt2 = 1; C = 00; #20;
load = 0; hold = 1; shift = 0; A = 6'b000001; B = 6'b111110; Opt = 11; Opt2 = 1; C = 00; #20;
load = 0; hold = 0; shift = 1; A = 6'b000010; B = 6'b111101; Opt = 11; Opt2 = 1; C = 00; #20;

//Test C01 ; Opt 11 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b000011; B = 6'b111100; Opt = 11; Opt2 = 1; C = 01; #20;
load = 0; hold = 1; shift = 0; A = 6'b000100; B = 6'b111011; Opt = 11; Opt2 = 1; C = 01; #20;
load = 0; hold = 0; shift = 1; A = 6'b000101; B = 6'b111010; Opt = 11; Opt2 = 1; C = 01; #20;

//Test C10 ; Opt 11 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b000110; B = 6'b111001; Opt = 11; Opt2 = 1; C = 10; #20;
load = 0; hold = 1; shift = 0; A = 6'b000111; B = 6'b111000; Opt = 11; Opt2 = 1; C = 10; #20;
load = 0; hold = 0; shift = 1; A = 6'b001000; B = 6'b110111; Opt = 11; Opt2 = 1; C = 10; #20;

//Test C11 ; Opt 11 ; Opt2 1
load = 1; hold = 0; shift = 0; A = 6'b001001; B = 6'b111001; Opt = 11; Opt2 = 1; C = 11; #20;
load = 0; hold = 1; shift = 0; A = 6'b001010; B = 6'b111000; Opt = 11; Opt2 = 1; C = 11; #20;
load = 0; hold = 0; shift = 1; A = 6'b001011; B = 6'b110111; Opt = 11; Opt2 = 1; C = 11; #20;

//----------------------------------------------------------------------------------------------------------|
//----------------------------------------------------------------------------------------------------------|

end
endmodule
