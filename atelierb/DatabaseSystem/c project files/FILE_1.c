/* WARNING if type checker is not performed, translation could contain errors ! */

#include "FILE.h"

/* Clause IMPORTS */
#include "FILE_BUFFER.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void FILE__INITIALISATION(void)
{
    
    FILE_BUFFER__INITIALISATION();
}

/* Clause OPERATIONS */

void FILE__mod_file(int32_t oo, int32_t ii, int32_t vv)
{
    bool test;
    
    FILE_BUFFER__not_in_buffer(oo, &test);
    if(test == true)
    {
        FILE_BUFFER__load_buffer(oo);
    }
    FILE_BUFFER__mod_buffer(oo, ii, vv);
}

void FILE__val_file(int32_t oo, int32_t ii, int32_t *vv)
{
    bool test;
    
    FILE_BUFFER__not_in_buffer(oo, &test);
    if(test == true)
    {
        FILE_BUFFER__load_buffer(oo);
    }
    FILE_BUFFER__val_buffer(oo, ii, vv);
}

