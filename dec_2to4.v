module dec_2to4(input [1:0]s, output [3:0]I);
       assign I[0]=~s[1]&~s[0];
	   assign I[1]=~s[1]&s[0];
	   assign I[2]=s[1]&~s[0];
	   assign I[3]=s[1]&s[0];
endmodule