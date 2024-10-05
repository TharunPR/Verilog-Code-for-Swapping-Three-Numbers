module swap_3_nums (
    input wire [7:0] a_in,
    input wire [7:0] b_in,
    input wire [7:0] c_in,
    output reg [7:0] a_out,
    output reg [7:0] b_out,
    output reg [7:0] c_out
);
    always @(*) begin
        a_out = b_in;
        b_out = c_in;
        c_out = a_in;
    end
endmodule