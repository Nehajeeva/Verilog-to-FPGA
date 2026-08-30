module register(dout,din,clk,load);
input [3:0] din;
input clk,load;
output dout;
reg [3:0] q;
always@(posedge clk)
begin
if (load)
begin
q[0]<=din[0];
q[1]<=din[1];
q[2]<=din[2];
q[3]<=din[3];
end
else
begin
q[0]<=1'b0;
q[1]<=q[0];
q[2]<=q[1];
q[3]<=q[2];
end
end
assign dout=q[3];
endmodule
