module tb_half_adder();
    reg a, b;
    wire sum, carry;

    half_adder UUT (
        .a(a), 
        .b(b), 
        .sum(sum), 
        .carry(carry)
    );

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_half_adder);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $stop;
    end
endmodule
