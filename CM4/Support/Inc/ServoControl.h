/*
 * ServoControl.h
 *
 *  Created on: Jun 11, 2021
 *      Author: raing
 */

#ifndef INC_SERVOCONTROL_H_
#define INC_SERVOCONTROL_H_

#include "main.h"

typedef struct sSERVO
{
	TIM_HandleTypeDef htim;
	uint32_t ChannelID;
	TIM_TypeDef *TIM;
}tSERVO;

extern tSERVO chasisServo;
extern tSERVO lidarServo;

extern void initServo(tSERVO *servoToInit, TIM_HandleTypeDef htimToInit, uint32_t ChannelToInit, TIM_TypeDef *TIMToInit);
extern void startPWM(tSERVO servoToStart, uint32_t pwmValue);
extern void stopPWM(tSERVO servoToStop);
extern void updatePWM(tSERVO servoToUpdate, uint32_t pwmValue);

#endif /* INC_SERVOCONTROL_H_ */
