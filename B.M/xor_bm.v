module nand_gate(C,A,B);
    input A,B; output reg C;
    always @(A,B)
    C = A ^ B;
endmodule
module test();
    reg a,b;
    wire o;
    nand_gate final(o,a,b);
    initial begin
        $display("ABY");
        $monitor(a,b,o);
        a=1'b0;b=1'b0;
        #2
        a=1'b0;b=1'b1;
        #2
        a=1'b1;b=1'b0;
        #2
        a=1'b1;b=1'b1;
    end
endmodule