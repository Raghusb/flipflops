module tflipflop_tb( );
reg clk_tb;
reg rstn_tb;
reg t_tb;
wire q_tb;
wire qb_tb;

tflipflop DUT (
.clk(clk_tb),
.rstn(rstn_tb),
.t(t_tb),
.q(q_tb),
.qb(qb_tb) );

always #1 clk_tb = ~clk_tb;

initial begin
clk_tb=1'b0;
rstn_tb=1'b0;
t_tb=1'b0;
@(negedge clk_tb);
rstn_tb=1'b1;
t_tb=1'b1;

@(negedge clk_tb);
t_tb=1'b0;

@(negedge clk_tb);
t_tb=1'b1;

$finish;
end

initial 
$monitor ("Values of Time=%0t, clk_tb=%0b, rstn_tb=%0b, t_tb=%0b, q_tb=%0b, qb_tb=%0b", $time,clk_tb, rstn_tb, t_tb, q_tb, qb_tb);



endmodule
