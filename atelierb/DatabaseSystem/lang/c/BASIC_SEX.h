#ifndef _BASIC_SEX_h
#define _BASIC_SEX_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */
typedef enum
{
    BASIC_SEX__man,
    BASIC_SEX__woman
    
} BASIC_SEX__SEX;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void BASIC_SEX__INITIALISATION(void);

/* Clause OPERATIONS */

extern void BASIC_SEX__SEX_READ(BASIC_SEX__SEX *rr);
extern void BASIC_SEX__SEX_WRITE(BASIC_SEX__SEX ii);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _BASIC_SEX_h */