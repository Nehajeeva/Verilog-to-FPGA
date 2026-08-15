module demux41(y0,y1,y2,y3,D,S);
output y0,y1,y2,y3;
input [1:0]S;
input D;
wire [2:0]a;
assign a[0]=~S[0];
assign a[1]=~S[1];
assign y0=D&a[1]&a[0];
assign y1=D&a[1]&S[0];
assign y2=D&S[1]&a[0];
assign y3=D&S[1]&S[0];
endmodule 
