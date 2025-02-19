`timescale 1ns / 1ps

module lab_3(
    input wire a,b,c,
    output wire x,y
    ); 
    wire not_c ,or_ab , and_ab , nand_ab , out_y;
    assign not_c = ~c;
    assign or_ab=a|b;
    assign and_ab=a&b;
    assign nand_ab=~(a&b); 
    assign out_y= nand_ab^or_ab ;          
    assign x = or_ab ^ not_c;
    assign y = or_ab & out_y;
endmodule
