/*
 * messagesParser.c
 *
 *  Created on: May 28, 2021
 *      Author: raing
 */

#include "main.h"
#ifdef CORE_CM7
#include "GUI_Paint.h"
#endif

void parseRecievedMessages(uint8_t opCode)
{
	switch (opCode)
	{
#ifdef CORE_CM7
		case (1):
		{
			memcpy(receivedAnglesData, (uint32_t *)receivedDataPointer, sizeof(tANGLESMESSAGES));

//			ssd1306_SetCursor(0, 12);
//			ssd1306_WriteString(localT, Font_7x10, White);
//			ssd1306_UpdateScreen();
		}
#endif
		default:
		{

		}
	}
}
