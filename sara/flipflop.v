module flipflop(q,clk,rst,d);
input clk;
input rst;
input d;
output q;
reg q;

always @(posedge clk or posedge rst)
begin
if(rst)
#2 q=0;
else
q=#3 d;
end
//specify propogation delay 
specify
$setup(d,clk,2);
$hold(clk,d,0);
endspecify
endmodule 
