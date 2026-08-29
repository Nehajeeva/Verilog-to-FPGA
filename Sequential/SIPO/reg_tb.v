module SIPOregister_tb;
reg din,clk;
wire dout;
SIPOregister uut(.dout(dou),.din(din),.clk(clk));
always #5 clk=~clk;
initial
begin
clk=0;
din=0;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=1;
#20$finish;
end
initial
begin
$monitor("time=%0t clk=%b din=%b dout=%b",$time,clk,din,dout);
end
endmodule
