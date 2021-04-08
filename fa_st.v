module fa_st(output sum,Cout, input a,b,c);
wire w1,w2,w3;
ha ha1(a,b,w1,w3);
ha ha2(w1,c,sum,w2);
or or1(Cout,w2,w3);
endmodule
