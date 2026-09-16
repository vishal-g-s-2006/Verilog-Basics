`timescale 1ns / 1ps

module mux4x1_tb;

    reg  [3:0] d;
    reg  [1:0] sel;
    wire       y;

    // Instantiate the Unit Under Test (UUT)
    mux4x1 uut (
        .d   (d),
        .sel (sel),
        .y   (y)
    );

    initial begin
        $display("Time\t d\t sel | y");
        $monitor("%0t\t %b\t %b  | %b", $time, d, sel, y);

        d = 4'b1010;

        sel = 2'b00;
        #10;

        sel = 2'b01;
        #10;

        sel = 2'b10;
        #10;

        sel = 2'b11;
        #10;

        // Change data pattern and re-test
        d = 4'b0110;

        sel = 2'b00;
        #10;

        sel = 2'b01;
        #10;

        sel = 2'b10;
        #10;

        sel = 2'b11;
        #10;

        $finish;
    end

endmodule
