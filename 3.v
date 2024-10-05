module pow (
    input [7:0] num,
    output reg [2:0] pow
);

    always @(*) begin
        pow = 3'b000;
        if (num[0]) pow = 3'b000; // 2^0
        if (num[1]) pow = 3'b001; // 2^1
        if (num[2]) pow = 3'b010; // 2^2
        if (num[3]) pow = 3'b011; // 2^3
        if (num[4]) pow = 3'b100; // 2^4
        if (num[5]) pow = 3'b101; // 2^5
        if (num[6]) pow = 3'b110; // 2^6
        if (num[7]) pow = 3'b111; // 2^7
    end

endmodule
