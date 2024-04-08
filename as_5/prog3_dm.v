module result1(C,A,B);
    input A,B; output C;
    assign C=( ( (~A) & B ) | ( A & (~B)) );
endmodule
module result2(C,A,B);
    input A,B;
    output C;
    assign C=A&B;
endmodule
module test();
    reg a,b;
    wire s,c;
    result1 op1(s,a,b);
    result2 op2(c,a,b);
    initial begin
        $display("ABSC");
        $monitor(a,b,s,c);
        a=1'b0;b=1'b0;
        #2
        a=1'b0;b=1'b1;
        #2
        a=1'b1;b=1'b0;
        #2
        a=1'b1;b=1'b1;
    end
endmodule