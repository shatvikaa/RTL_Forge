module nor_gate_tb;

    reg a;
    reg b;

    wire y;

    // Instantiate the NOR gate
    nor_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin

        $dumpfile("nor_gate.vcd");
        $dumpvars(0, nor_gate_tb);

        $monitor("Time=%0t | a=%b | b=%b | y=%b",
                 $time, a, b, y);

        // Test 1: 0 NOR 0 = 1
        a = 1'b0;
        b = 1'b0;
        #10;

        // Test 2: 0 NOR 1 = 0
        a = 1'b0;
        b = 1'b1;
        #10;

        // Test 3: 1 NOR 0 = 0
        a = 1'b1;
        b = 1'b0;
        #10;

        // Test 4: 1 NOR 1 = 0
        a = 1'b1;
        b = 1'b1;
        #10;

        $finish;

    end

endmodule