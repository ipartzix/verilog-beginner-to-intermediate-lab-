module full_subtractor_tb;
    reg A, B, Bin;
    wire Difference, Borrow; 

    full_subtractor uut (  
        .A(A),
        .B(B),
        .Bin(Bin),
        .Difference(Difference),
        .Borrow(Borrow)  
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, full_subtractor_tb);
        
        A = 0; B = 0; Bin = 0;
        
        #5 A = 0; B = 0; Bin = 0;
        #5 A = 0; B = 0; Bin = 1;
        #5 A = 0; B = 1; Bin = 0;
        #5 A = 0; B = 1; Bin = 1;
        #5 A = 1; B = 0; Bin = 0;
        #5 A = 1; B = 0; Bin = 1;
        #5 A = 1; B = 1; Bin = 0;
        #5 A = 1; B = 1; Bin = 1;

        #5 $finish;
    end
    initial begin
        $monitor("At time %0t: A=%b, B=%b, Bin=%b => Difference=%b, Borrow=%b", 
                 $time, A, B, Bin, Difference, Borrow);
    end
endmodule
