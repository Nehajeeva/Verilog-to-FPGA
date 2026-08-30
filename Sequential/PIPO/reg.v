module pipo(dout, din, clk, load);
input [3:0] din;
input clk, load;
output [3:0] dout;
reg [3:0] q;
always @(posedge clk)
begin
if (load)
begin
q[0] <= din[0];
q[1] <= din[1];
q[2] <= din[2];
q[3] <= din[3];
end
end
assign dout = q;
endmodule
