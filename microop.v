`include "mux.v"

module microop1to1 ( a, b , s0,s1 , y);
    input a , b;
    input s0,s1;
    output y;

    and(and0, a , b);
    or(or0, a , b);
    xor(xor0, a , b);
    not(na0 , a);

    mux mux11(and0, or0, xor0, na0,s0,s1, y);

endmodule

module microop ( x, y , s0,s1 , d);
    input [3:0]x;
    input [3:0] y;
    input s0,s1;
    output [3:0] d;

    microop1to1 m0(x[0],y[0],s0,s1,d[0]);
    microop1to1 m1(x[1],y[1],s0,s1,d[1]);
    microop1to1 m2(x[2],y[2],s0,s1,d[2]);
    microop1to1 m3(x[3],y[3],s0,s1,d[3]);

endmodule

