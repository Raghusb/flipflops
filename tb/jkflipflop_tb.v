module jkflipflop_tb;
reg j_tb,k_tb;
reg clk_tb, rst_tb;
reg en_tb;
wire q_tb;
wire qb_tb;


jkflipflop DUT(
.j(j_tb),
.k(k_tb),
.clk(clk_tb),
.rst(rst_tb),
.en(en_tb),
.q(q_tb),
.qb(qb_tb));

always begin
#5 clk_tb = ~clk_tb;
end



initial begin
$monitor ("Values of  Time=%0t,j_tb=%b,k_tb=%b,en_tb=%b,rst_tb=%b,q_tb=%b,qb_tb=%b",$time,j_tb,k_tb,en_tb,rst_tb,q_tb,qb_tb);
clk_tb=1'b0;
rst_tb =1'b1;
en_tb=1'b0;
j_tb=1'b1;k_tb=1'b0;
#10;

rst_tb=1'b0;
en_tb=1'b1;
j_tb=1'b0; k_tb=1'b0;
#10;
j_tb=1'b0; k_tb=1'b1;
#10;
j_tb=1'b1; k_tb=1'b0;
#10;
j_tb=1'b1; k_tb=1'b1;
#10;
j_tb=1'b1; k_tb=1'b0;
#10;
en_tb=1'b0;
j_tb=1'b1; k_tb=1'b0;
#10;

$finish;
end
endmodule
