#ifndef _TOTAL_OBJECT_h
#define _TOTAL_OBJECT_h

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
extern void TOTAL_OBJECT__INITIALISATION(void);

/* Clause OPERATIONS */

extern void TOTAL_OBJECT__create_total_object(int32_t vv, int32_t *oo);
extern void TOTAL_OBJECT__mod_field(int32_t ii, int32_t oo, int32_t vv);
extern void TOTAL_OBJECT__val_field(int32_t ii, int32_t oo, int32_t *vv);
extern void TOTAL_OBJECT__nbr_object(int32_t *vv);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _TOTAL_OBJECT_h */
