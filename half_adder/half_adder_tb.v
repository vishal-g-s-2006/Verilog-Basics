`timescale 1ns / 1ps

module half_adder_behavioral_tb;

    reg  a;
    reg  b;
    wire sum;
    wire carry;

    // Instantiate the Unit Under Test (UUT)
    half_adder_behavioral uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $display("Time\t a b | sum carry");
        $monitor("%0t\t %b %b | %b    %b", $time, a, b, sum, carry);

        a = 0; b = 0;
        #10;

        a = 0; b = 1;
        #10;

        a = 1; b = 0;
        #10;

        a = 1; b = 1;
        #10;

        $finish;
    end

endmodule
