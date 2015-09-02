#ifndef _BASIC_IO_h
#define _BASIC_IO_h

#include <stdint.h>
#include <stdbool.h>
/*Decalaration needed for printf and scanf functions*/
#include <stdio.h> 
/*Decalaration needed to access DATA_BASE__max_person in BASIC_IO.c in BASIC_IO__INTERVAL_READ function*/
#include "DATA_BASE.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void BASIC_IO__INITIALISATION(void);

/* Clause OPERATIONS */

extern void BASIC_IO__INTERVAL_READ(int32_t aa, int32_t bb, int32_t *nn);
extern void BASIC_IO__INT_WRITE(int32_t nn);
extern void BASIC_IO__BOOL_READ(bool *bb);
extern void BASIC_IO__BOOL_WRITE(bool bb);
extern void BASIC_IO__CHAR_READ(int32_t *bb);
extern void BASIC_IO__CHAR_WRITE(int32_t bb);
extern void BASIC_IO__STRING_WRITE(const char* ss);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _BASIC_IO_h */
