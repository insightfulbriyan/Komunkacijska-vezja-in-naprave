// Copyright (C) 2022  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"
// CREATED		"Sun Feb 26 09:47:08 2023"

module CRC-Full(
	DIN,
	CLK,
	RED,
	DOT
);


input wire	DIN;
input wire	CLK;
input wire	RED;
output wire	DOT;

wire	SYNTHESIZED_WIRE_0;
reg	DFF_D9;
reg	DFF_D10;
wire	SYNTHESIZED_WIRE_1;
reg	DFF_D12;
reg	DFF_D13;
reg	DFF_D14;
reg	DFF_D15;
reg	DFF_D1;
reg	DFF_D2;
reg	DFF_D3;
wire	SYNTHESIZED_WIRE_2;
reg	DFF_D5;
reg	DFF_D6;
reg	DFF_D7;
reg	DFF_D8;
wire	SYNTHESIZED_WIRE_3;
reg	DFF_D16;
wire	SYNTHESIZED_WIRE_7;
reg	DFF_D11;
reg	DFF_D4;

assign	DOT = DFF_D16;




always@(posedge CLK)
begin
	begin
	DFF_D1 <= SYNTHESIZED_WIRE_0;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D10 <= DFF_D9;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D11 <= DFF_D10;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D12 <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D13 <= DFF_D12;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D14 <= DFF_D13;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D15 <= DFF_D14;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D16 <= DFF_D15;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D2 <= DFF_D1;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D3 <= DFF_D2;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D4 <= DFF_D3;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D5 <= SYNTHESIZED_WIRE_2;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D6 <= DFF_D5;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D7 <= DFF_D6;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D8 <= DFF_D7;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_D9 <= DFF_D8;
	end
end

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_3 & DFF_D16;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_7 ^ DFF_D11;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_7 ^ DFF_D4;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_7 ^ DIN;

assign	SYNTHESIZED_WIRE_3 =  ~RED;


endmodule
