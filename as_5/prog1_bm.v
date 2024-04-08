module xor_gate(C,A,B);
    input A,B;
    output reg C;
    always @(A,B)
    C=A^B;
endmodule
module and_gate(C,A,B);
    input A,B;
    output reg C;
    always @(A,B)
    C=A&B;
endmodule
module test();
    reg a,b;
    wire s,c;
    xor_gate sum(s,a,b);
    and_gate carry(c,a,b);
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