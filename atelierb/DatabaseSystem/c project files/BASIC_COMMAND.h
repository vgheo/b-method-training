#ifndef _BASIC_COMMAND_h
#define _BASIC_COMMAND_h

#include <stdint.h>
#include <stdbool.h>
/*declaration needed for printf and scanf functions*/
#include <stdio.h> 
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */
typedef enum
{
    BASIC_COMMAND__new,
    BASIC_COMMAND__birth,
    BASIC_COMMAND__marriage,
    BASIC_COMMAND__death,
    BASIC_COMMAND__print,
    BASIC_COMMAND__quit
    
} BASIC_COMMAND__COMMAND;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void BASIC_COMMAND__INITIALISATION(void);

/* Clause OPERATIONS */

extern void BASIC_COMMAND__COMMAND_READ(BASIC_COMMAND__COMMAND *rr);
extern void BASIC_COMMAND__COMMAND_WRITE(BASIC_COMMAND__COMMAND ii);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _BASIC_COMMAND_h */
