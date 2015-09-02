#ifndef _BASIC_STATUS_h
#define _BASIC_STATUS_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */
typedef enum
{
    BASIC_STATUS__dead,
    BASIC_STATUS__living
    
} BASIC_STATUS__STATUS;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */


/* Array and record constants */

extern const BASIC_STATUS__STATUS BASIC_STATUS__decode_STATUS[2];
extern void BASIC_STATUS__INITIALISATION(void);

/* Clause OPERATIONS */

extern void BASIC_STATUS__STATUS_READ(BASIC_STATUS__STATUS *rr);
extern void BASIC_STATUS__STATUS_WRITE(BASIC_STATUS__STATUS ii);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _BASIC_STATUS_h */
