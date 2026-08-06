module mux16to1_tb;

reg  [15:0] d;
reg  [3:0]  sel;
wire y;

// Instantiate the Design Under Test (DUT)
mux16to1 uut (
    .d(d),
    .sel(sel),
    .y(y)
);

initial begin

    // Create VCD file
    $dumpfile("mux16to1.vcd");
    $dumpvars(0, mux16to1_tb);

    // Display values
    $monitor("Time=%0t | d=%b | sel=%b | y=%b",
             $time, d, sel, y);

    // Assign values to all 16 inputs
    d = 16'b1010101010101010;

    // Test all select values
    sel = 4'b0000; #10;
    sel = 4'b0001; #10;
    sel = 4'b0010; #10;
    sel = 4'b0011; #10;

    sel = 4'b0100; #10;
    sel = 4'b0101; #10;
    sel = 4'b0110; #10;
    sel = 4'b0111; #10;

    sel = 4'b1000; #10;
    sel = 4'b1001; #10;
    sel = 4'b1010; #10;
    sel = 4'b1011; #10;

    sel = 4'b1100; #10;
    sel = 4'b1101; #10;
    sel = 4'b1110; #10;
    sel = 4'b1111; #10;

    $finish;

end


endmodule
