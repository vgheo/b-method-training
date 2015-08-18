#ifndef _FILE_BUFFER_h
#define _FILE_BUFFER_h

#include <stdint.h>
#include <stdbool.h>
/* Clause IMPORTS */
#include "FILE_ACCESS.h"
#define FILE_BUFFER__create_record FILE_ACCESS__create_record
#define FILE_BUFFER__not_in_buffer FILE_ACCESS__not_in_buffer
#define FILE_BUFFER__mod_buffer FILE_ACCESS__mod_buffer
#define FILE_BUFFER__val_buffer FILE_ACCESS__val_buffer
#define FILE_BUFFER__size_file FILE_ACCESS__size_file

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void FILE_BUFFER__INITIALISATION(void);

/* Clause OPERATIONS */

extern void FILE_BUFFER__load_buffer(int32_t oo);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _FILE_BUFFER_h */
