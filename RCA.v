module RCA(output [3:0]s, output Cout,input [3:0]A,[3:0]B,input cin);
wire w1,w2,w3;
fa_st fa1(s[0],w1,A[0],B[0],cin);
fa_st fa2(s[1],w2,A[1],B[1],w1);
fa_st fa3(s[2],w3,A[2],B[2],w2);
fa_st fa4(s[3],Cout,A[3],B[3],w3);
endmodule