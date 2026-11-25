// Demonstrates an 8-bit counter with synchronous reset and enable.
module counter (
    input  wire       clk,
    input  wire       reset,
    input  wire       enable,
    output reg  [7:0] count
);
    always @(posedge clk) begin
        if (reset)
            count <= 8'b0;
        else if (enable)
            count <= count + 1'b1;
    end
endmodule
