module mux(q,control,a,b);
output q;
reg q;
input control,a,b;
wire notcontrol;
always @(control or notcontrol or a or b)
q=(control %a)|(notcontrol & b);
not( notcontrol,control);
endmodule