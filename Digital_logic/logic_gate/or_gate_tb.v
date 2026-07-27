module or_gate_tb;

    reg a;
    reg b;

    wire y;

    // Instantiate the OR gate
    or_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin

        // Create waveform file
        $dumpfile("or_gate.vcd");
        $dumpvars(0, or_gate_tb);

        // Display values
        $monitor("Time=%0t | a=%b | b=%b | y=%b",
                 $time, a, b, y);

        // Test 1: 0 OR 0 = 0
        a = 1'b0;
        b = 1'b0;
        #10;

        // Test 2: 0 OR 1 = 1
        a = 1'b0;
        b = 1'b1;
        #10;

        // Test 3: 1 OR 0 = 1
        a = 1'b1;
        b = 1'b0;
        #10;

        // Test 4: 1 OR 1 = 1
        a = 1'b1;
        b = 1'b1;
        #10;

        $finish;

    end

endmodule