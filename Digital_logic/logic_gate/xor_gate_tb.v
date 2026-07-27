module xor_gate_tb;

    reg a;
    reg b;

    wire y;

    // Instantiate the XOR gate
    xor_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin

        $dumpfile("xor_gate.vcd");
        $dumpvars(0, xor_gate_tb);

        $monitor("Time=%0t | a=%b | b=%b | y=%b",
                 $time, a, b, y);

        // Test 1: 0 XOR 0 = 0
        a = 1'b0;
        b = 1'b0;
        #10;

        // Test 2: 0 XOR 1 = 1
        a = 1'b0;
        b = 1'b1;
        #10;

        // Test 3: 1 XOR 0 = 1
        a = 1'b1;
        b = 1'b0;
        #10;

        // Test 4: 1 XOR 1 = 0
        a = 1'b1;
        b = 1'b1;
        #10;

        $finish;

    end

endmodule