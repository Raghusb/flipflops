module srflipflop(
input s, r,
input clk,rst,en,
output reg q,
output  qb

    );
    
    assign qb = ~q;
    
    always@(posedge clk)begin
    if(rst)begin
    q <= 1'b0;
    end else if(en) begin
    case({s,r})
    2'b00: q <=q;
    2'b01: q <= 0;
    2'b10: q <=1;
    2'b11: q <= 1'bx;
    default : q <= q;
    endcase
    end
    end
    
endmodule
