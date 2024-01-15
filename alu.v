`include "arithmatic.v"
`include "microop.v"
`include "mux4bit.v"


module shift (
    input [3:0] a,
    output [3:0] r,l
);
    assign r = a>>1;
    assign l = a<<1;

endmodule

module alu(s0,s1,s2,s3,cin,a,b,f,cout);

    input s0,s1,s2,s3,cin;
    input [3:0] a,b;
    output [3:0] f;
    output cout;

    wire [0:3] Aout;
    arithmatic A(b,a,cin,s1,s0,Aout,cout);

    wire [3:0] Mout;
    microop M(b,a,s1,s0,Mout);

    wire [3:0] shra,shla;
    shift sh(a,shra,shla);

    mux4bit mux4bit(Aout,Mout,shra,shla,s3,s2,f);

endmodule





