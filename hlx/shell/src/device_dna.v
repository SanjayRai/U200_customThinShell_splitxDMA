`timescale 1 ps /1 ps

module device_dna (
    input clk,
    input start_devDNA_read,
    output ser_devDNA_out,
    output ser_devDNA_out_valid,
    output [95:0] dev_DNA
);

wire dout_ser;
reg [95:0] i_dev_DNA = 96'd0;
reg [7:0] i_count = 8'd0;
reg i_READ = 1'b0;
reg i_SHIFT = 1'b0;
reg i_ser_devDNA_out_valid;


DNA_PORTE2 #(
    .SIM_DNA_VALUE(96'd0)
) U_DNA_PORTE2 (
    .DOUT(dout_ser),
    .CLK(clk),
    .DIN(dout_ser),
    .READ(i_READ),
    .SHIFT(i_SHIFT)
);

always @(posedge clk)
begin
    if (start_devDNA_read) begin
        i_READ <= 1'b0;
        i_SHIFT <= 1'b0;
        i_count <= 8'd0;
        i_ser_devDNA_out_valid <= 1'b0;
    end else if ( i_count < 8'd9) begin
        i_READ <= 1'b0;
        i_SHIFT <= 1'b0;
        i_ser_devDNA_out_valid <= 1'b0;
        i_count <= i_count + 1'b1;
    end else if ( i_count == 8'd9) begin
        i_READ <= 1'b1;
        i_SHIFT <= 1'b0;
        i_ser_devDNA_out_valid <= 1'b0;
        i_count <= i_count + 1'b1;
    end else if ((i_count > 8'd9) && (i_count < 8'd106)) begin 
        i_READ <= 1'b0;
        i_SHIFT <= 1'b1;
        i_count <= i_count + 1'b1;
        i_ser_devDNA_out_valid <= 1'b1;
    end else begin
        i_READ <= 1'b0;
        i_SHIFT <= 1'b0;
        i_ser_devDNA_out_valid <= 1'b0;
    end 
end
assign ser_devDNA_out = dout_ser;
assign ser_devDNA_out_valid = i_ser_devDNA_out_valid;

always @(posedge clk) begin
    if (i_SHIFT ) begin
        i_dev_DNA <= {dout_ser, i_dev_DNA[95:1]};
    end
end

assign dev_DNA = i_dev_DNA;


endmodule
