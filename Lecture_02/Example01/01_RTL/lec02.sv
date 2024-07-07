module top_module(
    in_valid,  in_1,  in_2,  clk,  rst_n,    // input
    out_valid, out_1, out_2                  // output
);
    
// ----------------------------------
//   Declare I/O logic
// ----------------------------------

input [3:0] in_1, in_2;
input in_valid, clk, rst_n;
output logic [4:0] out_1, out_2;
output logic out_valid;

// ----------------------------------
//   Declare other  logic
// ----------------------------------

logic [4:0] out_1_comb, out_2_comb;

// ----------------------------------
//   Your Design
// ----------------------------------
    
always_comb begin

    out_1_comb = 0;    // you must set default value 
    out_2_comb = 0;    // to avoid latches

    if(in_valid) begin
        out_1_comb = in_1 + in_2;
        out_2_comb = in_1 - in_2;
    end

end

always_ff @(posedge clk, negedge rst_n) begin

    if(!rst_n) begin
        out_valid <= 0;
        out_1 <= 0;
        out_2 <= 0;
    end

    else begin
        out_valid <= in_valid;
        out_1 <= out_1_comb;
        out_2 <= out_2_comb;
    end
    
end
    
endmodule