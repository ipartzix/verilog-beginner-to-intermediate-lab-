module subtractor_8bit (
    input  [7:0] A,
    input  [7:0] B,
    output [7:0] DIFF,
    output       BORROW_OUT
);

    assign {BORROW_OUT, DIFF} = {1'b0, A} - {1'b0, B};

endmodule