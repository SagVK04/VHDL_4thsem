module eq(A,B,C,D);
    input A,B,C;
    output D;
    assign D = ( ((~A) & B & C ) | (A & (~B) & C) | (A & B & (~C)) );
endmodule
module test();
    reg a,b,c;
    wire Y;
    eq test(a,b,c,Y);
    initial begin
        $display("ABCY");
        $monitor(a,b,c,Y);
        a=1'b0;
        b=1'b0;
        c=1'b0;
        #2
        a=1'b0;
        b=1'b0;
        c=1'b1;
        #2
        a=1'b0;
        b=1'b1;
        c=1'b0;
        #2
        a=1'b0;
        b=1'b1;
        c=1'b1;
    end
endmodule