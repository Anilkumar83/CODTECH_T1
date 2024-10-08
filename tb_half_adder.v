module tb_half_adder();
    reg a, b;            // Inputs
    wire sum, carry;     // Outputs

    // Instantiate the half_adder module
    half_adder UUT (
        .a(a), 
        .b(b), 
        .sum(sum), 
        .carry(carry)
    );

    initial begin
        // Enable waveform dumping for EPWave
        $dumpfile("waveform.vcd");  // Name of the waveform file
        $dumpvars(0, tb_half_adder); // Dump all variables in the testbench

        // Apply input combinations and observe outputs
        a = 0; b = 0; #10;
        a = 0; b = 1; #
