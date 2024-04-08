module eq(A,B,C);
    input A,B;
    output C;
    assign C = ((A | B) & ((~A) | (~B)));
endmodule
module test();
    reg a,b;
    wire Y;
    eq test(a,b,Y);
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