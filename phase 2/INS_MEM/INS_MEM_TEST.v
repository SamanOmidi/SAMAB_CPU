`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:56:48 06/19/2022
// Design Name:   INS_MEM_M
// Module Name:   G:/ISE_project/alu/INS_MEM/INS_MEM_TEST.v
// Project Name:  INS_MEM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: INS_MEM_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module INS_MEM_TEST;

	//input
	reg clk;
	reg [19:0] ext;
	reg zero
	reg branch;
	// Outputs
	wire [19:0] ins;

	// Instantiate the Unit Under Test (UUT)
	INS_MEM_M uut (
		.clk(clk), 
		.ext(ext), 
		.ins(ins), 
		.zero(zero), 
		.branch(branch)
	);

	initial begin
		// Initialize Inputs
		clk=0;
		ext=40;
		zero=1;
		branch=1;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

