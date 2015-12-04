// $Id: $
// File name:   flex_counter.sv
// Created:     9/23/2015
// Author:      Siddhant Ekale
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: .

module flex_counter
#(
	parameter NUM_CNT_BITS = 4
)

(
	input wire clk,
	input wire n_rst,
	input wire count_enable,
	input reg[NUM_CNT_BITS - 1:0] rollover_val,
	output reg rollover_flag,
	output wire [NUM_CNT_BITS - 1: 0] count_out
);

	reg checkval;
	reg[NUM_CNT_BITS - 1:0] ctr;
	reg current_flag;
	reg next_flag;
	reg[NUM_CNT_BITS - 1:0] ctr_next;


//assert(count_enable == 1'b0)
//$display("Counter is not going to run unless this is enabled");
//else
//$display();

//assert(clear == 1'b1)
//$display("All bits will reset to their initial state(s) i.e. 0");
//else
//$display();


assign count_out = ctr;
assign rollover_flag = current_flag;

		

always_ff @(posedge clk, negedge n_rst)
begin : REG_LOGIC
	if(1'b0 == n_rst)
	begin
	ctr <= '0;
	//current_flag <= '0;
	end
	
	else begin
	ctr <= ctr_next;
	//current_flag <= next_flag;
	end
end

always_ff @(posedge clk, negedge n_rst)
begin:FLAG_LOGIC
	if(1'b0 == n_rst)
	begin
	current_flag <='0;
	end
	else
	begin
	current_flag <= next_flag;
	end
end

always_comb
begin : NXT_LOGIC

	
	if(count_enable == 1)
	begin
		ctr_next = ctr + 1;
		next_flag = 1'b0;
		checkval = 0;
		
		if(ctr_next == rollover_val)
		begin
			next_flag = 1'b1;
			checkval = 1'b1;
		end		

		if(ctr_next == rollover_val + 1)
		begin
			ctr_next = 1;
			checkval = 1'b1;
		end
		
	end
	
	else begin
		ctr_next = ctr;
		next_flag = 1'b0;
		checkval = 1'b0;
	end
	

end

endmodule


	
	
	
	

