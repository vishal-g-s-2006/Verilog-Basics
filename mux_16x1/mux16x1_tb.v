`timescale 1ns / 1ps

module mux16x1_tb;

    reg  [15:0] d;
    reg  [3:0]  sel;
    wire        y;

    integer i;

    // Instantiate the Unit Under Test (UUT)
    mux16x1 uut (
        .d   (d),
        .sel (sel),
        .y   (y)
    );

    initial begin
        $display("Time\t d\t\t\t sel | y");
        $monitor("%0t\t %b\t %b  | %b", $time, d, sel, y);

        d = 16'b1011001011110100;

        for (i = 0; i < 16; i = i + 1) begin
            sel = i[3:0];
            #10;
        end

        // Change data pattern and re-test
        d = 16'b0100110100001111;

        for (i = 0; i < 16; i = i + 1) begin
            sel = i[3:0];
            #10;
        end

        $finish;
    end

endmodule
