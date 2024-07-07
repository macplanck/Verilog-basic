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

    
endmodule