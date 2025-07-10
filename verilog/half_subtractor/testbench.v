module half_subtractor_tb;
    reg A, B;
    wire Difference, Borrow;
  
    half_subtractor uut (
        .A(A),
        .B(B),
        .Difference(Difference),
        .Borrow(Borrow)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, half_subtractor_tb);

        A = 0; B = 0; #5;
        A = 0; B = 1; #5;
        A = 1; B = 0; #5;
        A = 1; B = 1; #5;

        $finish;
    end

    initial begin
        $monitor("At time %0t: A=%b, B=%b => Difference=%b, Borrow=%b", 
                 $time, A, B, Difference, Borrow);
    end

endmodule