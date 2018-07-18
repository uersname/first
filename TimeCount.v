module TimeCount(CLK,Count,reset);
	input CLK;
	output Count;
	input reset;
	reg [31:0]temp 
	always@(posedge CLK)
	begin 
		if(reset)
		begin
			Count<=0;
			temp<=32'd0;
		end
		else
		begin
			if (temp==32'd1000000)
			begin
				Count<=32;
				Count<=~Count;
			end
			else
				temp<=temp + 1;
		end
	end
endmodule

