```verilog
// 4-Bit Asynchronous Binary Up Counter
// Asynchronous Active-High Reset

module asynchronous_counter (
    input        clk,
    input        reset,
    output [3:0] count
);

    reg [3:0] q;

    // Each flip-flop is triggered by the output
    // of the previous flip-flop.
    
    always @(posedge clk or posedge reset) begin
        if (reset)
            q[0] <= 1'b0;
        else
            q[0] <= ~q[0];
    end

    always @(negedge q[0] or posedge reset) begin
        if (reset)
            q[1] <= 1'b0;
        else
            q[1] <= ~q[1];
    end

    always @(negedge q[1] or posedge reset) begin
        if (reset)
            q[2] <= 1'b0;
        else
            q[2] <= ~q[2];
    end

    always @(negedge q[2] or posedge reset) begin
        if (reset)
            q[3] <= 1'b0;
        else
            q[3] <= ~q[3];
    end

    assign count = q;

endmodule
```
