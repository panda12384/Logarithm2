module log2 (
    input wire [31:0] value, 
    output reg [4:0] log      
);
    integer i;

    always @(*) begin
        log = 0;
        for (i = 0; i < 32; i = i + 1) begin
            if (value >> i) begin
                log = i;
            end
        end
    end
endmodule
