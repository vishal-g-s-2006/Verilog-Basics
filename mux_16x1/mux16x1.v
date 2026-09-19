module mux16x1 (
    input  wire [15:0] d,   // data inputs: d0..d15
    input  wire [3:0]  sel, // select lines
    output reg          y
);

    always @(*) begin
        y = d[sel];
    end

endmodule
