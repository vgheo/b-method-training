#ifndef _INNER_INTERFACE_h
#define _INNER_INTERFACE_h

#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
/* Clause IMPORTS */
#include "DATA_BASE.h"
#include "QUERY.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void INNER_INTERFACE__INITIALISATION(void);

/* Clause OPERATIONS */

extern void INNER_INTERFACE__death_operation(void);
extern void INNER_INTERFACE__marriage_operation(void);
extern void INNER_INTERFACE__first_operation(void);
extern void INNER_INTERFACE__birth_operation(void);
extern void INNER_INTERFACE__print_operation(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _INNER_INTERFACE_h */
