// Demonstrates a three-state finite-state machine.
module simple_fsm (
    input  wire clk,
    input  wire reset,
    input  wire start,
    output reg  done
);
    localparam IDLE  = 2'b00;
    localparam WORK  = 2'b01;
    localparam FINISH = 2'b10;

    reg [1:0] state;
    reg [1:0] next_state;

    always @* begin
        next_state = state;
        done = 1'b0;

        case (state)
            IDLE: begin
                if (start)
                    next_state = WORK;
            end

            WORK:
                next_state = FINISH;

            FINISH: begin
                done = 1'b1;
                next_state = IDLE;
            end

            default: next_state = IDLE;
        endcase
    end

    always @(posedge clk) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end
endmodule
