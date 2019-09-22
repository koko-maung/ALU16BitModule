module Reg (clk,reset, Rin, Rsum, Rout, load, hold, shift);
input clk, reset;
input [5:0] Rin;
input [5:0] Rsum;
input load, hold, shift;
output wire [5:0] Rout;
reg [5:0] temp;

always@(posedge clk, negedge reset)
begin
if(~reset)
temp<=0;
else if(load)
temp<=Rin;
else if(hold)
temp=temp;
else if(shift)
temp=Rsum;
end

assign Rout= temp;

endmodule
