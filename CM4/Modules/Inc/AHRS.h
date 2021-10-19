/*
 * AHRS.h
 *
 *  Created on: May 29, 2021
 *      Author: raing
 */

#ifndef INC_AHRS_H_
#define INC_AHRS_H_

#include "main.h"
#define PI  3.141592653589793
#define AHRSIMU_DEG2RAD PI/ 180.0
typedef struct sAHRSDATA
{
	float Roll;        /*!< Roll angle value. This parameter is in units of degrees */
	float Pitch;       /*!< Pitch angle value. This parameter is in units of degrees */
	float Yaw;         /*!< Yaw angle value. This parameter is in units of degrees */
	float Inclination; /*!< Inclination in units of degrees */
	float filteredRoll;        /*!< Roll angle value. This parameter is in units of degrees */
	float filteredPitch;       /*!< Pitch angle value. This parameter is in units of degrees */
	float filteredYaw;         /*!< Yaw angle value. This parameter is in units of degrees */

	float beta;
	float q0;
	float q1;
	float q2;
	float q3;
	float sampleRate;

	float AccData[3], GyroData[3], MagData[3];
}tAHRSDATA;

extern void UpdateAHRS(tAHRSDATA *inputAHRS, float gx, float gy, float gz, float ax, float ay, float az, float mx, float my, float mz);
extern void CalculateAngles(tAHRSDATA *inputAHRS);
extern void initAHRS(tAHRSDATA *imuAHRS);
extern void runAHRSCycle(void);

#endif /* INC_AHRS_H_ */
