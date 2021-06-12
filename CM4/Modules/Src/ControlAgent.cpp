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

void initPIDs(void)
{

}

void updatePIDs(void)
{
	pitchPID.updateCycle(chasisIMUAHRS.Pitch);
	rollPID.updateCycle(chasisIMUAHRS.Roll);
}
