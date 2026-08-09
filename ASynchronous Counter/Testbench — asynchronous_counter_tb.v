```verilog
`timescale 1ns/1ps

module asynchronous_counter_tb;

    reg clk;
    reg reset;

    wire [3:0] count;

    // Instantiate asynchronous counter
    asynchronous_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Generate clock
    always #5 clk = ~clk;

    initial begin

        // Generate waveform
        $dumpfile("asynchronous_counter.vcd");
        $dumpvars(0, asynchronous_counter_tb);

        $display("Time | Clock | Reset | Count");
        $display("----------------------------");

        // Initialize
        clk = 0;
        reset = 1;

        // Apply reset
        #2;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        // Release reset
        #3;
        reset = 0;

        // Observe counter
        #5;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        #10;
        $display("%4t |   %b   |   %b   | %b",
                 $time, clk, reset, count);

        $finish;
    end

endmodule
```
