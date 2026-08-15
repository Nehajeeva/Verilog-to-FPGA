module demux_tb;
reg D;
reg [1:0] S;
wire y0,y1,y2,y3;
demux41 uut(.y0(y0),.y1(y1),.y2(y2),.y3(y3),.D(D),.S(S));
initial
begin
$monitor("Time=%0t D=%b S=%b | y0=%b y1=%b y2=%b y3=%b", $time, D, S, y0, y1, y2, y3);
D=0; S=2'b00; #10;
D=1; S=2'b00; #10;
D=0; S=2'b01; #10;
D=1; S=2'b01; #10;
D=0; S=2'b10; #10;
D=1; S=2'b10; #10;
D=0; S=2'b11; #10;
D=1; S=2'b11; #10;
$finish;
end
endmodule
