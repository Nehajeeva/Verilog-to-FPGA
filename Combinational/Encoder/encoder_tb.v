module encoder_tb;
reg [7:0] d;
wire x, y, z;
enoder uut (.x(x),.y(y),.z(z),.d(d));
initial
begin
$monitor("Time=%0t | d=%b | x=%b y=%b z=%b", $time, d, x, y, z);
d = 8'b00000001; #10;
d = 8'b00000010; #10;
d = 8'b00000100; #10;
d = 8'b00001000; #10;
d = 8'b00010000; #10;
d = 8'b00100000; #10;
d = 8'b01000000; #10;
d = 8'b10000000; #10;
$finish;
end
endmodule
