#ifndef SRC_MAIN_H_
#define SRC_MAIN_H_

#include <sleep.h>
#include "netif/xadapter.h"
#include "platform_config.h"
#include "xil_printf.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "lwip/dhcp.h"
#include "xtime_l.h"
#include "xuartps.h"        // Xilinx UART������
#include "xil_printf.h"     // ���������
#include "xparameters.h"
#include "xscutimer.h"
#include "xscugic.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "Lwip_Receive.h"
#include "Pro_FPGA_ctrl.h"

#define SysTick_Frequency   222222222  //SysTickʱ��Ƶ��222MHz
extern void Lwip_Receive_thread(void *p);/* ��̫�����ݽ��մ������� */
extern QueueHandle_t Lwip_Receive_Queue;/* ��̫�����ݽ��ն��� */
extern QueueHandle_t Lwip_Send_Queue;/* ��̫�����ݽ��ն��� */
extern QueueHandle_t PS_AXI_TO_PL_Queue;/* PS���͵�PL���� */
extern QueueHandle_t PL_AXI_TO_PS_Queue;/* PL���͵�PS���� */

#define K14 54 //���ӵ� EMIO0
#define J14 55 //���ӵ� EMIO1
#define L16 56 //���ӵ� EMIO2
#define L17 57 //���ӵ� EMIO3
#define P19 58 //���ӵ� EMIO4
#define N18 59 //���ӵ� EMIO5
#define V8  60 //���ӵ� EMIO6
#define V7  61 //���ӵ� EMIO7
#define U7  62 //���ӵ� EMIO8
#define U5  63 //���ӵ� EMIO9
#define T5  64 //���ӵ� EMIO10
#define N20 65 //���ӵ� EMIO11
#define P20 66 //���ӵ� EMIO12
#define L20 67 //���ӵ� EMIO13
#define A20 68 //���ӵ� EMIO14
#define F16 69 //���ӵ� EMIO15
#define N15 70 //���ӵ� EMIO16
#define L14 71 //���ӵ� EMIO17
#define L15 72 //���ӵ� EMIO18
#define N17 73 //���ӵ� EMIO19
#define P18 74 //���ӵ� EMIO20
#define R19 75 //���ӵ� EMIO21
#define R17 76 //���ӵ� EMIO22
#define R16 77 //���ӵ� EMIO23
#define P16 78 //���ӵ� EMIO24
#define U20 79 //���ӵ� EMIO25
#define K19 80 //���ӵ� EMIO26
#define J19 81 //���ӵ� EMIO27
#define G19 82 //���ӵ� EMIO28
#define G20 83 //���ӵ� EMIO29
#define J20 84 //���ӵ� EMIO30
#define H20 85 //���ӵ� EMIO31


#define J_IN3 		   K14 //���ӵ� EMIO0
#define J_IN2 		   J14 //���ӵ� EMIO1
#define J_IN1 		   L16 //���ӵ� EMIO2
#define J_IN4 		   L17 //���ӵ� EMIO3
#define EM_P19 		   P19 //���ӵ� EMIO4
#define EM_N18 		   N18 //���ӵ� EMIO5
#define X_CS 		   V8 //���ӵ� EMIO6
#define X_DC 		   V7 //���ӵ� EMIO7
#define X_RES 		   U7 //���ӵ� EMIO8
#define X_SDA 		   U5 //���ӵ� EMIO9
#define X_SCL 		   T5 //���ӵ� EMIO10
#define R_SIGNAL 	   N20 //���ӵ� EMIO11
#define DIR_R_SIGNAL   P20 //���ӵ� EMIO12
#define EM_L20 		   L20 //���ӵ� EMIO13
#define EM_A20 		   A20 //���ӵ� EMIO14
#define MA_RX		   F16 //���ӵ� EMIO15
#define MA_TX		   N15 //���ӵ� EMIO16
#define SLO_RX		   L14 //���ӵ� EMIO17
#define SLO_TX		   L15 //���ӵ� EMIO18
#define AM2302_1_SDA   N17 //���ӵ� EMIO19
#define AM2302_2_SDA   P18 //���ӵ� EMIO20
#define AM2302_3_SDA   R19 //���ӵ� EMIO21
#define DIR_AM2302_1   R17 //���ӵ� EMIO22
#define DIR_AM2302_2   R16 //���ӵ� EMIO23
#define DIR_AM2302_3   P16 //���ӵ� EMIO24
#define TRIGER_OUT_3V3 U20 //���ӵ� EMIO25
#define T1			   K19 //���ӵ� EMIO26
#define T2 			   J19 //���ӵ� EMIO27
#define R1 			   G19 //���ӵ� EMIO28
#define R2 			   G20 //���ӵ� EMIO29
#define DIR_T 		   J20 //���ӵ� EMIO30
#define DIR_R 		   H20 //���ӵ� EMIO31
#define GY_25_TX 	   86 //���ӵ� EMIO32
#define GY_25_RX 	   87 //���ӵ� EMIO33



extern XScuGic xInterruptController;// ����FreeRTOS�ѳ�ʼ�����жϿ�����

#endif /* SRC_MAIN_H_ */
