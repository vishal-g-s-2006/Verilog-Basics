`timescale 1ns / 1ps

module xor_gate_tb;

    reg  a;
    reg  b;
    wire y;

    // Instantiate the Unit Under Test (UUT)
    xor_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $display("Time\t a b | y");
        $monitor("%0t\t %b %b | %b", $time, a, b, y);

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
