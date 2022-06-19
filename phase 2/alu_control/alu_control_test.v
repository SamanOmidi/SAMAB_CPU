`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:14:19 06/19/2022
// Design Name:   alu_control_M
// Module Name:   G:/ISE_project/alu/alu_control/alu_control_test.v
// Project Name:  alu_control
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_control_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_control_test;

	// Inputs
	reg [2:0]ops;
	reg [3:0] func;

	// Outputs
	wire [2:0] aluop;

	// Instantiate the Unit Under Test (UUT)
	alu_control_M uut (
		.ops(ops), 
		.func(func), 
		.aluop(aluop)
	);

	initial begin
		// Initialize Inputs
		ops = 0;
		func = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		ops=3;
		func=6;
		#100;
		
		ops=1;
		func=10;

	end
      
endmodule

