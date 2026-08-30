module siso_tb;
reg din;
reg clk;
reg load;
wire dout;
siso uut (.dout(dout),.din(din),.clk(clk),.load(load));
always #5 clk = ~clk;
initial
begin
clk = 0;
load = 1;
din = 0;
#10;
load = 0;
din = 1;
#10;
din = 0;
#10;
din = 1;
#10;
din = 1;
#10;
din = 0;
#10;
#10;
$finish;
end
initial
begin
$monitor("Time=%0t | CLK=%b | LOAD=%b | DIN=%b | DOUT=%b", $time, clk, load, din, dout);
end
endmodul
