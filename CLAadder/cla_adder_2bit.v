module cla_adder_2bit (
    input  wire [1:0] a,
    input  wire [1:0] b,
    input  wire       cin,
    output wire [1:0] sum,
    output wire       cout
);

    wire p0, p1;  // propagate signals
    wire g0, g1;  // generate signals
    wire c1;      // internal carry

    // Propagate and generate
    assign p0 = a[0] ^ b[0];
    assign g0 = a[0] & b[0];

    assign p1 = a[1] ^ b[1];
    assign g1 = a[1] & b[1];

    // Look-ahead carry equations
    assign c1   = g0 | (p0 & cin);
    assign cout = g1 | (p1 & g0) | (p1 & p0 & cin);

    // Sum outputs
    assign sum[0] = p0 ^ cin;
    assign sum[1] = p1 ^ c1;

endmodule
