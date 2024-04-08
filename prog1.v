module and_gate(A,B,C);
    input A,B;
    output C;
    and(C,A,B);
endmodule
module test();
    reg a,b,c,d;
    wire C1,C2,Y;
    and_gate first(a,b,C1);
    and_gate second(c,d,C2);
    and_gate final(C1,C2,Y);
    initial begin
        $display("ABCDY");$monitor(a,b,c,d,Y);
        a=1'b1;b=1'b1;c=1'b1;d=1'b1;
        #2
        a=1'b1;b=1'b1;c=1'b1;d=1'b0;
    end
endmodule