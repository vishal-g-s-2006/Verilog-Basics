module half_adder_behavioral (
    input  wire a,
    input  wire b,
    output reg  sum,
    output reg  carry
);

    always @(a, b) begin
        {carry, sum} = a + b;
    end

endmodule
