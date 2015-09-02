/* WARNING if type checker is not performed, translation could contain errors ! */

#include "QUERY.h"

/* Clause SEES */
#include "DATA_BASE.h"
#include "BASIC_IO.h"
#include "BASIC_SEX.h"
#include "BASIC_STATUS.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void QUERY__INITIALISATION(void)
{
    
}

/* Clause OPERATIONS */

void QUERY__get_new_dead_person(DATA_BASE__PERSON *pp, bool *bb)
{
    BASIC_IO__STRING_WRITE("Person Id:");
    DATA_BASE__PERSON_read(pp);
    DATA_BASE__is_present(*pp, bb);
    if((*bb) == false)
    {
        BASIC_IO__STRING_WRITE("Person does not exist\n");
    }
    else
    {
        DATA_BASE__is_living(*pp, bb);
        if((*bb) == false)
        {
            BASIC_IO__STRING_WRITE("Person must be alive\n");
        }
    }
}

void QUERY__get_sex_of_new(BASIC_SEX__SEX *ss, bool *bb)
{
    BASIC_IO__STRING_WRITE("Sex: ");
    BASIC_SEX__SEX_READ(ss);
    DATA_BASE__not_saturated(bb);
    if((*bb) == false)
    {
        BASIC_IO__STRING_WRITE("System_full\n");
    }
}

void QUERY__get_sex_and_mother(BASIC_SEX__SEX *ss, DATA_BASE__PERSON *ww, bool *bb)
{
    BASIC_IO__STRING_WRITE("Sex: ");
    BASIC_SEX__SEX_READ(ss);
    BASIC_IO__STRING_WRITE("Mother Id: ");
    DATA_BASE__PERSON_read(ww);
    DATA_BASE__is_present(*ww, bb);
    if((*bb) == false)
    {
        BASIC_IO__STRING_WRITE("Person does not exist\n");
    }
    else
    {
        DATA_BASE__is_woman(*ww, bb);
        if((*bb) == false)
        {
            BASIC_IO__STRING_WRITE("Person must be a woman\n");
        }
        else
        {
            DATA_BASE__is_married(*ww, bb);
            if((*bb) == false)
            {
                BASIC_IO__STRING_WRITE("Person must be married\n");
            }
            else
            {
                DATA_BASE__not_saturated(bb);
                if((*bb) == false)
                {
                    BASIC_IO__STRING_WRITE("System full\n");
                }
            }
        }
    }
}

void QUERY__get_new_couple(DATA_BASE__PERSON *mm, DATA_BASE__PERSON *ww, bool *bb)
{
    bool pm;
    bool pw;
    bool bm;
    bool bms;
    bool bw;
    bool bws;
    
    (*bb) = true;
    BASIC_IO__STRING_WRITE("Man Id: ");
    DATA_BASE__PERSON_read(mm);
    BASIC_IO__STRING_WRITE("Woman Id");
    DATA_BASE__PERSON_read(ww);
    DATA_BASE__is_present(*mm, &pm);
    DATA_BASE__is_present(*ww, &pw);
    if(pm == false)
    {
        (*bb) = false;
        BASIC_IO__STRING_WRITE("First person does not exist\n");
    }
    if(pw == false)
    {
        (*bb) = false;
        BASIC_IO__STRING_WRITE("Second person does not exist\n");
    }
    if((*bb) == true)
    {
        DATA_BASE__is_woman(*mm, &bm);
        DATA_BASE__is_married(*mm, &bms);
        DATA_BASE__is_woman(*ww, &bw);
        DATA_BASE__is_married(*ww, &bws);
        if(bm == true)
        {
            (*bb) = false;
            BASIC_IO__STRING_WRITE("First person must be a man\n");
        }
        if(bms == true)
        {
            (*bb) = false;
            BASIC_IO__STRING_WRITE("First person must be a woman\n");
        }
        if(bw == false)
        {
            (*bb) = false;
            BASIC_IO__STRING_WRITE("Second person must be a woman\n");
        }
        if(bws == true)
        {
            (*bb) = false;
            BASIC_IO__STRING_WRITE("Second person must not be married\n");
        }
    }
}

void QUERY__get_and_print_person(void)
{
    DATA_BASE__PERSON pp;
    bool bb;
    BASIC_SEX__SEX vv;
    BASIC_STATUS__STATUS uu;
    DATA_BASE__PERSON ww;
    DATA_BASE__PERSON tt;
    
    BASIC_IO__STRING_WRITE("Person Id: ");
    DATA_BASE__PERSON_read(&pp);
    DATA_BASE__is_present(pp, &bb);
    if(bb == false)
    {
        BASIC_IO__STRING_WRITE("Person does not exist \n");
    }
    else
    {
        BASIC_IO__STRING_WRITE("\n Person: ");
        DATA_BASE__PERSON_write(pp);
        BASIC_IO__STRING_WRITE("\n Sex: ");
        DATA_BASE__val_sex(pp, &vv);
        BASIC_SEX__SEX_WRITE(vv);
        BASIC_IO__STRING_WRITE("\n Status: ");
        DATA_BASE__val_status(pp, &uu);
        BASIC_STATUS__STATUS_WRITE(uu);
        DATA_BASE__has_mother(pp, &bb);
        if(bb == true)
        {
            BASIC_IO__STRING_WRITE("\n Mother: ");
            DATA_BASE__val_mother(pp, &ww);
            DATA_BASE__PERSON_write(ww);
        }
        DATA_BASE__is_married(pp, &bb);
        if(bb == true)
        {
            BASIC_IO__STRING_WRITE("\n Spu=ouse: ");
            DATA_BASE__val_spouse(pp, &tt);
            DATA_BASE__PERSON_write(tt);
        }
    }
}

