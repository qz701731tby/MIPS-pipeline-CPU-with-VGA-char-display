`timescale 1ns / 1ps
// vga_char_display.v  
  
module vga_char_display(  
    input clk,  
    input rst,  
    input [31:0] CPU_outcome,
    output reg [3:0] r,  
    output reg [3:0] g,  
    output reg [3:0] b,  
    output hs,  
    output vs  
    ); 
          
    wire pclk;  
    reg [1:0] count;  
    reg [9:0] hcount, vcount;  
    wire [7:0] p[55:0];   
    
    
    reg [5:0] input_data1;
    reg [5:0] input_data2;
    reg [5:0] input_data3;
    reg [5:0] input_data4;
    reg [5:0] input_data5;
    reg [5:0] input_data6;
    reg [5:0] input_data7;
    reg [5:0] input_data8;
    // 显示器可显示区域  
    parameter UP_BOUND = 31;  
    parameter DOWN_BOUND = 510;  
    parameter LEFT_BOUND = 144;  
    parameter RIGHT_BOUND = 783;  
  
    // 屏幕中央两个字符的显示区域  
    parameter up_pos = 267;  
    parameter down_pos = 274;  
    parameter left_pos = 422;  
    parameter right_pos = 477;  
    
         // 获得像素时钟25MHz  
   assign pclk = count[1];  
   always @ (posedge clk or posedge rst)  
   begin  
       if (rst)  
           count <= 0;  
       else  
           count <= count+1;  
   end  
    
    //assign the input_data according to CPU_outcome
    always @(posedge clk)
    begin
        input_data1 <= {{2'b00}, {CPU_outcome[31:28]}};
        input_data2 <= {{2'b00}, {CPU_outcome[27:24]}};
        input_data3 <= {{2'b00}, {CPU_outcome[23:20]}};
        input_data4 <= {{2'b00}, {CPU_outcome[19:16]}};
        input_data5 <= {{2'b00}, {CPU_outcome[15:12]}};
        input_data6 <= {{2'b00}, {CPU_outcome[11:8]}};
        input_data7 <= {{2'b00}, {CPU_outcome[7:4]}};
        input_data8 <= {{2'b00}, {CPU_outcome[3:0]}};
    end
    //assign input_data1 = {{2'b00}, {CPU_outcome[31:28]}};
  
    RAM_set u_ram_1 (  
        .clk(clk),  
        .rst(rst),  
        .data(input_data1),  
        .col0(p[0]),  
        .col1(p[1]),  
        .col2(p[2]),  
        .col3(p[3]),  
        .col4(p[4]),  
        .col5(p[5]),  
        .col6(p[6])  
    );  
    RAM_set u_ram_2 (  
        .clk(clk),  
        .rst(rst),  
        .data(input_data2),  
        .col0(p[7]),  
        .col1(p[8]),  
        .col2(p[9]),  
        .col3(p[10]),  
        .col4(p[11]),  
        .col5(p[12]),  
        .col6(p[13])  
    ); 
  RAM_set u_ram_3 (  
        .clk(clk),  
        .rst(rst),  
        .data(input_data3),  
        .col0(p[14]),  
        .col1(p[15]),  
        .col2(p[16]),  
        .col3(p[17]),  
        .col4(p[18]),  
        .col5(p[19]),  
        .col6(p[20])  
       );
 RAM_set u_ram_4 (  
       .clk(clk),  
       .rst(rst),  
       .data(input_data4),  
       .col0(p[21]),  
       .col1(p[22]),  
       .col2(p[23]),  
       .col3(p[24]),  
       .col4(p[25]),  
       .col5(p[26]),  
       .col6(p[27])  
       ); 
 RAM_set u_ram_5 (  
              .clk(clk),  
              .rst(rst),  
              .data(input_data5),  
              .col0(p[28]),  
              .col1(p[29]),  
              .col2(p[30]),  
              .col3(p[31]),  
              .col4(p[32]),  
              .col5(p[33]),  
              .col6(p[34])  
          );  
          RAM_set u_ram_6 (  
              .clk(clk),  
              .rst(rst),  
              .data(input_data6),  
              .col0(p[35]),  
              .col1(p[36]),  
              .col2(p[37]),  
              .col3(p[38]),  
              .col4(p[39]),  
              .col5(p[40]),  
              .col6(p[41])  
          ); 
        RAM_set u_ram_7 (  
              .clk(clk),  
              .rst(rst),  
              .data(input_data7),  
              .col0(p[42]),  
              .col1(p[43]),  
              .col2(p[44]),  
              .col3(p[45]),  
              .col4(p[46]),  
              .col5(p[47]),  
              .col6(p[48])  
             );
       RAM_set u_ram_8 (  
             .clk(clk),  
             .rst(rst),  
             .data(input_data8),  
             .col0(p[49]),  
             .col1(p[50]),  
             .col2(p[51]),  
             .col3(p[52]),  
             .col4(p[53]),  
             .col5(p[54]),  
             .col6(p[55])  
             ); 
      
    // 列计数与行同步  
    assign hs = (hcount < 96) ? 0 : 1;  
    always @ (posedge pclk or posedge rst)  
    begin  
        if (rst)  
            hcount <= 0;  
        else if (hcount == 799)  
            hcount <= 0;  
        else  
            hcount <= hcount+1;  
    end  
      
    // 行计数与场同步  
    assign vs = (vcount < 2) ? 0 : 1;  
    always @ (posedge pclk or posedge rst)  
    begin  
        if (rst)  
            vcount <= 0;  
        else if (hcount == 799) begin  
            if (vcount == 520)  
                vcount <= 0;  
            else  
                vcount <= vcount+1;  
        end  
        else  
            vcount <= vcount;  
    end  
      
    // 设置显示信号值  
    always @ (posedge pclk or posedge rst)  
    begin  
        if (rst) begin  
            r <= 0;  
            g <= 0;  
            b <= 0;  
        end  
        else if (vcount>=UP_BOUND && vcount<=DOWN_BOUND  
                && hcount>=LEFT_BOUND && hcount<=RIGHT_BOUND) begin  
            if (vcount>=up_pos && vcount<=down_pos  
                    && hcount>=left_pos && hcount<=right_pos) begin  
                if (p[hcount-left_pos][vcount-up_pos]) begin  
                    r <= 4'b1111;  
                    g <= 4'b1111;  
                    b <= 4'b1111;  
                end  
                else begin  
                    r <= 4'b0000;  
                    g <= 4'b0000;  
                    b <= 4'b0000;  
                end  
            end  
            else begin  
                r <= 4'b0000;  
                g <= 4'b0000;  
                b <= 4'b0000;  
            end  
        end  
        else begin  
            r <= 4'b0000;  
            g <= 4'b0000;  
            b <= 4'b0000;  
        end  
    end  
  
endmodule  

