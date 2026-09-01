module bidirectional_tb;
reg din, clk, dir;
wire [3:0] q;
bidirectional uut(.q(q), .din(din), .clk(clk), .dir(dir));
always #5 clk = ~clk;
initial
begin
clk = 0;
din = 0;
dir = 1;
#10 din = 1;
#10 din = 0;
#10 din = 1;
#10 din = 1;
#10 dir = 0;
#10 din = 0;
#10 din = 1;
#10 din = 0;
#10 din = 1;
#20 $finish;
end
initial
begin
$monitor("time=%0t clk=%b din=%b dir=%b q=%b", $time, clk, din, dir, q);
end
endmodule
