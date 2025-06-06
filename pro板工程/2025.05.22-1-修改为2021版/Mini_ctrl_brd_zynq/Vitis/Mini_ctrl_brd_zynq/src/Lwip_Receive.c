#include "Lwip_Receive.h"


uint8_t Lwip_Receive_buf[20];

void Lwip_Receive_function()
{
	int n=0;//n为接收数据数
	n=Lwip_Receive_buf[0];//n为接收数据数
	uint8_t Tx_Axi_buf[20]={0};
	printf("%s\n","Received data");
	printf("%s\n",&Lwip_Receive_buf[1]);
	printf("%d\n",n);

//	if (n == 6 && !(memcmp("update",&Lwip_Receive_buf[1], 6)))
//	{
//		printf("%s\n","update received data");
//	}
//	else
//	{
//		for(int i=1;i<(n+1);i++)
//		{
//			printf("%x\n",Lwip_Receive_buf[i]);
//		}
//	}
//	strcpy(Lwip_Send_buf, "Received data");


	if(Lwip_Receive_buf[1]==0xAB)
	{
		Tx_Axi_buf[0]=Lwip_Receive_buf[1];
		Tx_Axi_buf[1]=Lwip_Receive_buf[2];
		switch(Lwip_Receive_buf[2])
		{
			case 0x01://舵机
				if(Lwip_Receive_buf[3]==0x01)//ping舵机
				{
				  Tx_Axi_buf[2]=0X01;
				  Tx_Axi_buf[3]=Lwip_Receive_buf[4];
				  Tx_Axi_buf[4]=0X00;
				}
				else if(Lwip_Receive_buf[2]==0x08)//角度控制
				{
					  Tx_Axi_buf[2]=0X08;
					  Tx_Axi_buf[3]=Lwip_Receive_buf[4];
					  Tx_Axi_buf[4]=0X00;
				}
				else if(Lwip_Receive_buf[2]==0x0A)//查询
				{
					  Tx_Axi_buf[2]=0X0A;
					  Tx_Axi_buf[3]=Lwip_Receive_buf[4];
					  Tx_Axi_buf[4]=0X00;
				}
				break;

			case 0x02://状态灯
				if(Lwip_Receive_buf[3]==0x00)//写状态灯
				{
					  Tx_Axi_buf[2]=0X00;
					  Tx_Axi_buf[3]=Lwip_Receive_buf[5];
					  Tx_Axi_buf[4]=0X00;
				}
				else if(Lwip_Receive_buf[3]==0x01)//读状态灯
				{
					  Tx_Axi_buf[2]=0X01;
					  Tx_Axi_buf[3]=0X00;
					  Tx_Axi_buf[4]=0X00;
				}
				break;

			case 0x03://温湿度传感器
				  Tx_Axi_buf[2]=0X00;
				  Tx_Axi_buf[3]=0X00;
				  Tx_Axi_buf[4]=0X00;
				break;

			case 0x04://角度传感器

				break;

			case 0x05://显示屏
				  Tx_Axi_buf[2]=0X01;
				  Tx_Axi_buf[3]=Lwip_Receive_buf[5];
				  Tx_Axi_buf[4]=0X00;
				break;

			case 0x06://继电器
				if(Lwip_Receive_buf[3]==0x00)//写继电器
				{
					Tx_Axi_buf[2]=0X00;
					Tx_Axi_buf[3]=Lwip_Receive_buf[5];
					Tx_Axi_buf[4]=0X00;
				}
				else if(Lwip_Receive_buf[3]==0x01)//读继电器
				{
					Tx_Axi_buf[2]=0X01;
					Tx_Axi_buf[3]=0X00;
					Tx_Axi_buf[4]=0X00;
				}
				break;

			case 0x07://相机控制

				break;

			case 0x08://转台
				Tx_Axi_buf[2]=0X00;
				Tx_Axi_buf[3]=0X00;
				Tx_Axi_buf[4]=0X00;
				break;

			default:
				break;
		}
	    xQueueSend(PS_AXI_TO_PL_Queue,Tx_Axi_buf,0);
	}
	memset(Lwip_Receive_buf,0,20);
	memset(Tx_Axi_buf,0,20);
}

