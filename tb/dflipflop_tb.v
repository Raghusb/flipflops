module dflipflop_tb;
reg clk_tb;
reg rstn_tb;
reg d_tb;
wire q_tb;
wire qb_tb;

dflipflop DUT (
.clk(clk_tb),
.rstn(rstn_tb),
.d(d_tb),
.q(q_tb),
.qb(qb_tb) );

initial clk_tb= 1'b0;
always #5 clk_tb=~clk_tb;

initial begin
rstn_tb=1'b0;
d_tb=1'b0;
@(negedge clk_tb);
rstn_tb=1'b1;
d_tb=0;
@(negedge clk_tb)
d_tb=1'b1;

@(negedge clk_tb)
d_tb=1'b0;

@(negedge clk_tb)
d_tb=1'b1;
$finish;
end

initial 
$monitor ("values of Time = %0t, clk_tb=%0b, rstn_tb=%0b, d_tb=%0b, q_tb=%0b, qb_tb=%0b", $time, clk_tb, rstn_tb, d_tb,q_tb,qb_tb);

endmodule
