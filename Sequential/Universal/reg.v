module Univerasal(q, din, pin, clk, sel);
output [3:0] q;
input din, clk;
input [3:0] pin;
input [1:0] sel;
reg q3, q2, q1, q0;
always @(posedge clk)
begin
case(sel)
2'b00: begin
q3 <= q3;
q2 <= q2;
q1 <= q1;
q0 <= q0;
end
2'b01: begin
q3 <= q2;
q2 <= q1;
q1 <= q0;
q0 <= din;
end
2'b10: begin
q3 <= din;
q2 <= q3;
q1 <= q2;
q0 <= q1;
end
2'b11: begin
q3 <= pin[3];
q2 <= pin[2];
q1 <= pin[1];
q0 <= pin[0];
end
endcase
end
assign q = {q3, q2, q1, q0};
endmodule
