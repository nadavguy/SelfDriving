/*
 * LogAgent.c
 *
 *  Created on: Aug 2, 2021
 *      Author: raing
 */

#include "main.h"
#include "fatfs.h"

FATFS FatFs; 	//Fatfs handle
FIL fil; 		//File handle
FRESULT fres; //Result after operations
DWORD free_clusters, free_sectors, total_sectors;

FATFS* getFreeFs;

uint8_t buffer[_MAX_SS];

uint32_t previousLogIndex = 0;

bool isValidLog = false;

char logBuffer[16384];

void initSDCard(void)
{

	//Open the file system
	fres = f_mount(&FatFs, "", 0); //1=mount now
	if (fres != FR_OK)
	{
		//	myprintf("f_mount error (%i)\r\n", fres);
		while(1);
	}


	//  fres = f_mkfs("\\", FM_FAT32, 0, buffer, sizeof(buffer));
	fres = f_getfree("", &free_clusters, &getFreeFs);
	if (fres != FR_OK)
	{
		//	myprintf("f_getfree error (%i)\r\n", fres);
		while(1);
	}

	//Formula comes from ChaN's documentation
	total_sectors = (getFreeFs->n_fatent - 2) * getFreeFs->csize;
	free_sectors = free_clusters * getFreeFs->csize;
}

void newLogFile(void)
{
	fres = f_open(&fil, "Index.txt", FA_READ);
	if (fres != FR_OK)
	{
		fres = f_open(&fil, "Index.txt", FA_WRITE | FA_OPEN_ALWAYS | FA_CREATE_ALWAYS);
		previousLogIndex++;
		char localString[16] = "";
		sprintf(localString, "%06u\t",previousLogIndex);
		uint8_t bytesWrote = 0;
		fres = f_write(&fil, localString, 7, &bytesWrote);
		f_close(&fil);
		sprintf(localString, "LOG_%06u.txt",previousLogIndex);
		fres = f_open(&fil, &localString, FA_WRITE | FA_OPEN_ALWAYS | FA_CREATE_ALWAYS);
		if (fres == FR_OK)
		{
			isValidLog = true;
		}
		else
		{
			isValidLog = false;
		}
	}
}

void closeLogFile(void)
{
	f_sync(&fil);
	f_close(&fil);
}

void writeToLog(void)
{
	if (isValidLog)
	{
		uint8_t bytesWrote = 0;
		fres = f_write(&fil, logBuffer, strlen(logBuffer), &bytesWrote);
	}
}

void monitorLogSize(void)
{

}
