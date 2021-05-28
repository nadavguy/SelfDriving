/*
 * ImuAgent.h
 *
 *  Created on: May 20, 2021
 *      Author: raing
 */

#ifndef INC_MEMORYMANAGER_H_
#define INC_MEMORYMANAGER_H_

#include "main.h"

typedef struct sRPYANGLES
{
	float Roll;
	float Pitch;
	float Yaw;
}tRPYANGLES;

typedef struct sANGLESDATA
{
	uint8_t opCode;
	tRPYANGLES bodyAngles;
	tRPYANGLES lidarAngles;

}tANGLESDATA;

extern uint32_t receivedDataPointer;

extern int rpmsg_recv_callback(struct rpmsg_endpoint *ept, void *data, size_t len, uint32_t src, void *priv);
extern unsigned int receive_message(void);
extern void service_destroy_cb(struct rpmsg_endpoint *ept);
extern void new_service_cb(struct rpmsg_device *rdev, const char *name, uint32_t dest);


#endif /* INC_IMUAGENT_H_ */
