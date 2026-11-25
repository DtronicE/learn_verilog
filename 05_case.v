// Demonstrates a 4-way case statement.
module case_example (
    input  wire [1:0] select,
    input  wire [7:0] a,
    input  wire [7:0] b,
    input  wire [7:0] c,
    input  wire [7:0] d,
    output reg  [7:0] result
);
    always @* begin
        case (select)
            2'b00: result = a;
            2'b01: result = b;
            2'b10: result = c;
            2'b11: result = d;
            default: result = 8'b0;
        endcase
    end
endmodule
