`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:00:04 06/19/2022
// Design Name:   control_unit_M
// Module Name:   G:/ISE_project/alu/control_unit/control_unit_test.v
// Project Name:  control_unit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control_unit_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_unit_test;
	reg [3:0] opcode;
	reg clk;
	

	// Outputs
	wire branch;
	wire regdst;
	wire alusrc;
	wire regwrite;
	wire memread;
	wire memreg;
	wire memwrite;
	wire [2:0] aluop;
	
	

	// Instantiate the Unit Under Test (UUT)
	control_unit_M uut (
		.opcode(opcode),
		.branch(branch),
		.regdst(regdst),
		.alusrc(alusrc),
		.regwrite(regwrite),
		.memread(memread),
		.memreg(memreg),
		.memweite(memwrite),
		.aluop(aluop),
		.clk(clk)
	);

	initial begin
		// Initialize Inputs

		opcode=0;
		clk=0;
		
		// Wait 100 ns for global reset to finish
		#100;
      opcode=1;
		#100;
		opcode=8;
		#100;
		opcode=9;
		// Add stimulus here

	end
	always #50 clk=~clk;
      
endmodule

