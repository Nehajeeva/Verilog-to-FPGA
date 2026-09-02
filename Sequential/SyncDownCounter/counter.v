module SyncDownCounter(q, clk, reset);
output [3:0] q;
input clk, reset;
reg q0, q1, q2, q3;
always @(posedge clk or posedge reset)
begin
if (reset)
begin
q0 <= 1;
q1 <= 1;
q2 <= 1;
q3 <= 1;
end
else
begin
q0 <= ~q0;
if (q0 == 0)
q1 <= ~q1;
if (q0 == 0 && q1 == 0)
q2 <= ~q2;
if (q0 == 0 && q1 == 0 && q2 == 0)
q3 <= ~q3;
end
end
assign q = {q3, q2, q1, q0};
endmodule
