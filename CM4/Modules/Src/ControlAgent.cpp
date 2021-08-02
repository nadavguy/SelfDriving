/*
 * ControlAgent.cpp
 *
 *  Created on: Jun 10, 2021
 *      Author: raing
 */

#include "main.h"
#include "PIDController.h"

PIDController pitchPID(0, 0.5, 0, 0);
PIDController rollPID(0, 0.5, 0, 0);

uint32_t lastPWMUpdate = 0;

void initPIDs(void)
{

}

void updatePIDs(void)
{
	pitchPID.updateCycle(chasisIMUAHRS.Pitch);
	rollPID.updateCycle(chasisIMUAHRS.Roll);
	if (HAL_GetTick() - lastPWMUpdate > 50)
	{
		float rollOutput = rollPID.getOutput();
		uint32_t currentPWM = TIM2->CCR1;
		uint32_t newPWM = (uint32_t)(currentPWM - 10 * (int (rollOutput)));
		if (newPWM < 500)
		{
			newPWM = 500;
		}
		else if (newPWM > 2500)
		{
			newPWM = 2500;
		}
		updatePWM(chasisServo, newPWM);
		lastPWMUpdate = HAL_GetTick();
	}
}
