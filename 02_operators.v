// Demonstrates common Verilog operators.
module operators (
    input  wire [3:0] a,
    input  wire [3:0] b,
    output wire [3:0] and_result,
    output wire [3:0] or_result,
    output wire [3:0] sum,
    output wire       is_equal,
    output wire [7:0] concatenated
);
    assign and_result  = a & b;
    assign or_result   = a | b;
    assign sum         = a + b;
    assign is_equal    = (a == b);
    assign concatenated = {a, b};
endmodule
