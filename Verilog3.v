 module pwm #(clk, period,  pulse_width,  pwm_out)

 parameter width = 16;


 input wire clk, rst_l;
 input wire [width - 1:0] period;
 input wire [width - 1:0] pulse_width; 
 input wire enable;

 output wire pwm_out;

 reg[width - 1:0] ticks_d, ticks_q;
 reg pwm_d, pwm_q;

 
 
 always @(*)// calculations 
 count <= count + 1;
 rst = (cnt>=pr)?1’b1:1’b0

 always(posedge clk) // output*
 begin 
	
 
 
 end
 
 endmodule
