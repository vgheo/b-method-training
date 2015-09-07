#ifndef _BASIC_FILE_VAR_h
#define _BASIC_FILE_VAR_h

#include <stdint.h>
#include <stdbool.h>
/*Decalaration needed for printf and scanf functions*/
#include <stdio.h> 

/*Decalaration needed for FILE_ACCESS*/
#include "FILE_ACCESS.h" 
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */

extern int32_t BASIC_FILE_VAR__buf_vrb[5];
extern int32_t BASIC_FILE_VAR__file_vrb[10000][5];
extern int32_t BASIC_FILE_VAR_size ;//see external_declarations.c
/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void BASIC_FILE_VAR__INITIALISATION(void);

/* Clause OPERATIONS */

extern void BASIC_FILE_VAR__READ_FILE(int32_t ii);
extern void BASIC_FILE_VAR__WRITE_FILE(int32_t ii);
extern void BASIC_FILE_VAR__NEW_RECORD(int32_t vv);
extern void BASIC_FILE_VAR__SIZE_FILE(int32_t *vv);
extern void BASIC_FILE_VAR__RESET_FILE(void);
extern void BASIC_FILE_VAR__RESET_RECORD(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _BASIC_FILE_VAR_h */
