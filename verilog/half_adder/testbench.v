testbench.sv
module half_adder_tb;
    reg A, B;                 
    wire Sum, Cout;           
 
    half_adder uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Cout(Cout)
    );
​
    initial begin
       
        A = 0; B = 0;       
       
        $dumpfile("dump.vcd");
        $dumpvars(0, half_adder_tb);
       
        #5 A = 0; B = 0;
        #5 A = 0; B = 1;
        #5 A = 1; B = 0;
        #5 A = 1; B = 1;
​
        #5 $finish;  
    end
​
    initial begin
      
        $monitor("At time %0t: A=%b, B=%b => Sum=%b, Cout=%b", $time, A, B, Sum, Cout);
    end
endmodule
