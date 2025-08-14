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
#include "AXI_DMA.h"
#include "ps_pl_axi4.h"

#define SysTick_Frequency   222222222  //SysTickʱ��Ƶ��222MHz
extern void Lwip_Receive_thread(void *p);/* ��̫�����ݽ��մ������� */
extern QueueHandle_t Lwip_Receive_Queue;/* ��̫�����ݽ��ն��� */
extern QueueHandle_t Lwip_Send_Queue;/* ��̫�����ݽ��ն��� */
extern QueueHandle_t PS_AXI_TO_PL_Queue;/* PS���͵�PL���� */
extern QueueHandle_t PL_AXI_TO_PS_Queue;/* PL���͵�PS���� */

extern XScuGic xInterruptController;// ����FreeRTOS�ѳ�ʼ�����жϿ�����

#endif /* SRC_MAIN_H_ */
