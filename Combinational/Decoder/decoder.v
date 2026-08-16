module decoder (Y0,Y1,Y2,Y3,A,B);
output Y0,Y1,Y2,Y3;
input A,B;
wire [1:0]w;
assign w[0]=~A;
assign w[1]=~B;
assign Y0=w[0]&w[1];
assign Y1=w[0]&B;
assign Y2=A&w[1];
assign Y3=A&B;
endmodule
