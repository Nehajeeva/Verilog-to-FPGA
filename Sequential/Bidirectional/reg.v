module bidirectional(q, din, clk, dir);
output [3:0] q;
input din, clk, dir;
reg q3, q2, q1, q0;
always @(posedge clk)
begin
if (dir == 1)
begin
q3 <= q2;
q2 <= q1;
q1 <= q0;
q0 <= din;
end
else
begin
q0 <= q1;
q1 <= q2;
q2 <= q3;
q3 <= din;
end
end
assign q = {q3, q2, q1, q0};
endmodule
