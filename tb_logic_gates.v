module tb_logic_gates();
    reg a, b;               // Inputs
    wire and_out, or_out, not_out;  // Outputs

    // Instantiate the logic_gates module
    logic_gates UUT (
        .a(a), 
        .b(b), 
        .and_out(and_out), 
        .or_out(or_out), 
        .not_out(not_out)
    );

    initial begin
        // Enable waveform dumping for EPWave
        $dumpfile("dump.vcd");  // Name of the waveform file
        $dumpvars(0, tb_logic_gates); // Dump all variables in the testbench

        // Apply different input combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        
        $stop;
    end
endmodule
