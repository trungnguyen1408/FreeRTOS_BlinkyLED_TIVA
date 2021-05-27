/*
 * ledRedStateMachine.c
 *
 *  Created on: Mar 16, 2018
 *      Author: Quoc Bao
 */
#include <ledBlueStateMachine.h>
#include <stdbool.h>
#include <stdint.h>
#include "inc/hw_memmap.h"
#include "driverlib/gpio.h"
#include "switches.h"
#include "led.h"
#include "debug.h"

typedef  enum {S_LEDON=0,S_WAITLEDOFF, S_LEDOFF, S_WAITLEDON}  ledBState_t;
static ledBState_t State;

#ifdef  DEBUG


#endif


void InitMachine(void)
{ State = S_LEDOFF;
    ledControl(LEDBLUE,OFF);
    }

void ledBlueStateMachineUpdate(void)
{
    switch (State)
    {
        case S_LEDOFF:
            if (switchState(2) == PRESSED)
                {
                    State = S_WAITLEDON;
                }
            break;
        case S_WAITLEDON:
                    if (switchState(2) == RELEASED)
                        {
                            State = S_LEDON;
                        }
                    break;
        case S_LEDON:
            if (switchState(2) == PRESSED)
                {
                    State = S_WAITLEDOFF;
                }
            break;
        case S_WAITLEDOFF:
                    if (switchState(2) == RELEASED)
                        {
                            State = S_LEDOFF;
                        }
                    break;
    }
    switch (State)
    {
    case S_LEDOFF:
    case    S_WAITLEDOFF:
        ledControl(LEDBLUE,OFF);
        break;
    case S_LEDON:
    case    S_WAITLEDON:
        ledControl(LEDBLUE,ON);
    }
}
