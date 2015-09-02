#ifndef _DATA_BASE_h
#define _DATA_BASE_h

#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
/* Clause SEES */
#include "BASIC_IO.h"
#include "BASIC_SEX.h"
#include "BASIC_STATUS.h"
#include "BASIC_FILE_VAR.h"
/* Clause IMPORTS */
#include "PARTIAL_OBJECT.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#define DATA_BASE__PERSON__max 10000
/* Clause SETS */
typedef int DATA_BASE__PERSON;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
#define DATA_BASE__max_pers 10000
/* Array and record constants */

extern void DATA_BASE__INITIALISATION(void);

/* Clause OPERATIONS */

extern void DATA_BASE__death(DATA_BASE__PERSON pp);
extern void DATA_BASE__marriage(DATA_BASE__PERSON bride, DATA_BASE__PERSON groom);
extern void DATA_BASE__first_human(BASIC_SEX__SEX ss, DATA_BASE__PERSON *baby);
extern void DATA_BASE__new_born(BASIC_SEX__SEX ss, DATA_BASE__PERSON mm, DATA_BASE__PERSON *baby);
extern void DATA_BASE__not_saturated(bool *report);
extern void DATA_BASE__is_present(DATA_BASE__PERSON pp, bool *report);
extern void DATA_BASE__is_living(DATA_BASE__PERSON pp, bool *report);
extern void DATA_BASE__is_woman(DATA_BASE__PERSON pp, bool *report);
extern void DATA_BASE__is_married(DATA_BASE__PERSON pp, bool *report);
extern void DATA_BASE__has_mother(DATA_BASE__PERSON pp, bool *report);
extern void DATA_BASE__val_status(DATA_BASE__PERSON pp, BASIC_STATUS__STATUS *vv);
extern void DATA_BASE__val_sex(DATA_BASE__PERSON pp, BASIC_SEX__SEX *vv);
extern void DATA_BASE__val_spouse(DATA_BASE__PERSON pp, DATA_BASE__PERSON *vv);
extern void DATA_BASE__val_mother(DATA_BASE__PERSON pp, DATA_BASE__PERSON *vv);
extern void DATA_BASE__PERSON_read(DATA_BASE__PERSON *pp);
extern void DATA_BASE__PERSON_write(DATA_BASE__PERSON pp);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _DATA_BASE_h */
