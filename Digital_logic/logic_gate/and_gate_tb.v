module and_gate_tb;

    reg a;
    reg b;

    wire c;

    // Instantiate the AND gate
    and_gate uut (
        .a(a),
        .b(b),
        .c(c)
    );

    initial begin

        // Create waveform file
        $dumpfile("and_gate.vcd");
        $dumpvars(0, and_gate_tb);

        // Display values
        $monitor("Time=%0t | a=%b | b=%b | c=%b",
                 $time, a, b, c);

        // Test 1: 0 AND 0 = 0
        a = 1'b0;
        b = 1'b0;
        #10;

        // Test 2: 0 AND 1 = 0
        a = 1'b0;
        b = 1'b1;
        #10;

        // Test 3: 1 AND 0 = 0
        a = 1'b1;
        b = 1'b0;
        #10;

        // Test 4: 1 AND 1 = 1
        a = 1'b1;
        b = 1'b1;
        #10;

        $finish;

    end

endmodule