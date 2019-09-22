module fourToOneMux1Bit (clk,Mux2In1,Mux2In2,Mux2In3,Mux2In4,Mux2Opt,mux2Out);
input clk;
input Mux2In1;
input Mux2In2;
input Mux2In3;
input Mux2In4;
input [1:0] Mux2Opt;
output mux2Out;

reg mux2Out;
always@(posedge clk)
begin
case (Mux2Opt)
2'b00: mux2Out <= Mux2In1;
2'b01: mux2Out <= Mux2In2;
2'b10: mux2Out <= Mux2In3;
2'b11: mux2Out <= Mux2In4;
endcase
end
endmodule
