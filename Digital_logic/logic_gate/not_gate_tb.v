module not_gate_tb;

    reg a;

    wire y;

    // Instantiate the NOT gate
    not_gate uut (
        .a(a),
        .y(y)
    );

    initial begin

        // Create waveform file
        $dumpfile("not_gate.vcd");
        $dumpvars(0, not_gate_tb);

        // Display values
        $monitor("Time=%0t | a=%b | y=%b",
                 $time, a, y);

        // Test 1: NOT 0 = 1
        a = 1'b0;
        #10;

        // Test 2: NOT 1 = 0
        a = 1'b1;
        #10;

        $finish;

    end

endmodule