// Demonstrates module parameters and generated instances.
module bus_inverter #(
    parameter WIDTH = 8
) (
    input  wire [WIDTH-1:0] data_in,
    output wire [WIDTH-1:0] data_out
);
    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin : invert_bit
            assign data_out[i] = ~data_in[i];
        end
    endgenerate
endmodule
