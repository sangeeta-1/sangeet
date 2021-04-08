module mux_2to1(output y,input I0,I1,s);
    assign y= (~s&I0&I1)| (s&I0&~I1);
endmodule