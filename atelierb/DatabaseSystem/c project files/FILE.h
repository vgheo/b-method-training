#ifndef _FILE_h
#define _FILE_h

#include <stdint.h>
#include <stdbool.h>
/* Clause IMPORTS */
#include "FILE_BUFFER.h"
#define FILE__create_record FILE_BUFFER__create_record
#define FILE__size_file FILE_BUFFER__size_file

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void FILE__INITIALISATION(void);

/* Clause OPERATIONS */

extern void FILE__val_file(int32_t oo, int32_t ii, int32_t *vv);
extern void FILE__mod_file(int32_t oo, int32_t ii, int32_t vv);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _FILE_h */
