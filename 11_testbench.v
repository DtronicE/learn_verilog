// Demonstrates a basic testbench for and_gate.v.
`timescale 1ns/1ps

module testbench;
    reg  a;
    reg  b;
    wire y;

    and_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $display("a b | y");

        a = 0; b = 0;
        #10 $display("%b %b | %b", a, b, y);

        a = 0; b = 1;
        #10 $display("%b %b | %b", a, b, y);

        a = 1; b = 0;
        #10 $display("%b %b | %b", a, b, y);

        a = 1; b = 1;
        #10 $display("%b %b | %b", a, b, y);

        $finish;
    end
endmodule
