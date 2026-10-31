// envelope_16b.v
module envelope_16b (
    input  wire              clk,
    input  wire              tvalid,
    input  wire signed [15:0] msg,     // 基带DDS输出，±32767
    output reg               tvalid_o,
    output reg signed [15:0] env       // 包络，范围约11469~21299，恒正
);
    // 调幅指数0.3的实现：
    // 为避免env超出16位有符号正数范围，将直流偏置和调制深度均减半
    // env = 16384 + 0.15 * msg
    // 0.15 * msg ≈ (msg * 4915) >> 15   (4915/32768 ≈ 0.15005)
    reg signed [31:0] prod;
    always @(posedge clk) begin
        prod     <= $signed(msg) * 16'sd4915;
        env      <= 16'sd16384 + (prod >>> 15);  // 算术右移15位，保留符号
        tvalid_o <= tvalid;
    end
endmodule