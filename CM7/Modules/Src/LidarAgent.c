/*
 * LidarAgent.c
 *
 *  Created on: Jun 12, 2021
 *      Author: raing
 */

#include "main.h"
#include "usart.h"
//#include "usbd_cdc_if.h"

//uint8_t lidarRXArray2[115200] = {0};
__attribute__((section (".RAM_D2"))) uint8_t fullResArray[115200] = {0};

uint8_t lidarRXArray[14400] = {0};
uint8_t lidarTXArray[64] = {0};

void initLidar(void)
{
//	HAL_UART_Receive_DMA(&huart3, lidarRXArray, sizeof(lidarRXArray));

}

void requestLidarDeviceInfo(void)
{
	lidarTXArray[0] = 0xA5;
	lidarTXArray[1] = 0x50;
//	HAL_UART_Transmit(&huart3, lidarTXArray, 2, 20);
//	CDC_Transmit_FS(lidarTXArray, 2);
}

//void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
//{
//	uint8_t localLidarRXArray[14400] = {0};
//	memcpy(localLidarRXArray, lidarRXArray, sizeof(lidarRXArray));
//
//	parseLidarMessage((uint8_t *)localLidarRXArray);
//
//	HAL_UART_Receive_DMA(&huart3, lidarRXArray, sizeof(lidarRXArray));
//}


void parseLidarMessage(void)
{
//	getFromUSB();
}
