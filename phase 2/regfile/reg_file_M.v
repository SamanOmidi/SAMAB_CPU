`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:36:10 06/19/2022 
// Design Name: 
// Module Name:    reg_file_M 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module reg_file_M(input clk,
						input [3:0] wraddr,
						input [3:0] rdaddrA,
						input [3:0] rdaddrB,
						input [15:0] wedata,
						output [15:0] rddataA,
						output [15:0] rddataB,
						input write,
						input regdst

    );
		reg [15:0] reg0, reg1, reg2, reg3;
		wire regad;
		assign regad=(regdst)?rdaddrB:rdaddrA;
		
		assign rddataA=regad == 0? reg0:
							regad == 1? reg1:
							regad == 2? reg2:
							regad == 3? reg3: 0;
		assign rddataB=regad == 0? reg0:
							regad == 1? reg1:
							regad == 2? reg2:
							regad == 3? reg3: 0;
				 
		always @(posedge clk)
			begin
				if(write)
					case(wraddr)
						0: begin reg0 <= wrdata; end
						1: begin reg1 <= wrdata; end
						2: begin reg2 <= wrdata; end
						3: begin reg3 <= wrdata; end
						endcase
			end


endmodule
