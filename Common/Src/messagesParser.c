/*
 * messagesParser.c
 *
 *  Created on: May 28, 2021
 *      Author: raing
 */

#include "main.h"

void parseRecievedMessages(uint8_t opCode)
{
	switch (opCode)
	{
#ifdef CORE_CM7
		case (1):
		{
			int a = 1;
			memcpy(receivedAnglesData, (uint32_t *)receivedDataPointer, sizeof(tANGLESMESSAGES));
			char localT[32] = "";
			snprintf(localT,sizeof(localT),"R: %3.3f, P: %3.3f, Y: %3.3f", receivedAnglesData->bodyAngles.Roll,
					receivedAnglesData->bodyAngles.Pitch,receivedAnglesData->bodyAngles.Yaw);
			ssd1306_SetCursor(0, 12);
			ssd1306_WriteString(localT, Font_7x10, White);
			ssd1306_UpdateScreen();
		}
#endif
		default:
		{

		}
	}
}
