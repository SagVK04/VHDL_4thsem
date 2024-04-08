module nand_gate(C,A);
    input A; output reg C;
    always @(A)
    C =~ A;
endmodule
module test();
    reg a;
    wire o;
    nand_gate final(o,a);
    initial begin
        $display("AY");
        $monitor(a,o);
        a=1'b0;
        #2
        a=1'b1;
    end
endmodule