module mux_4to1_dec_tribuff_st(input [1:0]s, input [3:0]I,output y);
wire [3:0]B;
dec dec1(B[0],B[1],B[2],B[3],s[0],s[1]);
buff buff1(y,I[0],B[0]);
buff buff2(y,I[1],B[1]);
buff buff3(y,I[2],B[2]);
buff buff4(y,I[3],B[3]);
endmodule