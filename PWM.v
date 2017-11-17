 module PWM (clk, period, rst_n, pulse_width,  pwm_out, duty_sw, scope_out);

 //parameter width = 16;
 //input wire [width - 1:0] period;
 //input wire [width - 1:0] pulse_width; 
 
 input wire clk, rst_n;
 input wire [7:0] period, pulse_width;
 input wire duty_sw;

 output pwm_out;
 output scope_out;
 
 reg [7:0]count, duty_cycle;
 reg out;
 reg scope;

 
 always @(posedge clk or negedge rst_n) // calculations 
	begin
	
    if(!rst_n) 
		begin
		count <= 32'b1; //Write 32 1's to count
		end
		
	 else
		begin    
		if(count > period)
			begin
			count = 32'b0;
			end	
		else
			begin
				count = count + 1'b1; // increment the counter
			end
		end
	end

 always@(posedge clk) // output*
 begin 
		if(count <= pulse_width)
		  begin 
			out = 1'b1;
			scope = 1'b1;
		  end
	   else 
			begin
			out = 1'b0;
			scope = 1'b0;
		   end 
  end
 assign pwm_out = out;
 assign scope_out = scope;
 
 endmodule
 
 
 