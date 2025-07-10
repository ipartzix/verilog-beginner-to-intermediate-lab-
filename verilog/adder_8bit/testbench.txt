module adder_8_bit_tb;
  reg [7:0] A, B;
  wire [7:0] sum;
  wire carry;
  
  adder_8_bit uut (
    .A(A),
    .B(B),
    .sum(sum),
    .carry(carry)
  );
  initial begin
    $dumpfile("dump.vcd");  
    $dumpvars(0, adder_8_bit_tb);
    A = 8'b 00001111; B = 8'b 00000101;
    #10 A = 8'b 00001111; B = 8'b 00000101;
    #10 A = 8'b 00001101; B = 8'b 00000001;

    #10 $finish;
  end

  initial begin
    $monitor("At time %0t: A=%b, B=%b => sum=%b, carry=%b", $time, A, B, sum, carry);
  end 

endmodule
