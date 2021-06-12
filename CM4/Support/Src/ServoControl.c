/*
 * ServoControl.c
 *
 *  Created on: Jun 11, 2021
 *      Author: raing
 */


#include "main.h"
#include "tim.h"

tSERVO chasisServo;
tSERVO lidarServo;

void initServo(tSERVO servoToInit, TIM_HandleTypeDef htimToInit, uint32_t ChannelToInit, TIM_TypeDef *TIMToInit)
{
	servoToInit.htim = htimToInit;
	servoToInit.ChannelID = ChannelToInit;
	servoToInit.TIM = TIMToInit;
}

void startPWM(tSERVO servoToStart, uint32_t pwmValue)
{
	if (servoToStart.ChannelID == 1)
	{
		servoToStart.TIM->CCR1 = pwmValue;
	}
	else if (servoToStart.ChannelID == 2)
	{
		servoToStart.TIM->CCR2 = pwmValue;
	}
	HAL_TIM_PWM_Start(&servoToStart.htim, servoToStart.ChannelID);
}

void stopPWM(tSERVO servoToStop)
{
	HAL_TIM_PWM_Stop(&servoToStop.htim, servoToStop.ChannelID);
}

void updatePWM(tSERVO servoToUpdate, uint32_t pwmValue)
{
	if (servoToUpdate.ChannelID == 1)
	{
		servoToUpdate.TIM->CCR1 = pwmValue;
	}
	else if (servoToUpdate.ChannelID == 2)
	{
		servoToUpdate.TIM->CCR2 = pwmValue;
	}
}
