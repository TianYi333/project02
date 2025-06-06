//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com 
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:           breath_led
// Last modified Date:  2019/6/8 17:25:36
// Last Version:        V1.0
// Descriptions:        �Զ���IP��-������
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2019/6/8 17:25:36
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module breath_led(
    input          sys_clk        , //ʱ���ź�
    input          sys_rst_n      , //��λ�ź�
    input          sw_ctrl        , //�����ƿ��ؿ����ź� 1���� 0:��
    input          set_en         , //���ú�����Ƶ������ʹ���ź�
    input   [9:0]  set_freq_step  , //���ú�����Ƶ�ʱ仯����
    
    output         led              //LED
);

//*****************************************************
//**                  main code
//*****************************************************

//parameter define
parameter  START_FREQ_STEP = 10'd100; //����Ƶ�ʲ�����ʼֵ

//reg define
reg  [15:0]  period_cnt  ;      //���ڼ�����
reg  [9:0]   freq_step   ;      //������Ƶ�ʼ������
reg  [15:0]  duty_cycle  ;      //���øߵ�ƽռ�ձȵļ�����
reg          inc_dec_flag;      //���ڱ�ʾ�ߵ�ƽռ�ձȵļ���ֵ,�ǵ������ǵݼ�
                                //Ϊ1ʱ��ʾռ�ձȵݼ�,Ϊ0ʱ��ʾռ�ձȵ���
//wire define
wire         led_t       ;

//�������źż���ֵ��ռ�ձȼ���ֵ���бȽϣ����������led��PWM�ź�
assign led_t = ( period_cnt <= duty_cycle ) ? 1'b1 : 1'b0 ;
assign led = led_t & sw_ctrl;

//�����źż�������0-50_000֮�����
always @ (posedge sys_clk) begin
    if (!sys_rst_n)
        period_cnt <= 16'd0;
    else if(!sw_ctrl)
        period_cnt <= 16'd0;
    else if( period_cnt == 16'd50_000 )
        period_cnt <= 16'd0;
    else
        period_cnt <= period_cnt + 16'd1;
end

//����Ƶ�ʼ��
always @(posedge sys_clk) begin
    if(!sys_rst_n)
        freq_step <= START_FREQ_STEP;
    else if(set_en) begin
        if(set_freq_step == 0)
            freq_step <= 10'd1;
        else if(set_freq_step >= 10'd1_000)
            freq_step <= 10'd1_000;
        else    
            freq_step <= set_freq_step;
    end        
end

//�趨�ߵ�ƽռ�ձȵļ���ֵ
always @(posedge sys_clk) begin
    if (sys_rst_n == 1'b0) begin
        duty_cycle <= 16'd0;
        inc_dec_flag <= 1'b0;
    end     
    else if(!sw_ctrl) begin          //�����ƿ��عر�ʱ���ź�����
        duty_cycle <= 16'd0;
        inc_dec_flag <= 1'b0;
    end    
    //ÿ�μ�������һ�����ڣ��͵���ռ�ձȼ���ֵ
    else if( period_cnt == 16'd50_000 ) begin
        if( inc_dec_flag ) begin  //ռ�ձȵݼ�
            if( duty_cycle == 16'd0 )     
                inc_dec_flag <= 1'b0;
            else if(duty_cycle < freq_step)
                duty_cycle <= 16'd0;
            else    
                duty_cycle <= duty_cycle - freq_step;
        end
        else begin  //ռ�ձȵ���
            if( duty_cycle >= 16'd50_000 )  
                inc_dec_flag <= 1'b1;
            else
                duty_cycle <= duty_cycle + freq_step;
        end 
    end 
    else  //δ������һ������ʱ��ռ�ձȱ��ֲ���
        duty_cycle <= duty_cycle ;
end
  
endmodule
