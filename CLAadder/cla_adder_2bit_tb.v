`timescale 1ns / 1ps

module cla_adder_2bit_tb;

    reg  [1:0] a;
    reg  [1:0] b;
    reg        cin;
    wire [1:0] sum;
    wire       cout;

    // Instantiate the Unit Under Test (UUT)
    cla_adder_2bit uut (
        .a    (a),
        .b    (b),
        .cin  (cin),
        .sum  (sum),
        .cout (cout)
    );

    integer i;

    initial begin
        $display("Time\t a\t b\t cin | sum\t cout");
        $monitor("%0t\t %b\t %b\t %b   | %b\t %b", $time, a, b, cin, sum, cout);

        // Exhaustively test all 2-bit a, b combinations with cin = 0 and 1
        for (i = 0; i < 32; i = i + 1) begin
            {a, b, cin} = i[4:0];
            #10;
        end

        $finish;
    end

endmodule
