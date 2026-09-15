`timescale 1ns / 1ps

module ripple_carry_adder_tb;

    parameter N = 4;

    reg  [N-1:0] a;
    reg  [N-1:0] b;
    reg          cin;
    wire [N-1:0] sum;
    wire         cout;

    // Instantiate the Unit Under Test (UUT)
    ripple_carry_adder #(.N(N)) uut (
        .a    (a),
        .b    (b),
        .cin  (cin),
        .sum  (sum),
        .cout (cout)
    );

    initial begin
        $display("Time\t a\t b\t cin | sum\t cout");
        $monitor("%0t\t %b\t %b\t %b   | %b\t %b", $time, a, b, cin, sum, cout);

        a = 4'b0000; b = 4'b0000; cin = 0;
        #10;

        a = 4'b0001; b = 4'b0001; cin = 0;
        #10;

        a = 4'b0111; b = 4'b0001; cin = 0;
        #10;

        a = 4'b1111; b = 4'b0001; cin = 0;
        #10;

        a = 4'b1010; b = 4'b0101; cin = 1;
        #10;

        a = 4'b1111; b = 4'b1111; cin = 1;
        #10;

        $finish;
    end

endmodule
