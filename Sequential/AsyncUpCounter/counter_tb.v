module AsyncUpCounter_tb;
reg clk, reset;
wire [3:0] q;
AsyncUpCounter uut(.q(q),.clk(clk),.reset(reset));
always #5 clk = ~clk;
initial
begin
clk = 0;
reset = 1;
#10 reset = 0;
#100 $finish;
end
initial
begin
$monitor("time=%0t clk=%b reset=%b q=%b",$time, clk, reset, q);
end
endmodule
