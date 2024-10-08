module logic_gates(
    input a, b,
    output and_out, or_out, not_out
);
    assign and_out = a & b;  // AND gate
    assign or_out  = a | b;  // OR gate
    assign not_out = ~a;     // NOT gate
endmodule
