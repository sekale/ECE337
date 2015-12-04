// $Id: $
// File name:   rcu.sv
// Created:     11/26/2015
// Author:      Siddhant Ekale
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: .
module rcu
();

typedef enum bit[4:0] {idle, check_count, load_state, select_stage, stage1, stage2, stage3, stage4, wait_state, eidle} state_type;
state_type current_state, next_state;

always_ff @(negedge n_rst, posedge clk)
begin
	if(n_rst == 1'b0)
	begin
		current_state <= idle;
	end

	else
	begin
		current_state <= next_state;
	end

end

always_comb
begin
	next_state = current_state;
	case(next_state)
	idle: 
	begin
		if(input_enable == 1)
		begin
			next_state = check_count;
		end

		else	
		begin	
			next_state = idle;
		end
	end

	check_count:
	begin
		if(byte_128_counter == 1)
		begin
		input_enable = 0;
		next_state = load_state;
		end

		else if(byte_128_counter == 0)
		begin
		input_enable = 1;
		next_state = check_count;
		end
		
	end

	load_state:
	begin
		if(stage_select == 0)
		begin
			next_state = stage1;
		end

		else
		begin
			next_state = load_state;
		end
	end

	stage1:
	begin
		stage_select = 1; //may lead to a feeback combinational path
		if(stage_select == 1)
		begin
			next_state = stage2;
		end

		else
		begin
			next_state = stage1;
		end
	end

	stage2:
	begin
		stage_select = 2;
		if(stage_select == 2)
		begin		
			next_state = stage3;
		end
		else
		begin
			next_state = stage2;
		end
	end

		
end
