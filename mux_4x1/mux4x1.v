module mux4x1 (
    input  wire [3:0] d,   // data inputs: d0, d1, d2, d3
    input  wire [1:0] sel, // select lines
    output reg         y
);

    always @(*) begin
        case (sel)
            2'b00: y = d[0];
            2'b01: y = d[1];
            2'b10: y = d[2];
            2'b11: y = d[3];
            default: y = 1'bx;
        endcase
    end

endmodule
