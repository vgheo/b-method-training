/* WARNING if type checker is not performed, translation could contain errors ! */

#include "MAIN_INTERFACE.h"

/* Clause IMPORTS */
#include "INNER_INTERFACE.h"
#include "BASIC_COMMAND.h"
#include "BASIC_SEX.h"
#include "BASIC_STATUS.h"
#include "BASIC_IO.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void MAIN_INTERFACE__INITIALISATION(void)
{
    
    BASIC_COMMAND__INITIALISATION();
    BASIC_IO__INITIALISATION();
    BASIC_SEX__INITIALISATION();
    BASIC_STATUS__INITIALISATION();
    INNER_INTERFACE__INITIALISATION();
}

/* Clause OPERATIONS */

void MAIN_INTERFACE__main(void)
{
    BASIC_COMMAND__COMMAND cc;
    int32_t xx;
    
    BASIC_COMMAND__COMMAND_READ(&cc);
    xx = 2147483647;
    while((((cc) != (BASIC_COMMAND__quit))) &&
    (((xx) != (0))))
    {
        switch(cc)
        {
            case BASIC_COMMAND__new : {
                
                INNER_INTERFACE__first_operation();
                break;
            }
            case BASIC_COMMAND__birth : {
                
                INNER_INTERFACE__birth_operation();
                break;
            }
            case BASIC_COMMAND__marriage : {
                
                INNER_INTERFACE__marriage_operation();
                break;
            }
            case BASIC_COMMAND__death : {
                
                INNER_INTERFACE__death_operation();
                break;
            }
            case BASIC_COMMAND__print : {
                
                INNER_INTERFACE__print_operation();
                break;
            }
        }
        BASIC_COMMAND__COMMAND_READ(&cc);
        xx = xx-1;
    }
}

