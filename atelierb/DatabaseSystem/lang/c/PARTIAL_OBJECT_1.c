/* WARNING if type checker is not performed, translation could contain errors ! */

#include "PARTIAL_OBJECT.h"

/* Clause IMPORTS */
#include "TOTAL_OBJECT.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void PARTIAL_OBJECT__INITIALISATION(void)
{
    
    TOTAL_OBJECT__INITIALISATION();
}

/* Clause OPERATIONS */

void PARTIAL_OBJECT__create_partial_object(int32_t *oo)
{
    TOTAL_OBJECT__create_total_object(2147483647, oo);
}

void PARTIAL_OBJECT__rem_field(int32_t ii, int32_t oo)
{
    TOTAL_OBJECT__mod_field(ii, oo, 2147483647);
}

void PARTIAL_OBJECT__def_field(int32_t ii, int32_t oo, bool *vv)
{
    int32_t ww;
    
    TOTAL_OBJECT__val_field(ii, oo, &ww);
    (*vv) = (((ww) != (2147483647)) ? true : false);
}

