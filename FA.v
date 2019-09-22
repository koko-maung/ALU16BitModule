module fullAdder (clk,FAIn1,FAIn2,FACin,FAsum,FACout);
input clk;
input [5:0] FAIn1;
input [5:0] FAIn2;
input FACin;
output reg [5:0] FAsum;
output reg FACout;

always@(posedge clk)
begin
assign {FACout,FAsum} = FAIn1+FAIn2+FACin;
end

endmodule
