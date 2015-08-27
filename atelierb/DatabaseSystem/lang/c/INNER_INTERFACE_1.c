/* WARNING if type checker is not performed, translation could contain errors ! */

#include "INNER_INTERFACE.h"

/* Clause IMPORTS */
#include "DATA_BASE.h"
#include "QUERY.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void INNER_INTERFACE__INITIALISATION(void)
{
    
    DATA_BASE__INITIALISATION();
    QUERY__INITIALISATION();
}

/* Clause OPERATIONS */

void INNER_INTERFACE__death_operation(void)
{
    DATA_BASE__PERSON pp;
    bool bb;
    
    //printf("[QUERY__get_new_dead_person]:\n");
    QUERY__get_new_dead_person(&pp, &bb);
    if(bb == true)
    {
        DATA_BASE__death(pp);
    }
}

void INNER_INTERFACE__marriage_operation(void)
{
    DATA_BASE__PERSON ww;
    DATA_BASE__PERSON mm;
    bool bb;
    //printf("[QUERY__get_new_couple]:\n");
    QUERY__get_new_couple(&mm, &ww, &bb);
    if(bb == true)
    {
        DATA_BASE__marriage(ww, mm);
    }
}

void INNER_INTERFACE__first_operation(void)
{
    BASIC_SEX__SEX ss;
    bool bb;
    DATA_BASE__PERSON pp;
    //printf("[QUERY__get_sex_of_new]:\n");
    QUERY__get_sex_of_new(&ss, &bb);
    if(bb == true)
    {   //printf("[DATA_BASE__first_human]:\n");
        DATA_BASE__first_human(ss, &pp);
    }
}

void INNER_INTERFACE__birth_operation(void)
{
    DATA_BASE__PERSON ww;
    BASIC_SEX__SEX ss;
    bool bb;
    DATA_BASE__PERSON pp;
    
    QUERY__get_sex_and_mother(&ss, &ww, &bb);
    if(bb == true)
    {
        DATA_BASE__new_born(ss, ww, &pp);
    }
}

void INNER_INTERFACE__print_operation(void)
{
    QUERY__get_and_print_person();
}

