#ifndef _PARTIAL_OBJECT_h
#define _PARTIAL_OBJECT_h

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
extern void PARTIAL_OBJECT__INITIALISATION(void);

/* Clause OPERATIONS */

extern void PARTIAL_OBJECT__create_partial_object(int32_t *oo);
extern void PARTIAL_OBJECT__mod_field(int32_t ii, int32_t oo, int32_t vv);
extern void PARTIAL_OBJECT__rem_field(int32_t ii, int32_t oo);
extern void PARTIAL_OBJECT__def_field(int32_t ii, int32_t oo, bool *vv);
extern void PARTIAL_OBJECT__val_field(int32_t ii, int32_t oo, int32_t *vv);
extern void PARTIAL_OBJECT__nbr_object(int32_t *vv);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _PARTIAL_OBJECT_h */
