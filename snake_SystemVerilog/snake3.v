module snake3(clk, reset,a1,a2,b1,b2,c1,c2,d1,d2,e1,e2,f1,f2,g1,g2);
input clk, reset;
output reg a1,a2,b1,b2,c1,c2,d1,d2,e1,e2,f1,f2,g1,g2;

reg [3:0] num;

always @(*)
case (num)
	0: begin
		{a1,a2,b2}=3'b111;
		{b1,c1,c2,d1,d2,e1,e2,f1,f2,g1,g2}=11'b00000000000;
		end
	1: begin
		{a2, b2, g2}=3'b111;
		{b1,c1,c2,d1,d2,e1,e2,f1,f2,g1,a1}=11'b00000000000;
		end
	2: begin
		{b2, g2, g1}=3'b111;
		{b1,c1,c2,d1,d2,e1,e2,f1,f2,a1,a2}=11'b00000000000;
		end
	3: begin
		{g2, g1, e1}=3'b111;
		{b1,c1,c2,d1,d2,e2,f1,f2,a1,a2,b2}=11'b00000000000;
		end
	4: begin
		{g1, e1,d1}=3'b111;
		{b1,c1,c2,d2,e2,f1,f2,a1,a2,b2,g2}=11'b00000000000;
		end
	5: begin
		{e1,d1,d2}=3'b111;
		{b1,c1,c2,e2,f1,f2,a1,a2,b2,g2,g1}=11'b00000000000;
		end
	6: begin
		{d1,d2,c2}=3'b111;
		{b1,c1,e2,f1,f2,a1,a2,b2,g2,g1,e1}=11'b00000000000;
		end
	7: begin
		{d2,c2,g2}=3'b111;
		{b1,c1,e2,f1,f2,a1,a2,b2,g1,e1,d1}=11'b00000000000;
		end
	8: begin
		{c2,g2,g1}=3'b111;
		{b1,c1,e2,f1,f2,a1,a2,b2,e1,d1,d2}=11'b00000000000;
		end
	9: begin
		{g2,g1,f1}=3'b111;
		{b1,c1,e2,f2,a1,a2,b2,e1,d1,d2,c2}=11'b00000000000;
		end
	10: begin
		{g1,f1,a1}=3'b111;
		{b1,c1,e2,f2,a2,b2,e1,d1,d2,c2,g2}=11'b00000000000;
		end
	11: begin
		{f1,a1,a2}=3'b111;
		{b1,c1,e2,f2,b2,e1,d1,d2,c2,g2,g1}=11'b00000000000;
		end
	default: 
		{a1,a2,b1,b2,c1,c2,d1,d2,e1,e2,f1,f2,g1,g2}=14'b00000000000000;

endcase

always @(posedge clk)
	if(reset) num<=0;
	else
		if(num==11) num<=0;
		else num<=num+1;

endmodule