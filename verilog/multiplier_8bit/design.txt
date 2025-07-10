module multiplier_8_bit(
  input [7:0] A,
  input [7:0] B,
  output[7:0] product 
);

  assign product = A * B; 

endmodule