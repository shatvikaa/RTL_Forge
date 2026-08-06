 module mux4to1_tb;

    reg a;
    reg b;
    reg c;
    reg d;

    reg [1:0] sel;

    wire y;

    // Instantiate the Design Under Test
    mux4to1 uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(sel),
        .y(y)
    );

    initial begin

        $dumpfile("mux4to1.vcd");
        $dumpvars(0, mux4to1_tb);

        $monitor("Time=%0t | a=%b b=%b c=%b d=%b | sel=%b | y=%b",
                  $time, a, b, c, d, sel, y);

        // Test 1: sel = 00 → y should be a
        a = 1;
        b = 0;
        c = 0;
        d = 1;
        sel = 2'b00;
        #10;

        // Test 2: sel = 01 → y should be b
        sel = 2'b01;
        #10;

        // Test 3: sel = 10 → y should be c
        sel = 2'b10;
        #10;

        // Test 4: sel = 11 → y should be d
        sel = 2'b11;
        #10;

        $finish;

    end

endmodule