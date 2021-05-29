/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
 * All rights reserved.</center></h2>
 *
 * This software component is licensed by ST under BSD 3-Clause license,
 * the "License"; You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at:
 *                        opensource.org/licenses/BSD-3-Clause
 *
 ******************************************************************************
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "i2c.h"
#include "openamp.h"
#include "spi.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "ImuAgent.h"
#include "memoryManager.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

#ifndef HSEM_ID_0
#define HSEM_ID_0 (0U) /* HW semaphore 0*/
#endif
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define RPMSG_SERVICE_NAME              "openamp_pingpong_demo"
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
tMPU9250 chasisIMU;
tANGLESMESSAGES sentAnglesData;

uint32_t lastIMU1Measurement = 0;

uint32_t message;
volatile int message_received;
volatile unsigned int received_data;

struct rpmsg_endpoint rp_endpoint;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
HSEM_TypeDef * HSEM_DEBUG= HSEM;

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	int32_t status = 0;
  /* USER CODE END 1 */

/* USER CODE BEGIN Boot_Mode_Sequence_1 */
	/*HW semaphore Clock enable*/
	__HAL_RCC_HSEM_CLK_ENABLE();
	/* Activate HSEM notification for Cortex-M4*/
	HAL_HSEM_ActivateNotification(__HAL_HSEM_SEMID_TO_MASK(HSEM_ID_0));
	/*
  Domain D2 goes to STOP mode (Cortex-M4 in deep-sleep) waiting for Cortex-M7 to
  perform system initialization (system clock config, external memory configuration.. )
	 */
	HAL_PWREx_ClearPendingEvent();
	HAL_PWREx_EnterSTOPMode(PWR_MAINREGULATOR_ON, PWR_STOPENTRY_WFE, PWR_D2_DOMAIN);
	/* Clear HSEM flag */
	__HAL_HSEM_CLEAR_FLAG(__HAL_HSEM_SEMID_TO_MASK(HSEM_ID_0));

	HAL_NVIC_ClearPendingIRQ(HSEM2_IRQn);

	/* Add Cortex-M4 user application code here */



/* USER CODE END Boot_Mode_Sequence_1 */
  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_I2C2_Init();
  MX_SPI1_Init();
  /* USER CODE BEGIN 2 */
	/* Inilitize the mailbox use notify the other core on new message */
	MAILBOX_Init();

	if (MX_OPENAMP_Init(RPMSG_REMOTE, NULL)!= HAL_OK)
	{
		Error_Handler();
	}

	/* create a endpoint for rmpsg communication */
	status = OPENAMP_create_endpoint(&rp_endpoint, RPMSG_SERVICE_NAME, RPMSG_ADDR_ANY,
			rpmsg_recv_callback, NULL);
	if (status < 0)
	{
		Error_Handler();
	}

	/* Pingpong application*/
	/* Reveice an interger from the master, incremennt it and send back the result to the master*/
	while (message < 100)
	{
		message = receive_message();
		message++;
		status = OPENAMP_send(&rp_endpoint, &message, sizeof(message));
		if (status < 0)
		{
			Error_Handler();
		}
	}

	chasisIMU.deviceAddress = 0x68<<1;
	chasisIMU.i2cID = hi2c2;
	initMPU(chasisIMU);
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	int16_t AccData[3], GyroData[3], MagData[3];
	MPU9250_GetData(chasisIMU, AccData, MagData, GyroData);

	uint8_t R = 0;
	tAHRSDATA chasisIMUAHRS;
	chasisIMUAHRS.q0 = 1;
	chasisIMUAHRS.q1 = 0;
	chasisIMUAHRS.q2 = 0;
	chasisIMUAHRS.q3 = 0;
	chasisIMUAHRS.sampleRate = 1/20.0;

	while (1)
	{
		if (HAL_GetTick() - lastIMU1Measurement > 50)
		{
			MPU9250_GetData(chasisIMU, AccData, MagData, GyroData);
			chasisIMUAHRS.AccData[0] = 9.80665 * AccData[0] / 16384.0;
			chasisIMUAHRS.AccData[1] = 9.80665 * AccData[1] / 16384.0;
			chasisIMUAHRS.AccData[2] = 9.80665 * AccData[2] / 16384.0;

			chasisIMUAHRS.GyroData[0] = GyroData[0] / 131.0; // Degrees / Sec
			chasisIMUAHRS.GyroData[1] = GyroData[1] / 131.0;
			chasisIMUAHRS.GyroData[2] = GyroData[2] / 131.0;

			chasisIMUAHRS.MagData[0] = MagData[0] * 0.6;
			chasisIMUAHRS.MagData[1] = MagData[1] * 0.6;
			chasisIMUAHRS.MagData[2] = MagData[2] * 0.6;

			UpdateAHRS(&chasisIMUAHRS,
					chasisIMUAHRS.GyroData[0] * AHRSIMU_DEG2RAD, chasisIMUAHRS.GyroData[1] * AHRSIMU_DEG2RAD,
					chasisIMUAHRS.GyroData[2] * AHRSIMU_DEG2RAD,
					chasisIMUAHRS.AccData[0], chasisIMUAHRS.AccData[1], chasisIMUAHRS.AccData[2],
					chasisIMUAHRS.MagData[0], chasisIMUAHRS.MagData[1], chasisIMUAHRS.MagData[2]);
			lastIMU1Measurement = HAL_GetTick();
		}
		sentAnglesData.opCode = 1;
		sentAnglesData.bodyAngles.Pitch = chasisIMUAHRS.Pitch;
		sentAnglesData.bodyAngles.Roll = chasisIMUAHRS.Roll;
		sentAnglesData.bodyAngles.Yaw = chasisIMUAHRS.Yaw;
		sentAnglesData.lidarAngles.Pitch = 45;
		sentAnglesData.lidarAngles.Roll = 46;
		sentAnglesData.lidarAngles.Yaw = 47;
		if (R == 1)
		{
			status = OPENAMP_send(&rp_endpoint,&sentAnglesData, sizeof(sentAnglesData));
		}
		else
		{
			status = OPENAMP_send(&rp_endpoint,&R, sizeof(R));
		}
		R++;
		if (R == 200)
		{
			R = 0;
		}
		HAL_Delay(1);
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	}
  /* USER CODE END 3 */
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */
	__disable_irq();
	while (1)
	{
	}
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
	/* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
