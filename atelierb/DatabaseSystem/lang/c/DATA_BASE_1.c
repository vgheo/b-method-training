/* WARNING if type checker is not performed, translation could contain errors ! */

#include "DATA_BASE.h"

/* Clause SEES */
#include "BASIC_IO.h"
#include "BASIC_SEX.h"
#include "BASIC_STATUS.h"

/* Clause IMPORTS */
#include "PARTIAL_OBJECT.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

#define DATA_BASE__max_pers 10000
/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void DATA_BASE__INITIALISATION(void)
{
    
    PARTIAL_OBJECT__INITIALISATION();
    ;
}

/* Clause OPERATIONS */

void DATA_BASE__death(DATA_BASE__PERSON pp)
{
    int32_t tt;
    
    tt = BASIC_STATUS__code_STATUS[BASIC_STATUS__dead];
    PARTIAL_OBJECT__mod_field(2, pp, tt);
}

void DATA_BASE__marriage(DATA_BASE__PERSON bride, DATA_BASE__PERSON groom)
{
    PARTIAL_OBJECT__mod_field(4, bride, groom);
    PARTIAL_OBJECT__mod_field(4, groom, bride);
}

void DATA_BASE__first_human(BASIC_SEX__SEX ss, DATA_BASE__PERSON *baby)
{	
	PARTIAL_OBJECT__create_partial_object(baby);
	printf("Person id :%d\n",*baby);
    PARTIAL_OBJECT__mod_field(1, *baby, BASIC_SEX__code_SEX[ss]);
    PARTIAL_OBJECT__mod_field(2, *baby, BASIC_STATUS__code_STATUS[BASIC_STATUS__living]);
}

void DATA_BASE__not_saturated(bool *report)
{
    int32_t nn;
    
    PARTIAL_OBJECT__nbr_object(&nn);
    (*report) = (((nn) != (DATA_BASE__max_pers)) ? true : false);
}

void DATA_BASE__new_born(BASIC_SEX__SEX ss, DATA_BASE__PERSON mm, DATA_BASE__PERSON *baby)
{
    PARTIAL_OBJECT__create_partial_object(baby);
    PARTIAL_OBJECT__mod_field(1, *baby, BASIC_SEX__code_SEX[ss]);
    PARTIAL_OBJECT__mod_field(2, *baby, BASIC_STATUS__code_STATUS[BASIC_STATUS__living]);
    PARTIAL_OBJECT__mod_field(3, *baby, mm);
}

void DATA_BASE__is_present(DATA_BASE__PERSON pp, bool *report)
{
    int32_t nn;
    
    PARTIAL_OBJECT__nbr_object(&nn);
    (*report) = (((pp) <= (nn)) ? true : false);
}

void DATA_BASE__is_living(DATA_BASE__PERSON pp, bool *report)
{
    int32_t ss;
    int32_t tt;
    
    PARTIAL_OBJECT__val_field(2, pp, &ss);
    tt = BASIC_STATUS__code_STATUS[BASIC_STATUS__living];
    (*report) = ((ss == tt) ? true : false);
}

void DATA_BASE__is_woman(DATA_BASE__PERSON pp, bool *report)
{
    int32_t ss;
    int32_t tt;
    
    PARTIAL_OBJECT__val_field(1, pp, &ss);
    tt = BASIC_SEX__code_SEX[BASIC_SEX__woman];
    (*report) = ((ss == tt) ? true : false);
}

void DATA_BASE__is_married(DATA_BASE__PERSON pp, bool *report)
{
    PARTIAL_OBJECT__def_field(4, pp, report);
}

void DATA_BASE__has_mother(DATA_BASE__PERSON pp, bool *report)
{
    PARTIAL_OBJECT__def_field(3, pp, report);
}

void DATA_BASE__val_status(DATA_BASE__PERSON pp, BASIC_STATUS__STATUS *vv)
{
    int32_t ss;
    
    PARTIAL_OBJECT__val_field(2, pp, &ss);
    (*vv) = BASIC_STATUS__decode_STATUS[ss];
}

void DATA_BASE__val_sex(DATA_BASE__PERSON pp, BASIC_SEX__SEX *vv)
{
    int32_t ss;
    
    PARTIAL_OBJECT__val_field(1, pp, &ss);
    (*vv) = BASIC_SEX__decode_SEX[ss];
}

void DATA_BASE__val_spouse(DATA_BASE__PERSON pp, DATA_BASE__PERSON *vv)
{
    PARTIAL_OBJECT__val_field(4, pp, vv);
}

void DATA_BASE__val_mother(DATA_BASE__PERSON pp, DATA_BASE__PERSON *vv)
{
    PARTIAL_OBJECT__val_field(3, pp, vv);
}

void DATA_BASE__PERSON_read(DATA_BASE__PERSON *pp)
{
    BASIC_IO__INTERVAL_READ(1, DATA_BASE__max_pers, pp);
}

void DATA_BASE__PERSON_write(DATA_BASE__PERSON pp)
{
    BASIC_IO__INT_WRITE(pp);
}

