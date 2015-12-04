// $Id: $        
// File name:   rcu.sv
// Created:     11/26/2015
// Author:      Siddhant Ekale
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: .
module rcu
#(
   parameter [4:0] idle = 5'd0,
                   stage0 = 5'd1,
                   stage1 = 5'd2,
                   stage2 = 5'd3,
                   stage3 = 5'd4,
                   stage4 = 5'd5,
                   stage5 = 5'd6,
                   stage6 = 5'd7,
                   stage7 = 5'd8,
                   stage8 = 5'd9,
                   stage9 = 5'd10,
                   stage10 = 5'd11,
                   stage11 = 5'd12,
                   stage12 = 5'd13,
                   stage13 = 5'd14,
                   stage14 = 5'd15,
                   stage15 = 5'd16,
                   stage16 = 5'd17,
                   loading = 5'd18
)            
(
   input wire clk,
   input wire n_reset,
   input wire spi_clk,   
   output  stage_select,
   output  mul_cnt
);


   
reg [4:0] current_state, next_state,r_flag,mul_count;
reg [3:0] stage_select;
reg 	  input_enable,mul_enable;
reg [7:0] count_out;

   
flex_counter #(.NUM_CNT_BITS(8)) I0 (.clk(clk),.n_rst(n_reset),.clear(clear),.count_enable(spi_clk),.rollover_val(8'd128),.count_out(count_out),.rollover_flag(input_enable));
flex_counter #(.NUM_CNT_BITS(5)) I0 (.clk(clk),.n_rst(n_reset),.clear(clear),.count_enable(mul_enable),.rollover_val(5'd16),.count_out(mul_count),.rollover_flag(r_flag));
   
always_ff @(negedge n_reset, posedge clk)
begin
	if(n_rst == 1'b0) current_state <= idle;
	else current_state <= next_state;
end

always_comb
begin
	next_state = current_state;
	case(current_state)
	idle: if(input_enable) next_state = loading;//idle
	loading: next_state = stage2;              //loading                                                                                                                    
	stage2:next_state = stage3;               
	stage3:if(r_flag) next_state = stage4;     
        stage4:next_state = stage5;
	stage5:if(r_flag) next_state = stage6;
	stage6:next_state = stage7;
	stage7:if(r_flag) next_state = stage8;
	stage8:next_state = stage9;
        stage9:if(r_flag) next_state = stage10;
	stage10:next_state = stage11;
	stage11:if(r_flag) next_state = stage12;
        stage12:next_state = stage13;
        stage13:if(r_flag) next_state = stage14;
	stage14:next_state = stage15;
        stage15:next_stage = stage16;    //goes to manitude block
	stage16:if(count_out == 8'd64) next_state = loading;
	  
end // always_comb begin

   

always_comb
begin
   stage_select = 0;
   mul_enable = 0;
   if(current_state == stage0) stage_select = 0;
   if(current_state == stage1) stage_select = 1;
   if(current_state == stage2) stage_select = 2;
   if(current_state == stage3)
      begin
	stage_select = 3;
	mul_enable = 1;
     end
   if(current_state == stage4) stage_select = 4;
   if(current_state == stage5)
      begin
	stage_select = 5;
	mul_enable = 1;
     end 
   if(current_state == stage6) stage_select = 6;
   if(current_state == stage7)
      begin
	stage_select = 7;
	mul_enable = 1;
     end
   if(current_state == stage8)  stage_select = 8;
   if(current_state == stage9)
      begin
	stage_select = 9;
	mul_enable = 1;
     end
   if(current_state == stage10)  stage_select = 10;
   if(current_state == stage11)
      begin
	stage_select = 11;
	mul_enable = 1;
     end
   if(current_state == stage12)  stage_select = 12;
   if(current_state == stage13)
      begin
	stage_select = 13;
	mul_enable = 1;
     end 
   if(current_state == stage14)  stage_select = 14; //7th buterfly
   if(current_state == stage15)  stage_select = 15; //load to magnitude block
   if(current_state == stage16)  stage_select = 0; //idle state wait for 64 values
   

end
   