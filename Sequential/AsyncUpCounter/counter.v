module AsyncUpCounter(q, clk, reset);
output [3:0] q;
input clk, reset;
reg q0, q1, q2, q3;
always @(posedge clk or posedge reset)
begin
if (reset)
q0 <= 0;
end
always @(negedge q0 or posedge reset)
begin
if (reset)
q1 <= 0;
else
q1 <= ~q1;
end
always @(negedge q1 or posedge reset)
begin
if (reset)
q2 <= 0;
else
q2 <= ~q2;
end
always @(negedge q2 or posedge reset)
begin
if (reset)
q3 <= 0;
else
q3 <= ~q3;
end
assign q = {q3, q2, q1, q0};
endmodule
