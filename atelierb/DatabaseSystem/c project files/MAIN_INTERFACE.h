#ifndef _MAIN_INTERFACE_h
#define _MAIN_INTERFACE_h

#include <stdint.h>
#include <stdbool.h>

#include <stdio.h>
#include <limits.h>
/* Clause IMPORTS */
#include "INNER_INTERFACE.h"
#include "BASIC_COMMAND.h"
#include "BASIC_SEX.h"
#include "BASIC_STATUS.h"
#include "BASIC_IO.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void MAIN_INTERFACE__INITIALISATION(void);

/* Clause OPERATIONS */

extern void MAIN_INTERFACE__main(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _MAIN_INTERFACE_h */
