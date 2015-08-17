#ifndef _FILE_ACCESS_h
#define _FILE_ACCESS_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */

extern 
extern 
extern bool FILE_ACCESS__updated;

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void FILE_ACCESS__INITIALISATION(void);

/* Clause OPERATIONS */

extern void FILE_ACCESS__get_record(int32_t oo);
extern void FILE_ACCESS__put_buffer(void);
extern void FILE_ACCESS__create_record(