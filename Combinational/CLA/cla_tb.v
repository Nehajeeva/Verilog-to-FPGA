module cla_tb;
reg [3:0] a, b;
reg Cin;
wire [3:0] S;
wire cout;
cla uut (.cout(cout),.S(S),.a(a),.b(b),.Cin(Cin));
initial 
begin
a = 4'b0000;
b = 4'b0000;
Cin = 0;
#10;
a = 4'b0011;
b = 4'b0010;
Cin = 0;
#10;
a = 4'b0101;
b = 4'b0011;
Cin = 0;
#10;
a = 4'b1111;
b = 4'b0001;
Cin = 0;
#10;
a = 4'b1111;
b = 4'b1111;
Cin = 0;
#10;
a = 4'b1010;
b = 4'b0101;
Cin = 1;
#10;
a = 4'b1001;
b = 4'b0110;
Cin = 1;
#10;
a = 4'b1111;
b = 4'b1111;
Cin = 1;
#10;
$finish;
end
initial 
begin
$monitor("Time=%0t | a=%b b=%b Cin=%b | S=%b Cout=%b",$time, a, b, Cin, S, cout);
end
endmodule
