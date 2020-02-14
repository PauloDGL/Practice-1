// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
// CREATED		"Tue Feb 12 11:12:47 2019"

module Cont4bits(
	inclk_1,
	Voltaje,
	pin_name1,
	pin_name2,
	pin_name3,
	LSB,
	MSB
);


input wire	inclk_1;
input wire	Voltaje;
input wire	pin_name1;
output wire	pin_name2;
output wire	pin_name3;
output reg	LSB;
output wire	MSB;

wire	SYNTHESIZED_WIRE_5;
reg	JKFF_inst6;
reg	SYNTHESIZED_WIRE_6;
reg	JKFF_inst5;
wire	SYNTHESIZED_WIRE_7;

assign	pin_name2 = JKFF_inst6;
assign	pin_name3 = JKFF_inst5;
assign	MSB = SYNTHESIZED_WIRE_6;



assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_5 & JKFF_inst6;

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_6 & JKFF_inst5;


always@(posedge inclk_1 or negedge pin_name1)
begin
if (!pin_name1)
	begin
	SYNTHESIZED_WIRE_6 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_6 <= ~SYNTHESIZED_WIRE_6 & Voltaje | SYNTHESIZED_WIRE_6 & ~Voltaje;
	end
end


always@(posedge inclk_1 or negedge pin_name1)
begin
if (!pin_name1)
	begin
	JKFF_inst5 <= 1;
	end
else
	begin
	JKFF_inst5 <= ~JKFF_inst5 & SYNTHESIZED_WIRE_6 | JKFF_inst5 & ~SYNTHESIZED_WIRE_6;
	end
end


always@(posedge inclk_1 or negedge pin_name1)
begin
if (!pin_name1)
	begin
	JKFF_inst6 <= 1;
	end
else
	begin
	JKFF_inst6 <= ~JKFF_inst6 & SYNTHESIZED_WIRE_5 | JKFF_inst6 & ~SYNTHESIZED_WIRE_5;
	end
end


always@(posedge inclk_1 or negedge pin_name1)
begin
if (!pin_name1)
	begin
	LSB <= 1;
	end
else
	begin
	LSB <= ~LSB & SYNTHESIZED_WIRE_7 | LSB & ~SYNTHESIZED_WIRE_7;
	end
end


endmodule
