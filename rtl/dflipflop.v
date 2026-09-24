module dflipflop(
input clk,
input rstn,
input d,
output reg q,
output qb
    );
    
    always @(posedge clk or negedge rstn)
    begin
    if(!rstn)
    q <= 1'b0;
    else
    q <= d; 
    end
    
    assign qb = ~q;
    
endmodule
