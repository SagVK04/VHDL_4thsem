module xor_gate(C,A,B);
    input A,B;
    output C;
    assign C=A^B;
endmodule
module and_gate(C,A,B);
    input A,B;
    output C;
    assign C=(~A)&B;
endmodule
module test();
    reg a,b;
    wire d,b1;
    xor_gate diff(d,a,b);
    and_gate borrow(b1,a,b);
    initial begin
        $display("ABDBo");
        $monitor(a,b,d,b1);
        a=1'b0;b=1'b0;
        #2
        a=1'b0;b=1'b1;
        #2
        a=1'b1;b=1'b0;
        #2
        a=1'b1;b=1'b1;
    end
endmodule