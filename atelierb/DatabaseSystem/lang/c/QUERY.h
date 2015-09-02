#ifndef _QUERY_h
#define _QUERY_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "DATA_BASE.h"
#include "BASIC_SEX.h"
#include "BASIC_STATUS.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void QUERY__INITIALISATION(void);

/* Clause OPERATIONS */

extern void QUERY__get_new_dead_person(DATA_BASE__PERSON *pp, bool *bb);
extern void QUERY__get_sex_of_new(BASIC_SEX__SEX *ss, bool *bb);
extern void QUERY__get_and_print_person(void);
extern void QUERY__get_new_couple(DATA_BASE__PERSON *mm, DATA_BASE__PERSON *ww, bool *bb);
extern void QUERY__get_sex_and_mother(BASIC_SEX__SEX *ss, DATA_BASE__PERSON *ww, bool *bb);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _QUERY_h */
