module mux_4to1_st(output y, input [3:0]I,[1:0]s);
wire w1,w2;
mux_2to1 mux1(y,w1,w2,s[1]);
mux_2to1 mux2(w2,I[2],I[3],s[0]);
mux_2to1 mux3(w1,I[0],I[1],s[0]);
endmodule