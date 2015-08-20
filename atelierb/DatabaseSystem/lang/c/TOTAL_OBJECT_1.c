/* WARNING if type checker is not performed, translation could contain errors ! */

#include "TOTAL_OBJECT.h"

/* Clause IMPORTS */
#include "FILE.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void TOTAL_OBJECT__INITIALISATION(void)
{
    
    FILE__INITIALISATION();
}

/* Clause OPERATIONS */

void TOTAL_OBJECT__create_total_object(int32_t vv, int32_t *oo)
{
    FILE__create_record(vv, oo);
}

void TOTAL_OBJECT__mod_field(int32_t ii, int32_t oo, int32_t vv)
{
    FILE__mod_file(oo, ii, vv);
}

void TOTAL_OBJECT__val_field(int32_t ii, int32_t oo, int32_t *vv)
{
    FILE__val_file(oo, ii, vv);
}

void TOTAL_OBJECT__nbr_object(int32_t *vv)
{
    FILE__size_file(vv);
}

