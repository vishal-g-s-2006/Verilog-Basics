`timescale 1ns / 1ps

module demux1x8_tb;

    reg        din;
    reg  [2:0] sel;
    wire [7:0] y;

    integer i;

    // Instantiate the Unit Under Test (UUT)
    demux1x8 uut (
        .din (din),
        .sel (sel),
        .y   (y)
    );

    initial begin
        $display("Time\t din sel | y");
        $monitor("%0t\t %b   %b  | %b", $time, din, sel, y);

        din = 1;

        for (i = 0; i < 8; i = i + 1) begin
            sel = i[2:0];
            #10;
        end

        // Verify din = 0 clears all outputs
        din = 0;
        sel = 3'b101;
        #10;

        $finish;
    end

endmodule
