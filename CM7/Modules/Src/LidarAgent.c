/*
 * LidarAgent.c
 *
 *  Created on: Jun 12, 2021
 *      Author: raing
 */

#include "main.h"


//uint8_t lidarRXArray[115200] = {0};
//uint8_t lidarRXArray2[115200] = {0};
__attribute__((section (".RAM_D2"))) uint8_t lidarRXArray[115200] = {0};

uint8_t lidarTXArray[64] = {0};

void initLidar(void)
{
//	lidarRXArray[0] = 0xff;
	lidarRXArray[0] = 0xff;
}
