module universal_tb;
reg din, clk;
reg [3:0] pin;
reg [1:0] sel;
wire [3:0] q;
univerasal uut(.q(q),.din(din),.pin(pin),.clk(clk),.sel(sel));
always #5 clk = ~clk;
initial
begin
clk = 0;
din = 0;
pin = 4'b0000;
sel = 2'b00;
#10 sel = 2'b11;
pin = 4'b1010;
#10 sel = 2'b01;
din = 1;
#10 din = 0;
#10 din = 1;
#10 sel = 2'b10;
din = 1;
#10 din = 0;
#10 din = 1;
#10 sel = 2'b00;
#20 $finish;
end
initial
begin
$monitor("time=%0t clk=%b sel=%b din=%b pin=%b q=%b",$time, clk, sel, din, pin, q);
end
endmodule
