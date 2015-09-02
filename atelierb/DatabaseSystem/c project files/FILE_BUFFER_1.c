/* WARNING if type checker is not performed, translation could contain errors ! */

#include "FILE_BUFFER.h"

/* Clause IMPORTS */
#include "FILE_ACCESS.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void FILE_BUFFER__INITIALISATION(void)
{
    
    FILE_ACCESS__INITIALISATION();
    ;
}

/* Clause OPERATIONS */

void FILE_BUFFER__load_buffer(int32_t oo)
{
    if(FILE_ACCESS__updated == true)
    {
        FILE_ACCESS__put_buffer();
    }
    FILE_ACCESS__get_record(oo);
}

