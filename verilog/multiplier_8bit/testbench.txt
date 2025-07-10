module multiplier_8_bit_tb;
  reg [7:0] A, B;
  wire [15:0] product; 
  
  multiplier_8_bit uut (
    .A(A),
    .B(B),
    .product(product)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, multiplier_8_bit_tb);
    
    A = 8'b00001111; B = 8'b00000101;
    #10 A = 8'b00001010; B = 8'b00000111; 
    #10 A = 8'b11111111; B = 8'b00000001; 
    #10 A = 8'b00000000; B = 8'b00000000; 

    #10 $finish;
  end

  initial begin
    $monitor("At time %0t: A=%b, B=%b => product=%b", $time, A, B, product);
  end

endmodule