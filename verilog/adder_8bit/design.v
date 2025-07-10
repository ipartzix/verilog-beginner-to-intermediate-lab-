module adder_8_bit(
  input[7:0]A,
  input[7:0]B,
  output[7:0]sum,
  output carry
);
  assign sum =(A ^ B);
  assign carry= (A & B);
endmodule
