/*
 * MotorAgent.c
 *
 *  Created on: Jul 19, 2021
 *      Author: raing
 */

#include "main.h"

uint8_t currentPattern = BRAKE;
uint8_t requestedPattern = BRAKE;
uint32_t movementDuraion = 0;
uint8_t currentAggregatedRBMotor = 0;
uint8_t previousAggregatedRBMotor = 0;

uint16_t motorsSpeed = 200;

void initMotors(void)
{
	//Right Back Motor
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10, RESET);
	HAL_GPIO_WritePin(GPIOF, GPIO_PIN_15, RESET);

	MOTORTIM.Instance->CCR1 = 0;
	MOTORTIM.Instance->CCR2 = 0;
	MOTORTIM.Instance->CCR3 = 0;
	MOTORTIM.Instance->CCR4 = 0;

	HAL_TIM_PWM_Start_IT(&MOTORTIM, RBMOTOR);
	HAL_TIM_PWM_Start_IT(&MOTORTIM, LBMOTOR);
	HAL_TIM_PWM_Start_IT(&MOTORTIM, RFMOTOR);
	HAL_TIM_PWM_Start_IT(&MOTORTIM, LFMOTOR);
}

void setMotorsSpeed(uint16_t speed)
{
	MOTORTIM.Instance->CCR1 = speed * 10;
	MOTORTIM.Instance->CCR2 = speed * 10;
	MOTORTIM.Instance->CCR3 = speed * 10;
	MOTORTIM.Instance->CCR4 = speed * 10;
}

void updateMotors(void)
{
	bool localCondition = true;
	while(localCondition)
	{
		if (currentPattern != requestedPattern)
		{
			if (requestedPattern == BRAKE)
			{
				brakeMotors();
			}
			else if (requestedPattern == FORWARD)
			{
				forwardMotors();
			}
			else if (requestedPattern == BACKWARD)
			{
				reverseMotors();
			}
		}
	}
}

void brakeMotors(void)
{
	setMotorsSpeed(0);
	//Right Back Motor
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10, RESET);
	HAL_GPIO_WritePin(GPIOF, GPIO_PIN_15, RESET);
}

void forwardMotors(void)
{
	//Right Back Motor
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10, SET);
	HAL_GPIO_WritePin(GPIOF, GPIO_PIN_15, RESET);
	setMotorsSpeed(20);
}

void reverseMotors(void)
{
	//Right Back Motor
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10, RESET);
	HAL_GPIO_WritePin(GPIOF, GPIO_PIN_15, SET);
	setMotorsSpeed(20);
}
