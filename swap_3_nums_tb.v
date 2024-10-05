
`timescale 1ns / 1ps
module swap_3_nums_tb;
    reg [7:0] a;
    reg [7:0] b;
    reg [7:0] c;
    wire [7:0] a_out;
    wire [7:0] b_out;
    wire [7:0] c_out;

    swap_3_nums uut (
        .a_in(a),
        .b_in(b),
        .c_in(c),
        .a_out(a_out),
        .b_out(b_out),
        .c_out(c_out)
    );

    initial begin
        a = 8'd10;
        b = 8'd20;
        c = 8'd30;

        #10;
        $display("Before Swap: a = %d, b = %d, c = %d", a, b, c);
        #10;
        $display("After Swap: a = %d, b = %d, c = %d", a_out, b_out, c_out);
        #10 $stop;
    end
endmodule