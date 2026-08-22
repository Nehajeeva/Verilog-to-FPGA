module mux64to1(y,a,s);
output y;
input [63:0]a;
input [5:0]s;
wire [8:0]w;
mux8to1 M1(w[0],a[7:0],s[2:0]);
mux8to1 M2(w[1],a[15:8],s[2:0]);
mux8to1 M3(w[2],a[23:16],s[2:0]);
mux8to1 M4(w[3],a[31:24],s[2:0]);
mux8to1 M5(w[4],a[39:32],s[2:0]);
mux8to1 M6(w[5],a[47:40],s[2:0]);
mux8to1 M7(w[6],a[55:48],s[2:0]);
mux8to1 M8(w[7],a[63:56],s[2:0]);
mux8to1 M9(y,w[7:0],s[5:3]);
endmodule
module mux8to1(y, a, s);
output y;
input [7:0] a;
input [2:0] s;
reg y;
always @(*) begin
case (s)
3'b000: y = a[0];
3'b001: y = a[1];
3'b010: y = a[2];
3'b011: y = a[3];
3'b100: y = a[4];
3'b101: y = a[5];
3'b110: y = a[6];
3'b111: y = a[7];
default: y = 1'b0;
endcase
end
endmodule
