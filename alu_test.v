`timescale 1ns/1ns
`include "alu.v"


module alu_test ();
    reg s0,s1,s2,s3,cin;
    reg [3:0] a,b;
    wire [3:0] f;
    wire cout;

    alu alsu(s0,s1,s2,s3,cin,a,b,f,cout);

    initial begin

        $dumpfile("alu_test.vcd");
        $dumpvars(0,alu_test);

        a = 4'b0101;
        b = 4'b0110;
        s0 = 0;
        s1 = 0;
        s2 = 0;
        s3 = 0;
        cin = 0;
        #100;

        a = 4'b0101;
        b = 4'b0110;
        s0 = 0;
        s1 = 0;
        s2 = 0;
        s3 = 0;
        cin = 1;
        #100;

        a = 4'b0101;
        b = 4'b0110;
        s0 = 1;
        s1 = 0;
        s2 = 0;
        s3 = 0;
        cin = 0;
        #100;

        a = 4'b0101;
        b = 4'b0110;
        s0 = 1;
        s1 = 0;
        s2 = 0;
        s3 = 0;
        cin = 1;
        #100;

        a = 4'b0101;
        b = 4'b0110;
        s0 = 0;
        s1 = 1;
        s2 = 0;
        s3 = 0;
        cin = 0;
        #100;

        a = 4'b0101;
        b = 4'b0110;
        s0 = 0;
        s1 = 1;
        s2 = 0;
        s3 = 0;
        cin = 1;
        #100;

        a = 4'b0101;
        b = 4'b0110;
        s0 = 1;
        s1 = 1;
        s2 = 0;
        s3 = 0;
        cin = 0;
        #100;

        a = 4'b0101;
        b = 4'b0110;
        s0 = 1;
        s1 = 1;
        s2 = 0;
        s3 = 0;
        cin = 1;
        #100;

        a = 4'b0101;
        b = 4'b0110;
        s0 = 0;
        s1 = 0;
        s2 = 1;
        s3 = 0;
        #100;

        a = 4'b0101;
        b = 4'b0110;
        s0 = 1;
        s1 = 0;
        s2 = 1;
        s3 = 0;
        #100;

        a = 4'b0101;
        b = 4'b0110;
        s0 = 0;
        s1 = 1;
        s2 = 1;
        s3 = 0;
        #100;

        a = 4'b0101;
        b = 4'b0110;
        s0 = 1;
        s1 = 1;
        s2 = 1;
        s3 = 0;
        #100;

        a = 4'b0101;
        b = 4'b0110;
        s0 = 1;
        s1 = 1;
        s2 = 0;
        s3 = 1;
        #100;

        a = 4'b0101;
        b = 4'b0110;
        s0 = 1;
        s1 = 1;
        s2 = 1;
        s3 = 1;
        #100;
    end
    
endmodule