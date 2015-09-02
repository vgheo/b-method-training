#ifndef _FILE_BUFFER_h
#define _FILE_BUFFER_h

#include <stdint.h>
#include <stdbool.h>
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

extern void FILE_BUFFER__create_record(int32_t vv, int32_t *oo);
extern void FILE_BUFFER__load_buffer(int32_t oo);
extern void FILE_BUFFER__size_file(int32_t *vv);
extern void FILE_BUFFER__not_in_buffer(int32_t oo, bool *vv);
extern void FILE_BUFFER__mod_buffer(int32_t oo, int32_t ii, int32_t vv);
extern void FILE_BUFFER__val_buffer(int32_t oo, int32_t ii, int32_t *vv);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _FILE_BUFFER_h */
