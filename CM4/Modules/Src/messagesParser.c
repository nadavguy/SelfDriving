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
		case (1):
		{
			int a = 1;
#ifdef CORE_CM7
			memcpy(receivedAnglesData, receivedDataPointer, sizeof(tANGLESMESSAGE));
#endif
		}
		default:
		{

		}
	}
}
