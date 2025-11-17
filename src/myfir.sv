/////////////////////////////////////////////////////////////////////////////////
//Author: Muhammad Hamza Khan
//Module description: FIR filter  
//
//
//
//
//
///////////////////////////////////////////////////////////////////////////////
module myfir (
    input logic CLK,
    input logic RST_n,
    input logic VIN,
    input logic  signed [12:0] DIN,
    input logic  signed [12:0] H0,
    input logic  signed [12:0] H1,
    input logic  signed [12:0] H2,
    input logic  signed [12:0] H3,
    input logic  signed [12:0] H4,
    input logic  signed [12:0] H5,
    input logic  signed [12:0] H6,
    input logic  signed [12:0] H7,
    output logic signed [12:0] DOUT,
    output logic VOUT
);
localparam FILTER_TAPS = 8;
localparam DTA_WIDTH= 13;
logic signed 

    always_ff@(posedge CLK or negedge RST_n) begin
        if(!RST_n) begin
            DOUT <=13'b0;
            VOUT <=13'b0;
        end
        else if (VIN) begin 
             <= DIN;
        end
        
    end

endmodule