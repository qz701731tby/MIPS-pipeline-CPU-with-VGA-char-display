// RAM_set.v
`timescale 1ns / 1ps

module RAM_set(
	input clk,
	input rst,
	input [5:0] data,
	output reg [7:0] col0,
	output reg [7:0] col1,
	output reg [7:0] col2,
	output reg [7:0] col3,
	output reg [7:0] col4,
	output reg [7:0] col5,
	output reg [7:0] col6
	);

	always @(posedge clk or negedge rst)
		begin
			if (rst)
				begin
					col0 <= 8'b0000_0000;
					col1 <= 8'b0000_0000;
					col2 <= 8'b0000_0000;
					col3 <= 8'b0000_0000;
					col4 <= 8'b0000_0000;
					col5 <= 8'b0000_0000;
					col6 <= 8'b0000_0000;
				end
			else
				begin
					case (data)
						6'b00_0000: // "0"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0011_1110;
								col2 <= 8'b0101_0001;
								col3 <= 8'b0100_1001;
								col4 <= 8'b0100_0101;
								col5 <= 8'b0011_1110;
								col6 <= 8'b0000_0000;
							end
						6'b00_0001: // "1"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0000_0000;;
								col2 <= 8'b0100_0010;
								col3 <= 8'b0111_1111;
								col4 <= 8'b0100_0000;
								col5 <= 8'b0000_0000;;
								col6 <= 8'b0000_0000;
							end
						6'b00_0010: // "2"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0100_0010;
								col2 <= 8'b0110_0001;
								col3 <= 8'b0101_0001;
								col4 <= 8'b0100_1001;
								col5 <= 8'b0100_0110;
								col6 <= 8'b0000_0000;
							end
						6'b00_0011: // "3"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0010_0010;
								col2 <= 8'b0100_0001;
								col3 <= 8'b0100_1001;
								col4 <= 8'b0100_1001;
								col5 <= 8'b0011_0110;
								col6 <= 8'b0000_0000;
							end
						6'b00_0100: // "4"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0001_1000;
								col2 <= 8'b0001_0100;
								col3 <= 8'b0001_0010;
								col4 <= 8'b0111_1111;
								col5 <= 8'b0001_0000;
								col6 <= 8'b0000_0000;
							end
						6'b00_0101: // "5"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0010_0111;
								col2 <= 8'b0100_0101;
								col3 <= 8'b0100_0101;
								col4 <= 8'b0100_0101;
								col5 <= 8'b0011_1001;
								col6 <= 8'b0000_0000;
							end
						6'b00_0110: // "6"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0011_1110;
								col2 <= 8'b0100_1001;
								col3 <= 8'b0100_1001;
								col4 <= 8'b0100_1001;
								col5 <= 8'b0011_0010;
								col6 <= 8'b0000_0000;
							end
						6'b00_0111: // "7"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0110_0001;
								col2 <= 8'b0001_0001;
								col3 <= 8'b0000_1001;
								col4 <= 8'b0000_0101;
								col5 <= 8'b0000_0011;
								col6 <= 8'b0000_0000;
							end
						6'b00_1000: // "8"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0011_0110;
								col2 <= 8'b0100_1001;
								col3 <= 8'b0100_1001;
								col4 <= 8'b0100_1001;
								col5 <= 8'b0011_0110;
								col6 <= 8'b0000_0000;
							end
						6'b00_1001: // "9"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0010_0110;
								col2 <= 8'b0100_1001;
								col3 <= 8'b0100_1001;
								col4 <= 8'b0100_1001;
								col5 <= 8'b0011_1110;
								col6 <= 8'b0000_0000;
							end
						6'b00_1010: // "A"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0111_1100;
								col2 <= 8'b0001_0010;
								col3 <= 8'b0001_0001;
								col4 <= 8'b0001_0010;
								col5 <= 8'b0111_1100;
								col6 <= 8'b0000_0000;
							end
						6'b00_1011: // "B"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0111_1111;
								col2 <= 8'b0100_1001;
								col3 <= 8'b0100_1001;
								col4 <= 8'b0100_1001;
								col5 <= 8'b0011_0110;
								col6 <= 8'b0000_0000;
							end
						6'b00_1100: // "C"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0011_1110;
								col2 <= 8'b0100_0001;
								col3 <= 8'b0100_0001;
								col4 <= 8'b0100_0001;
								col5 <= 8'b0010_0010;
								col6 <= 8'b0000_0000;
							end
						6'b00_1101: // "D"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0111_1111;
								col2 <= 8'b0100_0001;
								col3 <= 8'b0100_0001;
								col4 <= 8'b0100_0001;
								col5 <= 8'b0011_1110;
								col6 <= 8'b0000_0000;
							end
						6'b00_1110: // "E"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0111_1111;
								col2 <= 8'b0100_1001;
								col3 <= 8'b0100_1001;
								col4 <= 8'b0100_1001;
								col5 <= 8'b0100_0001;
								col6 <= 8'b0000_0000;
							end
						6'b00_1111: // "F"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0111_1111;
								col2 <= 8'b0000_1001;
								col3 <= 8'b0000_1001;
								col4 <= 8'b0000_1001;
								col5 <= 8'b0000_0001;
								col6 <= 8'b0000_0000;
							end
						6'b01_0000: // "G"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0011_1110;
								col2 <= 8'b0100_0001;
								col3 <= 8'b0100_1001;
								col4 <= 8'b0100_1001;
								col5 <= 8'b0011_1010;
								col6 <= 8'b0000_0000;
							end
						6'b01_0001: // "H"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0111_1111;
								col2 <= 8'b0000_1000;
								col3 <= 8'b0000_1000;
								col4 <= 8'b0000_1000;
								col5 <= 8'b0111_1111;
								col6 <= 8'b0000_0000;
							end
						6'b01_0010: // "I"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0000_0000;
								col2 <= 8'b0100_0001;
								col3 <= 8'b0111_1111;
								col4 <= 8'b0100_0001;
								col5 <= 8'b0000_0000;
								col6 <= 8'b0000_0000;
							end
						6'b01_0011: // "J"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0010_0000;
								col2 <= 8'b0100_0001;
								col3 <= 8'b0100_0001;
								col4 <= 8'b0011_1111;
								col5 <= 8'b0000_0001;
								col6 <= 8'b0000_0000;
							end
						6'b01_0100: // "K"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0111_1111;
								col2 <= 8'b0000_1000;
								col3 <= 8'b0001_0100;
								col4 <= 8'b0010_0010;
								col5 <= 8'b0100_0001;
								col6 <= 8'b0000_0000;
							end
						6'b01_0101: // "L"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0111_1111;
								col2 <= 8'b0100_0000;
								col3 <= 8'b0100_0000;
								col4 <= 8'b0100_0000;
								col5 <= 8'b0100_0000;
								col6 <= 8'b0000_0000;
							end
						6'b01_0110: // "M"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0111_1111;
								col2 <= 8'b0000_0010;
								col3 <= 8'b0000_1100;
								col4 <= 8'b0000_0010;
								col5 <= 8'b0111_1111;
								col6 <= 8'b0000_0000;
							end
						6'b01_0111: // "N"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0111_1111;
								col2 <= 8'b0000_0010;
								col3 <= 8'b0000_0100;
								col4 <= 8'b0000_1000;
								col5 <= 8'b0111_1111;
								col6 <= 8'b0000_0000;
							end
						6'b01_1000: // "O"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0011_1110;
								col2 <= 8'b0100_0001;
								col3 <= 8'b0100_0001;
								col4 <= 8'b0100_0001;
								col5 <= 8'b0011_1110;
								col6 <= 8'b0000_0000;
							end
						6'b01_1001: // "P"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0111_1111;
								col2 <= 8'b0000_1001;
								col3 <= 8'b0000_1001;
								col4 <= 8'b0000_1001;
								col5 <= 8'b0000_0110;
								col6 <= 8'b0000_0000;
							end
						6'b01_1010: // "Q"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0011_1110;
								col2 <= 8'b0100_0001;
								col3 <= 8'b0101_0001;
								col4 <= 8'b0110_0001;
								col5 <= 8'b0111_1110;
								col6 <= 8'b0000_0000;
							end
						6'b01_1011: // "R"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0111_1111;
								col2 <= 8'b0000_1001;
								col3 <= 8'b0001_1001;
								col4 <= 8'b0010_1001;
								col5 <= 8'b0100_0110;
								col6 <= 8'b0000_0000;
							end
						6'b01_1100: // "S"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0010_0110;
								col2 <= 8'b0100_1001;
								col3 <= 8'b0100_1001;
								col4 <= 8'b0100_1001;
								col5 <= 8'b0011_0010;
								col6 <= 8'b0000_0000;
							end
						6'b01_1101: // "T"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0000_0001;
								col2 <= 8'b0000_0001;
								col3 <= 8'b0111_1111;
								col4 <= 8'b0000_0001;
								col5 <= 8'b0000_0001;
								col6 <= 8'b0000_0000;
							end
						6'b01_1110: // "U"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0011_1111;
								col2 <= 8'b0100_0000;
								col3 <= 8'b0100_0000;
								col4 <= 8'b0100_0000;
								col5 <= 8'b0011_1111;
								col6 <= 8'b0000_0000;
							end
						6'b01_1111: // "V"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0001_1111;
								col2 <= 8'b0010_0000;
								col3 <= 8'b0100_0000;
								col4 <= 8'b0010_0000;
								col5 <= 8'b0001_1111;
								col6 <= 8'b0000_0000;
							end
						6'b10_0000: // "W"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0011_1111;
								col2 <= 8'b0100_0000;
								col3 <= 8'b0011_0000;
								col4 <= 8'b0100_0000;
								col5 <= 8'b0011_1111;
								col6 <= 8'b0000_0000;
							end
						6'b10_0001: // "X"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0110_0011;
								col2 <= 8'b0001_0100;
								col3 <= 8'b0000_1000;
								col4 <= 8'b0001_0100;
								col5 <= 8'b0110_0011;
								col6 <= 8'b0000_0000;
							end
						6'b10_0010: // "Y"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0000_0011;
								col2 <= 8'b0000_0100;
								col3 <= 8'b0111_1000;
								col4 <= 8'b0000_0100;
								col5 <= 8'b0000_0011;
								col6 <= 8'b0000_0000;
							end
						6'b10_0011: // "Z"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0110_0001;
								col2 <= 8'b0101_0001;
								col3 <= 8'b0100_1001;
								col4 <= 8'b0100_0101;
								col5 <= 8'b0100_0011;
								col6 <= 8'b0000_0000;
							end
						6'b11_1110: // " "
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0000_0000;
								col2 <= 8'b0000_0000;
								col3 <= 8'b0000_0000;
								col4 <= 8'b0000_0000;
								col5 <= 8'b0000_0000;
								col6 <= 8'b0000_0000;
							end
						6'b11_1111: // ":"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0000_0000;
								col2 <= 8'b0011_0110;
								col3 <= 8'b0011_0110;
								col4 <= 8'b0000_0000;
								col5 <= 8'b0000_0000;
								col6 <= 8'b0000_0000;
							end
						default: // "*"
							begin
								col0 <= 8'b0000_0000;
								col1 <= 8'b0010_0010;
								col2 <= 8'b0001_0100;
								col3 <= 8'b0000_1000;
								col4 <= 8'b0001_0100;
								col5 <= 8'b0010_0010;
								col6 <= 8'b0000_0000;
							end
					endcase
				end
		end

endmodule