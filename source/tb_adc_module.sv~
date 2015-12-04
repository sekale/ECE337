// $Id: $
// File name:   tb_adc_module.sv
// Created:     11/22/2015
// Author:      Siddhant Ekale
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: testing the adc module.


`timescale 1ns / 100ps

module tb_adc_module
(
);

parameter CLK_PERIOD = 3.68ns;
parameter CHK_DELAY = 2;

	always 
	begin
	tb_clk = 1'b0;
	#(CLK_PERIOD/2.0);
	tb_clk = 1'b1;
	#(CLK_PERIOD/2.0);
	end

endmodule
