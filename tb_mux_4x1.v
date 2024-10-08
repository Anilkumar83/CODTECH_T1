module tb_mux_4x1();
    reg [3:0] in;
    reg [1:0] sel;
    wire out;

    mux_4x1 UUT (
        .in(in), 
        .sel(sel), 
        .out(out)
    );

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_mux_4x1);
        in = 4'b1010;
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        $stop;
    end
endmodule
