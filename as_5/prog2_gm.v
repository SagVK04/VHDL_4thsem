module xor_gate(C,A,B);
    input A,B; output C;
    xor(C,A,B);
endmodule
module and_gate(C,A,B);
    input A,B; output C;
    and(C,A,B);
endmodule
module not_gate(C,A);
    input A; output C;
    not(C,A);
endmodule
module test();
    reg a,b;
    wire i,d,b1;
    not_gate inv(i,a);
    xor_gate diff(d,a,b);
    and_gate borrow(b1,i,b);
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