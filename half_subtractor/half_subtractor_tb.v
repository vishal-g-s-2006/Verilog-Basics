`timescale 1ns / 1ps

module half_subtractor_tb;

    reg  a;
    reg  b;
    wire diff;
    wire borrow;

    // Instantiate the Unit Under Test (UUT)
    half_subtractor uut (
        .a(a),
        .b(b),
        .diff(diff),
        .borrow(borrow)
    );

    initial begin
        $display("Time\t a b | diff borrow");
        $monitor("%0t\t %b %b | %b    %b", $time, a, b, diff, borrow);

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
