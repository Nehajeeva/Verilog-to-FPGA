module cla(cout,S,a,b,Cin);
output [3:0] S;
output cout;
input [3:0] a,b;
input Cin;
wire [3:0] G,P;
wire [3:0] c;
G G0(G[0],a[0],b[0]);
P P0(P[0],a[0],b[0]);
G G1(G[1],a[1],b[1]);
P P1(P[1],a[1],b[1]);
G G2(G[2],a[2],b[2]);
P P2(P[2],a[2],b[2]);
G G3(G[3],a[3],b[3]);
P P3(P[3],a[3],b[3]);
assign c[0] = G[0] | (P[0] & Cin);
assign c[1] = G[1]|(P[1] & G[0])|(P[1] & P[0] & Cin);
assign c[2] = G[2]|(P[2] & G[1])|(P[2] & P[1] & G[0])|(P[2] & P[1] & P[0] & Cin);
assign c[3] = G[3]|(P[3] & G[2])|(P[3] & P[2] & G[1])|(P[3] & P[2] & P[1] & G[0])|(P[3] & P[2] & P[1] & P[0] & Cin);
assign S[0] = P[0] ^ Cin;
assign S[1] = P[1] ^ c[0];
assign S[2] = P[2] ^ c[1];
assign S[3] = P[3] ^ c[2];
assign cout = c[3];
endmodule
module G(output y,input a,b);
assign y = a & b;
endmodule
module P(output y,input a,b);
assign y = a ^ b;
endmodule
