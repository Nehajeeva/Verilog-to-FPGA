module siso(dout, din, clk, load);
input din;
input clk, load;
output dout;
reg [3:0] q;
always @(posedge clk)
begin
if (load)
begin
q <= 4'b0000;
end
else
begin
q[3] <= q[2];
q[2] <= q[1];
q[1] <= q[0];
q[0] <= din;
end
end
assign dout = q[3];
endmodule
