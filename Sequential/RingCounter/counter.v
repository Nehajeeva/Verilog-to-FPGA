module RingCounter(q, clk, reset);
output [3:0] q;
input clk, reset;
reg q0, q1, q2, q3;
always @(posedge clk or posedge reset)
begin
if (reset)
begin
q0 <= 1;
q1 <= 0;
q2 <= 0;
q3 <= 0;
end
else
begin
q0 <= q3;
q1 <= q0;
q2 <= q1;
q3 <= q2;
end
end
assign q = {q3, q2, q1, q0};
endmodule
