/*
 * MotorAgent.h
 *
 *  Created on: Jul 19, 2021
 *      Author: raing
 */

#ifndef INC_MOTORAGENT_H_
#define INC_MOTORAGENT_H_

#define MOTORTIM htim3
#define RBMOTOR TIM_CHANNEL_1
#define LBMOTOR TIM_CHANNEL_2
#define RFMOTOR TIM_CHANNEL_3
#define LFMOTOR TIM_CHANNEL_4

enum MovementPattern
{
    FORWARD,
    BACKWARD,
    ROTATERIGHT,
	ROTATELEFT,
	BRAKE
};

extern uint8_t currentPattern;
extern uint8_t currentAggregatedRBMotor;

extern void brakeMotors(void);
extern void forwardMotors(void);
extern void reverseMotors(void);
#endif /* INC_MOTORAGENT_H_ */
