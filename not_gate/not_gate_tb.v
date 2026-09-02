`timescale 1ns / 1ps

module not_gate_tb;

    reg  a;
    wire y;

    // Instantiate the Unit Under Test (UUT)
    not_gate uut (
        .a(a),
        .y(y)
    );

    initial begin
        $display("Time\t a | y");
        $monitor("%0t\t %b | %b", $time, a, y);

        a = 0;
        #10;

        a = 1;
        #10;

        $finish;
    end

endmodule
