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
#include "dma.h"
#include "eth.h"
#include "fatfs.h"
#include "i2c.h"
#include "openamp.h"
#include "spi.h"
#include "tim.h"
#include "usart.h"
#include "usb_host.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stm32h7xx_hal_rcc.h"
#include "ff.h"

#include "LCD_Test.h"
#include "LCD_1in8.h"
#include "LogoImages.h"
#include "UniqueImages.h"

#include "nrf24.h"
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
#define RPMSG_CHAN_NAME              "openamp_pingpong_demo"
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
tANGLESMESSAGES *receivedAnglesData;

tCURSOR_DATA currentCursorPosition;

uint32_t message = 0;
volatile int message_received;
volatile int service_created;
volatile unsigned int received_data;
struct rpmsg_endpoint rp_endpoint;

float versionID = 1.000;
float buildID = 1.050;

uint8_t nRF24_payload[32];
uint8_t payload_length;
// Pipe number
nRF24_RXResult pipe;
//uint32_t i, j, k;
// Length of received payload

// Result of packet transmission
typedef enum {
    nRF24_TX_ERROR  = (uint8_t)0x00, // Unknown error
    nRF24_TX_SUCCESS,                // Packet has been transmitted successfully
    nRF24_TX_TIMEOUT,                // It was timeout during packet transmit
    nRF24_TX_MAXRT                   // Transmit failed with maximum auto retransmit count
} nRF24_TXResult;

nRF24_TXResult tx_res;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

static void MPU_Config(void);
static void CPU_CACHE_Enable(void);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */
/* USER CODE BEGIN Boot_Mode_Sequence_0 */

/* USER CODE END Boot_Mode_Sequence_0 */

/* USER CODE BEGIN Boot_Mode_Sequence_1 */
	MPU_Config();
	CPU_CACHE_Enable();
//	timeout = 0xFFFF;
	while (__HAL_RCC_GET_FLAG(RCC_FLAG_D2CKRDY) != RESET)
	{
		asm("nop");
	}
	/* Wait until CPU2 boots and enters in stop mode or timeout*/
/* USER CODE END Boot_Mode_Sequence_1 */
  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();
/* USER CODE BEGIN Boot_Mode_Sequence_2 */
	/* When system initialization is finished, Cortex-M7 will release Cortex-M4 by means of
HSEM notification */
	/*HW semaphore Clock enable*/
	__HAL_RCC_HSEM_CLK_ENABLE();
	/*Take HSEM */
	HAL_HSEM_FastTake(HSEM_ID_0);
	/*Release HSEM in order to notify the CPU2(CM4)*/
	HAL_HSEM_Release(HSEM_ID_0,0);
	/* wait until CPU2 wakes up from stop mode */


/* USER CODE END Boot_Mode_Sequence_2 */

  /* USER CODE BEGIN SysInit */
	__HAL_RCC_D2SRAM1_CLK_ENABLE();
//  __HAL_RCC_AHBSRAM1_CLK_ENABLE();
  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_ETH_Init();
  MX_USART3_UART_Init();
  MX_I2C1_Init();
  MX_SPI3_Init();
  MX_TIM1_Init();
  MX_USART1_UART_Init();
  MX_USB_HOST_Init();
  MX_SPI1_Init();
  MX_FATFS_Init();
  MX_SPI2_Init();
  /* USER CODE BEGIN 2 */
	MAILBOX_Init();

	uint8_t initRes = initSDCard();
	if (initRes == (uint8_t)FR_OK)
	{
		createNewLogFile();
	}
	sprintf(terminalBuffer,"Test terminal");
	logData(terminalBuffer, false, false, false);

	/* Initialize the rpmsg endpoint to set default addresses to RPMSG_ADDR_ANY */
	rpmsg_init_ept(&rp_endpoint, RPMSG_CHAN_NAME, RPMSG_ADDR_ANY, RPMSG_ADDR_ANY,
			NULL, NULL);
	/* Initialize OpenAmp and libmetal libraries */
	if (MX_OPENAMP_Init(RPMSG_MASTER, new_service_cb)!= HAL_OK)
	{
		Error_Handler();
	}

	/*
	 * The rpmsg service is initiate by the remote processor, on A7 new_service_cb
	 * callback is received on service creation. Wait for the callback
	 */
//	HAL_Delay(2000);
	OPENAMP_Wait_EndPointready(&rp_endpoint);

	/* Send the massage to the remote CPU */
	int32_t status = OPENAMP_send(&rp_endpoint, &message, sizeof(message));

	if (status < 0)
	{
		Error_Handler();
	}

	//	ssd1306_TestAll();
//	ssd1306_Init();
//	ssd1306_TestBorder();

	uint8_t message = 0;
	while (message < 100)
	{
		/* Receive the massage from the remote CPU */
		message = receive_message();
		status = OPENAMP_send(&rp_endpoint, &message, sizeof(message));
		if (status < 0)
		{
			Error_Handler();
		}
	}



	//	isPortrait = true;
	screenInit();
	screenClear();
	renderCompleteFrame = true;

//	// RX/TX disabled
//	nRF24_CE_L();
//	nRF24_Init();
////	nRF24_SetPowerMode(nRF24_PWR_DOWN);
//
//	if (!nRF24_Check())
//	{
////		UART_SendStr("FAIL\r\n");
//		while (1)
//		{
////			Toggle_LED();
//			Delay_ms(50);
//		}
//	}
//
//
//	// This is simple receiver with one RX pipe:
//	//   - pipe#1 address: '0xE7 0x1C 0xE3'
//	//   - payload: 5 bytes
//	//   - RF channel: 115 (2515MHz)
//	//   - data rate: 250kbps (minimum possible, to increase reception reliability)
//	//   - CRC scheme: 2 byte
//
//	// The transmitter sends a 5-byte packets to the address '0xE7 0x1C 0xE3' without Auto-ACK (ShockBurst disabled)
//
//	// Disable ShockBurst for all RX pipes
//	nRF24_DisableAA(0xFF);
//
//	// Set RF channel
//	nRF24_SetRFChannel(76);
//
//	// Set data rate
//	nRF24_SetDataRate(nRF24_DR_1Mbps);
//
//	// Set CRC scheme
////	nRF24_SetCRCScheme(nRF24_CRC_2byte);
//
//	// Set address width, its common for all pipes (RX and TX)
//	nRF24_SetAddrWidth(5);
//
//	// Configure RX PIPE#1
//	static const uint8_t nRF24_ADDR[] = {0x0, 0x0, 0x0, 0x0, 0x1};//{ 0xE7, 0x1C, 0xE3 };
//	nRF24_SetAddr(nRF24_PIPE1, nRF24_ADDR); // program address for RX pipe #1
//	nRF24_SetRXPipe(nRF24_PIPE1, nRF24_AA_ON, 32); // Auto-ACK: disabled, payload length: 5 bytes
//
//	// Set operational mode (PRX == receiver)
//	nRF24_SetOperationalMode(nRF24_MODE_RX);
//
//	// Wake the transceiver
//	nRF24_SetPowerMode(nRF24_PWR_UP);
//
//	// Put the transceiver to the RX mode
//	nRF24_CE_H();
//
//	while (1)
//	{
//		//
//		// Constantly poll the status of the RX FIFO and get a payload if FIFO is not empty
//		//
//		// This is far from best solution, but it's ok for testing purposes
//		// More smart way is to use the IRQ pin :)
//		//
//		if (nRF24_GetStatus_RXFIFO() != nRF24_STATUS_RXFIFO_EMPTY)
//		{
//			// Get a payload from the transceiver
//			pipe = nRF24_ReadPayload(nRF24_payload, &payload_length);
//
//			// Clear all pending IRQ flags
//			nRF24_ClearIRQFlags();
//		}
//	}

//	initLidar();

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	while (1)
	{
		message = receive_message();
		screenUpdate(true);
		displayNextFrame();
		message = 0;

		monitorLogSize();
		sprintf(terminalBuffer,"Test terminal");
		logData(terminalBuffer, false, false, false);

		/* Send the massage to the remote CPU */
//		status = OPENAMP_send(&rp_endpoint, &message, sizeof(message));
//		ssd1306_SetCursor(0, 0);
//		ssd1306_WriteString(localT, Font_7x10, White);
//		ssd1306_UpdateScreen();

    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	}
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Supply configuration update enable
  */
  HAL_PWREx_ConfigSupply(PWR_DIRECT_SMPS_SUPPLY);
  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE3);

  while(!__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY)) {}
  /** Macro to configure the PLL clock source
  */
  __HAL_RCC_PLL_PLLSOURCE_CONFIG(RCC_PLLSOURCE_HSE);
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_BYPASS;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 18;
  RCC_OscInitStruct.PLL.PLLP = 2;
  RCC_OscInitStruct.PLL.PLLQ = 2;
  RCC_OscInitStruct.PLL.PLLR = 2;
  RCC_OscInitStruct.PLL.PLLRGE = RCC_PLL1VCIRANGE_3;
  RCC_OscInitStruct.PLL.PLLVCOSEL = RCC_PLL1VCOMEDIUM;
  RCC_OscInitStruct.PLL.PLLFRACN = 6144;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2
                              |RCC_CLOCKTYPE_D3PCLK1|RCC_CLOCKTYPE_D1PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.SYSCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB3CLKDivider = RCC_APB3_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_APB1_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_APB2_DIV2;
  RCC_ClkInitStruct.APB4CLKDivider = RCC_APB4_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */
/**
 * @brief  CPU L1-Cache enable.
 * @param  None
 * @retval None
 */
static void CPU_CACHE_Enable(void)
{
	/* Enable I-Cache */
	SCB_EnableICache();

	/* Enable D-Cache */
	SCB_EnableDCache();
}

/**
 * @brief  Configure the MPU attributes as Not cacheable for D3 SRAM.
 * @note   The Base Address is D3_SRAM_BASE.
 *         The Region Size is 64KB.
 * @param  None
 * @retval None
 */
static void MPU_Config(void)
{
	MPU_Region_InitTypeDef MPU_InitStruct;

	/* Disable the MPU */
	HAL_MPU_Disable();

	/* Configure the MPU attributes as WT for SDRAM */
	MPU_InitStruct.Enable = MPU_REGION_ENABLE;
	MPU_InitStruct.BaseAddress = D3_SRAM_BASE;
	MPU_InitStruct.Size = MPU_REGION_SIZE_64KB;
	MPU_InitStruct.AccessPermission = MPU_REGION_FULL_ACCESS;
	MPU_InitStruct.IsBufferable = MPU_ACCESS_NOT_BUFFERABLE;
	MPU_InitStruct.IsCacheable = MPU_ACCESS_NOT_CACHEABLE;
	MPU_InitStruct.IsShareable = MPU_ACCESS_SHAREABLE;
	MPU_InitStruct.Number = MPU_REGION_NUMBER0;
	MPU_InitStruct.TypeExtField = MPU_TEX_LEVEL0;
	MPU_InitStruct.SubRegionDisable = 0x00;
	MPU_InitStruct.DisableExec = MPU_INSTRUCTION_ACCESS_ENABLE;

	HAL_MPU_ConfigRegion(&MPU_InitStruct);

	/* Enable the MPU */
	HAL_MPU_Enable(MPU_PRIVILEGED_DEFAULT);
}

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
