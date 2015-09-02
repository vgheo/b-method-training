#ifndef _FILE_ACCESS_h
#define _FILE_ACCESS_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */

extern int32_t FILE_ACCESS__bfile[2147483647+1][5];
extern int32_t FILE_ACCESS__buffer[2147483647+1][5];
extern bool FILE_ACCESS__updated;

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void FILE_ACCESS__INITIALISATION(void);

/* Clause OPERATIONS */

extern void FILE_ACCESS__get_record(int32_t oo);
extern void FILE_ACCESS__put_buffer(void);
extern void FILE_ACCESS__create_record(int32_t vv, int32_t *oo);
extern void FILE_ACCESS__not_in_buffer(int32_t oo, bool *vv);
extern void FILE_ACCESS__mod_buffer(int32_t oo, int32_t ii, int32_t vv);
extern void FILE_ACCESS__size_file(int32_t *vv);
extern void FILE_ACCESS__val_buffer(int32_t oo, int32_t ii, int32_t *vv);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _FILE_ACCESS_h */
