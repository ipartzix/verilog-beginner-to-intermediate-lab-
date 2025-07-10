
module devition_8_bit_tb;
  reg [7:0] A, B;
  wire [7:0] quotient,zero; 
  
  devition_8_bit uut (
    .A(A),
    .B(B),
    .quotient(quotient),
    .zero(zero)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, devition_8_bit_tb);
    
    A = 8'b00001111; B = 8'b00000101;
    #10 A = 8'b00001010; B = 8'b00000010; 
    #10 A = 8'b11111111; B = 8'b00000001; 
    #10 A = 8'b00000000; B = 8'b00000000; 

    #10 $finish;
  end

  initial begin
    $monitor("At time %0t: A=%b, B=%b => quotient=%b, zero=%b", $time, A, B, quotient, zero);
  end
endmodule
