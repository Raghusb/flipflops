module jkflipflop(
input j,k,
input clk,
input rst,en,
output reg q,
output qb

    );
    assign qb = ~q;
    always@(posedge clk)
    begin
    if(rst)
    q<=1'b0;
    else if(en) begin
    if(j==0 && k==0)
    q <= q;
    else if(j==0 && k==1)
    q <=0;
    else if (j==1 && k==0)
    q <= 1;
    else 
    q <= ~q;
    end 
    end
    
endmodule
