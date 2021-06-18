/*
 * LidarAgent.h
 *
 *  Created on: Jun 12, 2021
 *      Author: raing
 */

#ifndef INC_LIDARAGENT_H_
#define INC_LIDARAGENT_H_

#include "main.h"

__attribute__((section (".RAM_D2"))) extern uint8_t fullResArray[115200];

extern uint8_t lidarRXArray[14400];
extern uint8_t lidarTXArray[64];

extern void initLidar(void);
extern void requestLidarDeviceInfo(void);
extern void parseLidarMessage(void);

#endif /* INC_LIDARAGENT_H_ */
