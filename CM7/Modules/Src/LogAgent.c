/*
 * LogAgent.c
 *
 *  Created on: Aug 2, 2021
 *      Author: raing
 */

#include "main.h"
#include "fatfs.h"
#include "ff.h"

FATFS FatFs; 	//Fatfs handle
FIL fil; 		//File handle
FRESULT fres; //Result after operations
DWORD free_clusters, free_sectors, total_sectors;

FATFS* getFreeFs;

uint8_t buffer[_MAX_SS];
uint8_t FileReadBuffer[1024] = {0};

uint32_t previousLogIndex = 0;
uint32_t lastFileSizeCheck = 0;

bool isValidLog = false;

char currentLogFilename[64] = "";
char logBuffer[16384];

uint8_t initSDCard(void)
{

	//Open the file system
	fres = f_mount(&FatFs, "", 0); //1=mount now
	if (fres != FR_OK)
	{
		//	myprintf("f_mount error (%i)\r\n", fres);
		return (uint8_t)fres;
	}


	//  fres = f_mkfs("\\", FM_FAT32, 0, buffer, sizeof(buffer));
	fres = f_getfree("", &free_clusters, &getFreeFs);
	if (fres != FR_OK)
	{
		//	myprintf("f_getfree error (%i)\r\n", fres);
		return (uint8_t)fres;
	}

	//Formula comes from ChaN's documentation
	total_sectors = (getFreeFs->n_fatent - 2) * getFreeFs->csize;
	free_sectors = free_clusters * getFreeFs->csize;
	return (uint8_t)fres;
}

void createNewLogFile(void)
{
	unsigned int BytesWritten = 0;
	unsigned int BytesRead = 0;
	char localIndex[6] = "";

	fres = f_open(&fil, "Index.txt", FA_READ);
	fres = f_read(&fil, &FileReadBuffer, sizeof(FileReadBuffer), &BytesRead);
	if (fres != FR_OK)
	{

		do
		{
			HAL_Delay(1);
			fres = f_open(&fil, "Index.txt", FA_WRITE | FA_OPEN_ALWAYS | FA_CREATE_ALWAYS);
		} while ( (fres != FR_OK) );

		fres = f_write(&fil, "00000\t", strlen("00000\t"), &BytesWritten);
		fres = f_close(&fil);
	}
	if (BytesRead == 6)
	{
		memcpy(localIndex, FileReadBuffer, 5);
		localIndex[5] = '\0';
		previousLogIndex = atoi(localIndex);
	}
	else
	{
		//TODO: what if br is not 6
		// recreate index, etc.
		previousLogIndex = 0;
	}
	fres = f_close(&fil);
	fres = f_open(&fil, "Index.txt", FA_OPEN_EXISTING | FA_WRITE);

	if (previousLogIndex + 1 < 100000)
	{

	}
	else
	{
		previousLogIndex = 0;
	}
	previousLogIndex++;

	char localString[16] = "";
	sprintf(localString, "%05ld\t",previousLogIndex);
	//
	fres = f_write(&fil, localString, strlen(localString), &BytesWritten);
	f_close(&fil);

	sprintf(currentLogFilename,"LOG_%05ld.CSV", previousLogIndex);
	fres = f_open(&fil, currentLogFilename, FA_WRITE | FA_OPEN_ALWAYS | FA_CREATE_ALWAYS);
	if (fres == FR_OK)
	{
		isValidLog = true;
	}
	else
	{
		isValidLog = false;
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
		unsigned int BytesWritten = 0;
		fres = f_write(&fil, logBuffer, strlen(logBuffer), &BytesWritten);
	}
}

uint32_t getCurrentLogSize(void)
{
    FILINFO fno1;
    DIR dp1;
    f_opendir(&dp1, "\\");
    f_findfirst(&dp1, &fno1, "\\", "LOG_*");
    while( (f_findnext(&dp1, &fno1) == FR_OK) && (fno1.fname[0] != 0x00) )
    {
    	f_stat("\\", &fno1);
    	if(strcmp(currentLogFilename, fno1.fname) == 0)
    	{
    		return fno1.fsize;
    	}
    }
    f_closedir(&dp1);
    return 0;
}

void monitorLogSize(void)
{
	if (HAL_GetTick() - lastFileSizeCheck > 10000)
	{
		f_sync(&fil);
		if (getCurrentLogSize() > MAX_LOG_SIZE)
		{
			closeLogFile();
			createNewLogFile();
		}
		lastFileSizeCheck = HAL_GetTick();
	}
}

void deleteLogs(void)
{
	FILINFO fno1;
	DIR dp1;
	FATFS *getFreeFs;
	DWORD free_clusters, free_sectors, total_sectors;
	float free_kb = 0;
	float total_kb = 0;

	f_getfree("\\", &free_clusters, &getFreeFs);
	total_sectors = (getFreeFs->n_fatent - 2) * getFreeFs->csize;
	free_sectors = free_clusters * getFreeFs->csize;
	free_kb = (float)free_sectors*(float)(_MAX_SS)/1048576;
	total_kb = (float)total_sectors*(float)(_MAX_SS)/1048576;

	f_opendir(&dp1, "\\");
	f_findfirst(&dp1, &fno1, "\\", "LOG_*");

	while( (fno1.fname[0] != 0) && (free_kb <= 200) )
	{
//		sprintf(terminalBuffer,"Deleted log: %s",fno1.fname);
//		logData(terminalBuffer, false, false, false);
		f_unlink(&fno1.fname[0]);
		f_findnext(&dp1, &fno1);
		f_getfree("\\", &free_clusters, &getFreeFs);
		total_sectors = (getFreeFs->n_fatent - 2) * getFreeFs->csize;
		free_sectors = free_clusters * getFreeFs->csize;
		free_kb = (float)free_sectors*(float)(_MAX_SS)/1048576;
	}
	f_closedir(&dp1);
//	logData("EOD", false, true, true);
}
