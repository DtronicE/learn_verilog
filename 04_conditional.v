// Demonstrates if/else and a ternary expression.
module conditional_example (
    input  wire       enable,
    input  wire [7:0] input_value,
    output reg  [7:0] selected_value,
    output wire [7:0] ternary_value
);
    always @* begin
        if (enable)
            selected_value = input_value;
        else
            selected_value = 8'b0;
    end

    assign ternary_value = enable ? input_value : 8'b0;
endmodule
