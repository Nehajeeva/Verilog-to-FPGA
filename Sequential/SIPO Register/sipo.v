module SIPOregister(dout,din,clk);
output dout;
input din,clk;
reg q3,q2,q1,q0;
always@(posedge clk)
begin
q3<=din;
q2<=q3;
q1<=q2;
q0<=q1;
end
assign dout=q0;
endmodule
