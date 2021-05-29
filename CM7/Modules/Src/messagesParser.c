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
			int a= 1;
			memcpy(receivedAnglesData, (uint32_t *)receivedDataPointer, sizeof(tANGLESMESSAGES));
		}
		default:
		{

		}
	}
}
