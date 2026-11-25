// Demonstrates a positive-edge-triggered D flip-flop.
module flip_flop (
    input  wire clk,
    input  wire reset_n,
    input  wire d,
    output reg  q
);
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n)
            q <= 1'b0;
        else
            q <= d;
    end
endmodule
