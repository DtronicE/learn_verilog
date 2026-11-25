// Demonstrates combinational logic in an always_comb block.
module always_comb_example (
    input  wire [1:0] a,
    output reg  [3:0] decoded
);
    always @* begin
        decoded = 4'b0000;

        case (a)
            2'b00: decoded = 4'b0001;
            2'b01: decoded = 4'b0010;
            2'b10: decoded = 4'b0100;
            2'b11: decoded = 4'b1000;
        endcase
    end
endmodule
