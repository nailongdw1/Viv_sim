// rectifier.v -- 对 16 位有符号输入取绝对值
module rectifier(
    input  wire              clk,
    input  wire signed [15:0] din,
    output reg signed [15:0] dout
);
    always @(posedge clk) begin
        dout <= (din >= 0) ? din : -din;
    end
endmodule