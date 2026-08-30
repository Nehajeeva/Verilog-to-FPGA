module register_tb;
reg [3:0] din;
reg clk,load;
wire dout;
register uut(dout,din,clk,load);
always #5 clk=~clk;
initial
begin
$monitor("time=%0t clk=%b load=%b din=%b dout=%b",$time,clk,load,din,dout);
clk=0;
load=0;
din=4'b0000;
#10;
load=1;
din=4'b1011;
#10;
load=0;
#40;
$finish;
end
endmodule
