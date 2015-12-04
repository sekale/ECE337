// $Id: $
// File name:   adc_module_0.sv
// Created:     11/29/2015
// Author:      Siddhant Ekale
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: .

`timescale 1ns / 100ps

module adc_module_0
(
	output wire [7:0]data_out,
	output wire shift_out
);

reg tb_clk;
reg tb_n_rst;
reg shift_out_val;
reg [127:0][7:0]tb_buffer_out_val;

parameter CLK_PERIOD = 10000ns;
parameter CHK_DELAY = 2;

	bit[7:0] twelve_bit_val;


	always 
	begin
	tb_clk = 1'b0;
	#(CLK_PERIOD/2.0);
	tb_clk = 1'b1;
	#(CLK_PERIOD/2.0);
	end

load_buffer L1
(
	.clk(tb_clk),
	.n_rst(tb_n_rst),
	.shift_in(shift_out),
	.data_in(data_out),
	.buffer_out_val(tb_buffer_out_val)
);


initial 
begin
	tb_n_rst = 1'b0;
	#(CLK_PERIOD *24);
	tb_n_rst = 1'b1;
	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2)
	
	shift_out_val = 1'b0;

	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;

//can ignore after this line

	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;

	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;

	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2)
	
	shift_out_val = 1'b0;

	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;

//can ignore after this line

	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;

	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b0;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b1;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;

	
	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b1;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b0;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b0;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;


	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b1;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b0;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b0;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;

	@(posedge tb_clk)

	#((CLK_PERIOD)*12); //12 IDLE CLOCK CYCLES ACCORDING TO SPECIFICATION

	twelve_bit_val[0] = 1'b1;
	#(CLK_PERIOD);

	twelve_bit_val[1] = 1'b0;
	#(CLK_PERIOD); 

	twelve_bit_val[2] = 1'b0;
	#(CLK_PERIOD); 

	twelve_bit_val[3] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[4] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[5] = 1'b0;

	#(CLK_PERIOD); 
	twelve_bit_val[6] = 1'b1;

	#(CLK_PERIOD); 
	twelve_bit_val[7] = 1'b0;
	
	shift_out_val = 1'b1;
	#(CLK_PERIOD*2);


	shift_out_val = 1'b0;

end
assign data_out = twelve_bit_val;
assign shift_out = shift_out_val;

endmodule
