module test_subtractor_8bit;
    reg  [7:0] A;
    reg  [7:0] B;
    wire [7:0] DIFF;
    wire       BORROW_OUT;

    subtractor_8bit uut (
        .A(A),
        .B(B),
        .DIFF(DIFF),
        .BORROW_OUT(BORROW_OUT)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, test_subtractor_8bit);
    end

    initial begin
        $monitor("Time=%0d | A=%b | B=%b | DIFF=%b | BORROW_OUT=%b",
                 $time, A, B, DIFF, BORROW_OUT);

        A = 8'b00000010; B = 8'b00000001; #10;
        A = 8'b00001111; B = 8'b00000001; #10;
        A = 8'b00000000; B = 8'b00000001; #10;
        A = 8'b10101010; B = 8'b01010101; #10;
        A = 8'b11110000; B = 8'b00001111; #10;

        $finish;
    end
endmodule
