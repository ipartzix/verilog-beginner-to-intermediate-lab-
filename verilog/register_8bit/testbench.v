`timescale 1ns / 1ps

module tb_register_8bit;

    reg clk;
    reg rst_n;
    reg [7:0] data_in;
    reg write_enable;
    wire [7:0] data_out;

    register_8bit uut (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(data_in),
        .write_enable(write_enable),
        .data_out(data_out)
    );

    always begin
        #5 clk = ~clk;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_register_8bit);

        clk = 0;
        rst_n = 0;
        data_in = 8'b00000000;
        write_enable = 0;

        #10; rst_n = 1;
        #10;

        data_in = 8'b10101010; write_enable = 1; #10;
        data_in = 8'b11110000; write_enable = 1; #10;
        data_in = 8'b00001111; write_enable = 0; #10;

        rst_n = 0; #10; rst_n = 1;
        $stop;
    end

    initial begin
        $monitor("At time %t, data_out = %b", $time, data_out);
    end

endmodule