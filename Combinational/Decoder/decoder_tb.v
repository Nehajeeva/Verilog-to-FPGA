module decoder_tb;
reg A, B;
wire Y0, Y1, Y2, Y3;
decoder uut (.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3),.A(A),.B(B));
initial
begin
$monitor("Time=%0t A=%b B=%b | Y0=%b Y1=%b Y2=%b Y3=%b",$time, A, B, Y0, Y1, Y2, Y3);
A=0; B=0; #10;
A=0; B=1; #10;
A=1; B=0; #10;
A=1; B=1; #10;
$finish;
end
endmodule
