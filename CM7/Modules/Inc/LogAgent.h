/*
 * LogAgent.h
 *
 *  Created on: Aug 2, 2021
 *      Author: raing
 */

#ifndef INC_LOGAGENT_H_
#define INC_LOGAGENT_H_

extern char logBuffer[16384];

extern void initSDCard(void);
extern void newLogFile(void);
extern void closeLogFile(void);
extern void writeToLog(void);

#endif /* INC_LOGAGENT_H_ */
