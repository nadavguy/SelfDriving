#include "main.h"
#include "usart.h"
#include "ff.h"
#include "fatfs.h"
//#include "stm32746g_qspi.h"
//#include "usb_device.h"
//#include "usbd_cdc_if.h"


bool isReportParametersActive = false;
bool isInfwUpdateMode = false;

eCI_RESULT func_debug(void)
{
//	if (!sessionUnlocked)
//	{
//		return CI_COMMAND_ERROR;
//	}
	if (get_param_count() > 0)
	{
//		ee.debugLevel = get_param_int(0);
//		ee_save1();
//		sprintf(terminalBuffer,"Debug level set to: %d",ee.debugLevel);
//		logData(terminalBuffer, false, false, false);
	}
	return CI_OK;
}

eCI_RESULT func_versionReport(void)
{
	sprintf(terminalBuffer,"RC Firmware Version: %2.2f, BuildID: %2.2f",versionID, buildID);
	logData(terminalBuffer, false, true, false);
	return CI_OK;
}

eCI_RESULT func_resetRC(void)
{
	NVIC_SystemReset();
	return CI_OK;
}

eCI_RESULT func_showAvailableCommands(void)
{
	return CI_OK;
}

eCI_RESULT func_systemConfiguration(void)
{
//	if (!sessionUnlocked)
//	{
//		return CI_COMMAND_ERROR;
//	}
//	printRCConfiguration(true);
	return CI_OK;
}

eCI_RESULT func_openNewLogFile(void)
{
//	if (!sessionUnlocked)
//	{
//		return CI_COMMAND_ERROR;
//	}
	createNewLogFile();
	logData("Received external command to create a new log file", false, false, false);
	return CI_NO_UART_ACK;
}

eCI_RESULT func_closeCurrentLogFile(void) // Do file close
{
//	if (!sessionUnlocked)
//	{
//		return CI_COMMAND_ERROR;
//	}
	logData("Received external command to close log file", false, false, false);
	closeLogFile();
//  PRINT(SessionUnlocked);
  return CI_NO_UART_ACK;
}

eCI_RESULT func_deleteFile(void)
{
//	if (!sessionUnlocked)
//	{
//		return CI_COMMAND_ERROR;
//	}
	if (get_param_count() > 0)
	{
		char *fn = get_param_str(0);
		FRESULT ret = f_unlink(fn);
		if (ret == FR_OK)
		{
			sprintf(terminalBuffer, "File %s deleted", get_param_str(0));
			logData(terminalBuffer, false, false, false);
		}
		else
		{
			sprintf(terminalBuffer, "File %s was not deleted", get_param_str(0));
			logData(terminalBuffer, false, false, false);
		}
	}
	return CI_NO_UART_ACK;
}

eCI_RESULT func_moveForward(void)
{
//	if (!sessionUnlocked)
//	{
//		return CI_COMMAND_ERROR;
//	}
	return CI_OK;
}

eCI_RESULT func_moveReverse(void)
{
//	if (!sessionUnlocked)
//	{
//		return CI_COMMAND_ERROR;
//	}
	return CI_OK;
}

eCI_RESULT func_rotate(void)
{
//	if (!sessionUnlocked)
//	{
//		return CI_COMMAND_ERROR;
//	}
	return CI_OK;
}

eCI_RESULT func_dir(void)
{
//	if (!sessionUnlocked)
//	{
//		return CI_COMMAND_ERROR;
//	}
    FILINFO fno1;
    DIR dp1;
    f_opendir(&dp1, "\\");
    f_findfirst(&dp1, &fno1, "\\", "*");

    while( (fno1.fname[0] != 0) )
    {
    	sprintf(terminalBuffer,"%s\t %lu",fno1.fname, (long int)fno1.fsize);
    	logData(terminalBuffer, false, true, true);
    	f_findnext(&dp1, &fno1);
    }
    f_closedir(&dp1);
    logData("dir EOD", false, true, true);
	return CI_OK;
}

eCI_RESULT func_fmt(void)
{
//	if (!sessionUnlocked)
//	{
//		return CI_COMMAND_ERROR;
//	}
	sprintf(terminalBuffer, "\r\n%s!Formatting Flash...restart required!\n\r", CT());
	logData(terminalBuffer, false, false, false);
	f_sync(&USERFile);
	f_close(&USERFile);

//	BSP_QSPI_Erase_Chip();
//	fileSystemInit();
	createNewLogFile();
	return CI_OK;
}

typedef struct
{
    char *string;
    eCI_RESULT (*func)(void);
} functionsList;

functionsList cases [] =
{
		{ "ver"	, func_versionReport },
		{ "dbg"	, func_debug },
		{ "rst" , func_resetRC },
		{ "help", func_showAvailableCommands },
		{ "ee?"	, func_systemConfiguration },
		{ "FOR", func_openNewLogFile},
		{ "FC", func_closeCurrentLogFile},
		{ "del", func_deleteFile},
		{ "frwd", func_moveForward},
		{ "rvrs", func_moveReverse},
		{ "rtt", func_rotate},
		{ "dir" , func_dir },
		{ "fmt" , func_fmt }
};

uint8_t funcTable( char* token )
{
	for( functionsList* pCase = cases; pCase != cases + sizeof( cases ) / sizeof( cases[0] ); pCase++ )
	{
		if( 0 == strcmp( pCase->string, token ) )
		{
			(*pCase->func)();
			return 1;
			break;
		}
	}
	return 0;
}
