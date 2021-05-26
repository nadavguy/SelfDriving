/*
 * ImuAgent.c
 *
 *  Created on: May 20, 2021
 *      Author: raing
 */

#include "main.h"
#include "i2c.h"

uint8_t initMPU(tMPU9250 mpuToInit)
{
//	uint16_t DevAddress = mpuToInit.deviceAddress;
//	uint16_t MemAddress = 0x6B;
//	uint8_t _buffer[1] = {0x01};
//	HAL_I2C_Mem_Write(&hi2c2, DevAddress, MemAddress, 1, _buffer, 1, HAL_MAX_DELAY);
//	MemAddress = 0x6A;
//	_buffer[0] = 0x20;
//	HAL_I2C_Mem_Write(&hi2c2, DevAddress, MemAddress, 1, _buffer, 1, HAL_MAX_DELAY);
//	MemAddress = 0x24;
//	_buffer[0] = 0x0D;
//	HAL_I2C_Mem_Write(&hi2c2, DevAddress, MemAddress, 1, _buffer, 1, HAL_MAX_DELAY);
//	HAL_I2C_Mem_Read(&hi2c2, DevAddress, 0x75, 1, _buffer, 1, HAL_MAX_DELAY);
	uint8_t ret = 0;
	ret = MPU9250_Init(mpuToInit);
	return ret;
}

//uint8_t spiTransmitData(tMPU9250 mpuToInit,uint8_t regAddress, uint8_t dataToTrasmit)
//{
//	HAL_GPIO_WritePin(mpuToInit.gpioPort, mpuToInit.gpioPin, GPIO_PIN_RESET);
//	HAL_SPI_Transmit(&mpuToInit.spiID, &regAddress, 1, HAL_MAX_DELAY);
//	HAL_SPI_Transmit(&mpuToInit.spiID, &dataToTrasmit, 1, HAL_MAX_DELAY);
//	HAL_GPIO_WritePin(mpuToInit.gpioPort, mpuToInit.gpioPin, GPIO_PIN_SET);
//	return 0;
//}
//
//uint8_t writeAK8963Register(tMPU9250 mpuToInit,uint8_t regAddress, uint8_t dataToTrasmit)
//{
//	spiTransmitData(mpuToInit, 0x25, 0x0C);
//	spiTransmitData(mpuToInit, 0x26, regAddress);
//	spiTransmitData(mpuToInit, 0x63, dataToTrasmit);
//	spiTransmitData(mpuToInit, 0x27, 0x81);
//
//	uint8_t readDataBuffer[21];
//	readAK8963Register(mpuToInit, regAddress, 1, readDataBuffer);
//
//	return 0;
//}
//uint8_t readAK8963Register(tMPU9250 mpuToInit, uint8_t regAddress, uint8_t dataLength, uint8_t* dataToRead)
//{
//	spiTransmitData(mpuToInit, 0x25, 0x8C);
//	spiTransmitData(mpuToInit, 0x26, regAddress);
//	spiTransmitData(mpuToInit, 0x27,(uint8_t)(0x80 + dataLength));
//	HAL_Delay(1);
//	spiReceiveData(mpuToInit, regAddress, dataLength, dataToRead);
//
//	return 0;
//}
//
//uint8_t spiReceiveData(tMPU9250 mpuToInit,uint8_t regAddress, uint8_t dataLength, uint8_t* dataToRead)
//{
//	HAL_GPIO_WritePin(mpuToInit.gpioPort, mpuToInit.gpioPin, GPIO_PIN_RESET);
//	HAL_SPI_Transmit(&mpuToInit.spiID, (uint8_t *)(0x80 | regAddress), 1, HAL_MAX_DELAY);
//
//	for (int i = 0 ; i < dataLength ; i++)
//	{
//		HAL_SPI_Receive(&mpuToInit.spiID, &dataToRead[i], 1, HAL_MAX_DELAY);
//	}
//	HAL_GPIO_WritePin(mpuToInit.gpioPort, mpuToInit.gpioPin, GPIO_PIN_SET);
//	return 0;
//}
