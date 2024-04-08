module nor_gate(C,A,B);
    input A,B;
    output C;
    nor(C,A,B);
endmodule
module test();
    reg a,b;
    wire o;
    nor_gate final(o,a,b);
    initial begin
        $display("ABY");
        $monitor(a,b,o);
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