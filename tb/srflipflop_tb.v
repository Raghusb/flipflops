module srflipflop_tb;
reg s_tb,r_tb;
reg en_tb,rst_tb;
reg clk_tb;
wire q_tb;
wire qb_tb;

srflipflop DUT (
.clk(clk_tb),
.s(s_tb),
.r(r_tb),
.en(en_tb),
.rst(rst_tb),
.q(q_tb),
.qb(qb_tb));


always begin
#5 clk_tb=~clk_tb;
end

initial begin
$monitor ("Values of  Time=%0t,s_tb=%b,r_tb=%b,en_tb=%b,rst_tb=%b,q_tb=%b,qb_tb=%b",$time,s_tb,r_tb,en_tb,rst_tb,q_tb,qb_tb);
clk_tb=1'b0;
rst_tb =1'b1;
en_tb=1'b0;
s_tb=1'b1;r_tb=1'b0;
#10;

rst_tb=1'b0;
en_tb=1'b1;
s_tb=1'b0; r_tb=1'b0;
#10;
s_tb=1'b0; r_tb=1'b1;
#10;
s_tb=1'b1; r_tb=1'b0;
#10;
s_tb=1'b1; r_tb=1'b1;
#10;
s_tb=1'b1; r_tb=1'b0;
#10;
en_tb=1'b0;
s_tb=1'b1; r_tb=1'b0;
#10;

$finish;
end




  
endmodule
