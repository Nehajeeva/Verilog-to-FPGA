module mux64to1_tb;
reg [63:0] a;
reg [5:0] s;
wire y;
mux64to1 DUT(.y(y),.a(a),.s(s));
initial
begin
a = 64'b0000000100000010000001000000100000010000001000000100000010000001;
s = 6'b000000;
#10;
s = 6'b000001;
#10;
s = 6'b000111;
#10;
s = 6'b001000;
#10;
s = 6'b001111;
#10;
s = 6'b011111;
#10;
s = 6'b100000;
#10;
s = 6'b101111;
#10;
s = 6'b111111;
#10;
$finish;
end
initial
begin
$monitor("Time=%0t | Select=%d | Output=%b",$time, s, y);
end
endmodule
