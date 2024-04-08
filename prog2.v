module and_gate(A,B,C);
    input A,B;
    output C;
    and(C,A,B);
endmodule
module not_gate(A,B);
    input A;
    output B;
    not(B,A);
endmodule
module test();
    reg a,b;
    wire A1,Y1,Y2,Y;
    not_gate inverse(a,A1);
    and_gate first(A1,b,Y1);
    and_gate second(a,b,Y2);
    and_gate third(Y1,Y2,Y);
    initial begin
        $display("ABY");
        $monitor(a,b,Y);
        a=1'b0;
        b=1'b0;
        #2
        a=1'b0;
        b=1'b1;
        #2
        a=1'b1;
        b=1'b0;
        #2
        a=1'b1;
        b=1'b1;
    end
endmodule