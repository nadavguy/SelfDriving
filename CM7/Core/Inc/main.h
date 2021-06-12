/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32h7xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "openamp.h"
#include "mbox_hsem.h"
//#include "stm32h745i_discovery.h"
#include "stm32h7xx_hal_rcc.h"

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stddef.h>
#include <errno.h>
#include <math.h>

#include "ssd1306.h"
#include "ssd1306_conf.h"
#include "ssd1306_fonts.h"
#include "ssd1306_tests.h"
#include "memoryManager.h"
#include "messagesParser.h"

#include "fonts.h"


#include "MenuHelper.h"
#include "ItemHelper.h"
#include "PopupHelper.h"
#include "FrameHelper.h"
#include "ScreenAgent.h"

#include "LidarAgent.h"
/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */
extern tANGLESMESSAGES *receivedAnglesData;

extern float versionID;
extern float buildID;
/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */
#define PI  3.141592653589793
#define AHRSIMU_DEG2RAD PI/ 180.0
/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LD1_Pin GPIO_PIN_0
#define LD1_GPIO_Port GPIOB
#define SPI3_MOSI___LCD_Pin GPIO_PIN_2
#define SPI3_MOSI___LCD_GPIO_Port GPIOB
#define TIM1_CH1___LCD_Brightness_Pin GPIO_PIN_9
#define TIM1_CH1___LCD_Brightness_GPIO_Port GPIOE
#define TIM1_CH2___LIDAR_motor_ctrl_Pin GPIO_PIN_11
#define TIM1_CH2___LIDAR_motor_ctrl_GPIO_Port GPIOE
#define LD3_Pin GPIO_PIN_14
#define LD3_GPIO_Port GPIOB
#define STLINK_RX_Pin GPIO_PIN_8
#define STLINK_RX_GPIO_Port GPIOD
#define STLINK_TX_Pin GPIO_PIN_9
#define STLINK_TX_GPIO_Port GPIOD
#define USB_OTG_FS_PWR_EN_Pin GPIO_PIN_10
#define USB_OTG_FS_PWR_EN_GPIO_Port GPIOD
#define GPIO___LCD_CS_Pin GPIO_PIN_6
#define GPIO___LCD_CS_GPIO_Port GPIOG
#define GPIO___LCD_DC_Pin GPIO_PIN_8
#define GPIO___LCD_DC_GPIO_Port GPIOG
#define SPI3_SCK___LCD_Pin GPIO_PIN_10
#define SPI3_SCK___LCD_GPIO_Port GPIOC
#define I2C1_SDA___ChassisMPU_Pin GPIO_PIN_7
#define I2C1_SDA___ChassisMPU_GPIO_Port GPIOB
#define I2C1_SCL___ChassisMPU_Pin GPIO_PIN_8
#define I2C1_SCL___ChassisMPU_GPIO_Port GPIOB
#define LD2_Pin GPIO_PIN_1
#define LD2_GPIO_Port GPIOE
/* USER CODE BEGIN Private defines */
extern uint32_t message;
extern volatile int message_received;
extern volatile int service_created;
extern volatile unsigned int received_data;
extern struct rpmsg_endpoint rp_endpoint;

extern tCURSOR_DATA currentCursorPosition;
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
