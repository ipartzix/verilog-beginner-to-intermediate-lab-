module register_8bit (
    input wire clk,
    input wire rst_n,
    input wire [7:0] data_in,
    input wire write_enable,
    output reg [7:0] data_out
);

    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            data_out <= 8'b00000000;
        end else if (write_enable) begin
            data_out <= data_in;
        end
    end

endmodule
