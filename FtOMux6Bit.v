module fourToOneMux6Bit (clk,MuxIn1,MuxIn2,MuxIn3,MuxIn4,MuxOpt,muxOut);
input clk;
input [5:0] MuxIn1;
input [5:0] MuxIn2;
input [5:0] MuxIn3;
input [5:0] MuxIn4;
input [1:0] MuxOpt;
output [5:0] muxOut;

reg [5:0] muxOut;
always@(posedge clk)
begin
case (MuxOpt)
2'b00: muxOut <= MuxIn1;
2'b01: muxOut <= MuxIn2;
2'b10: muxOut <= MuxIn3;
2'b11: muxOut <= MuxIn4;
endcase
end
endmodule
