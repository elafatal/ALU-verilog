module mux (i1,i2,i3,i4 , s0,s1 , y);
    input i1,i2, i3, i4;
    input s1,s0;
    output y;

    not(ns0 , s0);
    not(ns1 , s1);

    and(w0, i1, ns0, ns1);
    and(w1, i2, ns0, s1);
    and(w2, i3, s0, ns1);
    and(w3, i4, s0, s1);

    or(y,w0,w1,w2,w3);
endmodule