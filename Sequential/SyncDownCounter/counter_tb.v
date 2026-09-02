module SyncDownCounter_tb;
reg clk, reset;
wire [3:0] q;
SyncDownCounter uut (.q(q),.clk(clk),.reset(reset));
always #5 clk = ~clk;
initial
begin
clk = 0;
reset = 1;
#10;
reset = 0;
#100;
$finish;
end
endmodule
