`timescale 1ns / 1ps

module mux8x1_tb;

    reg  [7:0] d;
    reg  [2:0] sel;
    wire       y;

    integer i;

    // Instantiate the Unit Under Test (UUT)
    mux8x1 uut (
        .d   (d),
        .sel (sel),
        .y   (y)
    );

    initial begin
        $display("Time\t d\t\t sel | y");
        $monitor("%0t\t %b\t %b  | %b", $time, d, sel, y);

        d = 8'b10110010;

        for (i = 0; i < 8; i = i + 1) begin
            sel = i[2:0];
            #10;
        end

        // Change data pattern and re-test
        d = 8'b01001101;

        for (i = 0; i < 8; i = i + 1) begin
            sel = i[2:0];
            #10;
        end

        $finish;
    end

endmodule
