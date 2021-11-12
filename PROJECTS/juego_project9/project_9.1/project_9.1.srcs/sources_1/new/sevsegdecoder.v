`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/03/2021 08:54:29 AM
// Module Name: sevsegdecoder
//////////////////////////////////////////////////////////////////////////////////
module sevsegdecoder(
    input [3:0] I,
    output reg [6:0] segs
);

always @ (I) begin
    case (I)
    4'b0000: segs <= 8'b11000000;  // 0
    4'b0001: segs <= 8'b11111001;  // 1
    4'b0010: segs <= 8'b10100100;  // 2
    4'b0011: segs <= 8'b10110000;  // 3
    4'b0100: segs <= 8'b10011001;  // 4
    4'b0101: segs <= 8'b10010010;  // 5
    4'b0110: segs <= 8'b10000010;  // 6
    4'b0111: segs <= 8'b11111000;  // 7
    4'b1000: segs <= 8'b10000000;  // 8
    4'b1001: segs <= 8'b10010000;  // 9
//    4'b1010: segs <= 8'b10001000;  // A
//    4'b1011: segs <= 8'b10000011;  // B
//    4'b1100: segs <= 8'b11000110;  // C
//    4'b1101: segs <= 8'b10100001;  // D
//    4'b1110: segs <= 8'b10000110;  // E
//    4'b1111: segs <= 8'b10001110;  // F
    default: segs <= 8'b11000000;
    endcase
end
endmodule
