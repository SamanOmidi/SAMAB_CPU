`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:18:41 06/19/2022 
// Design Name: 
// Module Name:    alu_control_M 
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
module alu_control_M(ops,func,aluop
    );
	 input [2:0]aps;
	 input [3:0]func;
	 wire [2:0]sec=ops;
	 
	 integer temp1;
	 integer temp2;
	 integer temp3;
	 
	 output reg[2:0]aluop;
	  
	 always @*
	 begin
	 if(ops[0]==1)
		temp1=2;
	 else
		temp1=0;
	 
	 if(ops[1]==1)
			temp2=1;
	 else
			temp2=0;
	 if(ops[1]==1)
		temp3=temp1;
	 else
		temp3=temp2;
	 if(ops[2]==1)
		aluop=func;
	 else
		aluop=temp3;
	 end
	 endmodule
	 


endmodule
