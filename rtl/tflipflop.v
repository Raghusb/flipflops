module tflipflop(
input t,
input rstn,
input clk,
output reg q,
output qb

    );
    
    always @(posedge clk or negedge rstn)
    begin
    if(!rstn)
    q <= 1'b0;
    else
    if(t) 
    q <= ~t; 
    else 
    q <=q;
    
    end
    
    assign qb = ~q;
endmodule
