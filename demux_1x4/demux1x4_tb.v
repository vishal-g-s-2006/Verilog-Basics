`timescale 1ns / 1ps

module demux1x4_tb;

    reg        din;
    reg  [1:0] sel;
    wire [3:0] y;

    // Instantiate the Unit Under Test (UUT)
    demux1x4 uut (
        .din (din),
        .sel (sel),
        .y   (y)
    );

    initial begin
        $display("Time\t din sel | y");
        $monitor("%0t\t %b   %b  | %b", $time, din, sel, y);

        din = 1;

        sel = 2'b00;
        #10;

        sel = 2'b01;
        #10;

        sel = 2'b10;
        #10;

        sel = 2'b11;
        #10;

        // Verify din = 0 clears all outputs
        din = 0;
        sel = 2'b10;
        #10;

        $finish;
    end

endmodule
