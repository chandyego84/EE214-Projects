`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 09/29/2021 08:34:05 AM
// Module Name: mux_8_1
//////////////////////////////////////////////////////////////////////////////////
module mux_8_1(
    input [7:0] data,
    input [2:0] sel,
    output Y
);

// can only assign vals to registers in always block 
reg tmp;

always @(data, sel) begin
    case(sel)
    3'b000: tmp <= data[0];
    3'b001: tmp <= data[1];
    3'b010: tmp <= data[2];
    3'b011: tmp <= data[3];
    3'b100: tmp <= data[4];
    3'b101: tmp <= data[5];
    3'b110: tmp <= data[6];
    3'b111: tmp <= data[7];
    default: tmp <= 1'b0;
    endcase
end
assign Y = tmp;
endmodule
