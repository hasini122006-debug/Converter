`timescale 1ns / 1ps

module converter;

reg [7:0] binary;

initial
begin

binary = 8'b00000000;
#10;

binary = 8'b00000001;
#10;

binary = 8'b00001010;
#10;

binary = 8'b00001111;
#10;

binary = 8'b00110010;
#10;

binary = 8'b01100100;
#10;

binary = 8'b11111111;
#10;

end

always @(binary)
begin
$display("-----------------------------------------");
$display("Binary      = %b",binary);
$display("Decimal     = %0d",binary);
$display("Hexadecimal = %0h",binary);
end

endmodule