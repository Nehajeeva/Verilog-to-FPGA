module pipo_tb;
reg [3:0] din;
reg clk, load;
wire [3:0] dout;
pipo uut (.dout(dout),.din(din),.clk(clk),.load(load));
always #5 clk = ~clk;
initial
begin
clk = 0;
load = 0;
din = 4'b0000;
#10;
load = 1;
din = 4'b1010;
#10;
load = 0;
#10;
load = 1;
din = 4'b1100;
#10;
load = 0;
#10;
load = 1;
din = 4'b0111;
#10;
load = 0;
#10;
$finish;
end
initial
begin
$monitor("Time=%0t | CLK=%b | LOAD=%b | DIN=%b | DOUT=%b",$time, clk, load, din, dout);
end
endmodule
