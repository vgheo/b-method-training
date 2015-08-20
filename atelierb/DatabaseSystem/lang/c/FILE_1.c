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

void FILE__mod_file(int32_t oo