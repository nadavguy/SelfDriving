/*
 * ImuAgent.h
 *
 *  Created on: May 20, 2021
 *      Author: raing
 */

#ifndef INC_IMUAGENT_H_
#define INC_IMUAGENT_H_

#define IMU1_CS_PIN GPIO_PIN_1
#define IMU1_CS_Port GPIOB

typedef struct sMPU9250
{
	I2C_HandleTypeDef i2cID;
	uint8_t deviceAddress;
}tMPU9250;

extern uint8_t initMPU(tMPU9250 mpuToInit);
//extern uint8_t spiTransmitData(tMPU9250 mpuToInit,uint8_t regAddress, uint8_t dataToTrasmit);
//extern uint8_t writeAK8963Register(tMPU9250 mpuToInit,uint8_t regAddress, uint8_t dataToTrasmit);
//extern uint8_t readAK8963Register(tMPU9250 mpuToInit, uint8_t regAddress, uint8_t dataLength, uint8_t* dataToRead);
//extern uint8_t spiReceiveData(tMPU9250 mpuToInit,uint8_t regAddress, uint8_t dataLength, uint8_t* dataToRead);
#endif /* INC_IMUAGENT_H_ */
