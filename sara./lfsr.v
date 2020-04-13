module lfsr(q,clk,rst,seed,load);
output q;
input clk;
input [3:0] seed;
input rst;
input load;
wire [3:0] state_out;
wire [3:0] state_in;
wire nextbit;
mux M1[3:0] (state_in,load,seed,{state_out[2],state_out[1],state_out[0],nextbit});
xor G1(nextbit,state_out[2],state_out[3]);
assign q=nextbit;
endmodule