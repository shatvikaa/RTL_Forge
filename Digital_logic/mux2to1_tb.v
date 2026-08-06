module mux2to1_tb;

reg a;
reg b;
reg sel;

wire y;

// Instantiate the Design Under Test (DUT)
mux2to1 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin

    // Create waveform file
    $dumpfile("mux2to1.vcd");
    $dumpvars(0, mux2to1_tb);

    // Display values
    $monitor("Time=%0t | a=%b | b=%b | sel=%b | y=%b",
             $time, a, b, sel, y);

    // Test Case 1
    a = 0; b = 1; sel = 0;
    #10;

    // Test Case 2
    a = 0; b = 1; sel = 1;
    #10;

    // Test Case 3
    a = 1; b = 0; sel = 0;
    #10;

    // Test Case 4
    a = 1; b = 0; sel = 1;
    #10;

    $finish;

end


endmodule
