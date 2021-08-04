/*
 * LogAgent.h
 *
 *  Created on: Aug 2, 2021
 *      Author: raing
 */

#ifndef INC_LOGAGENT_H_
#define INC_LOGAGENT_H_

//#include "main.h"
//#include "fatfs.h"
#include "ff.h"

#define MAX_LOG_SIZE 25000000

extern char logBuffer[16384];
extern char terminalBuffer[1024];

extern uint8_t initSDCard(void);
extern void createNewLogFile(void);
extern void closeLogFile(void);
extern void writeToLog(void);
extern uint32_t getCurrentLogSize(void);
extern void deleteLogs(void);
extern void monitorLogSize(void);
extern void logData(char *dataToLog, bool doNotShowOnDisplay, bool displayOnly, bool doNotDisplayTime);

#endif /* INC_LOGAGENT_H_ */
