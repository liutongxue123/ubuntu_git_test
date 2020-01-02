/*************************************************************************
 > File Name: a.sv
 > Author: Bin Liu
 > Mail: bin.liu@nxp.com 
 > Created Time: 2020年01月02日 星期四 21时27分34秒
 > Description:
************************************************************************/

module a
 (
	input   logic       clk,
	input   logic       rst_n,
	input   logic [7:0] in,
	output  logic [7:0] out   
 );
	
	always_ff @(posedge clk )
	begin
      if (rst_n == 1'b0)
		  out <= 0;
	  else
		  out <= in;
	end 

endmodule
