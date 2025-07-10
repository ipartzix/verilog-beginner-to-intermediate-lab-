module devition_8_bit(
  input [7:0] A,
  input [7:0] B,
  output reg [7:0] quotient,
  output reg zero
);
  always @ (A, B) begin
    if (B == 0) begin
     quotient = 8'b00000000;  
     zero = 1;
    end else begin
      quotient = A / B;       
      zero = 0; 
    end
  end

endmodule

