/* WARNING if type checker is not performed, translation could contain errors ! */

#include "FILE_ACCESS.h"

/* Clause IMPORTS */
#include "BASIC_FILE_VAR.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static int32_t FILE_ACCESS__name;
static int32_t FILE_ACCESS__record[5];
int32_t FILE_ACCESS__bfile[2147483647+1][5];
int32_t FILE_ACCESS__buffer[2147483647+1][5];
bool FILE_ACCESS__updated;
/* Clause INITIALISATION */
void FILE_ACCESS__INITIALISATION(void)
{
    
    BASIC_FILE_VAR__INITIALISATION();
    FILE_ACCESS__updated = false;
    FILE_ACCESS__name = 0;
    memmove(FILE_ACCESS__buffer,BASIC_FILE_VAR__file_vrb,2147483647+1* 5 * sizeof(int32_t));
    memmove(FILE_ACCESS__bfile,BASIC_FILE_VAR__file_vrb,2147483647+1* 5 * sizeof(int32_t));
    memmove(FILE_ACCESS__record,BASIC_FILE_VAR__buf_vrb,5 * sizeof(int32_t));
}

/* Clause OPERATIONS */

void FILE_ACCESS__get_record(int32_t oo)
{
    FILE_ACCESS__name = 1;
    BASIC_FILE_VAR__READ_FILE(FILE_ACCESS__name);
    FILE_ACCESS__updated = false;
}

void FILE_ACCESS__put_buffer(void)
{
    BASIC_FILE_VAR__WRITE_FILE(FILE_ACCESS__name);
}

void FILE_ACCESS__create_record(int32_t vv, int32_t *oo)
{
    BASIC_FILE_VAR__NEW_RECORD(vv);
    BASIC_FILE_VAR__SIZE_FILE(oo);
}

void FILE_ACCESS__mod_buffer(int32_t oo, int32_t ii, int32_t vv)
{
    FILE_ACCESS__record[ii] = vv;
    FILE_ACCESS__updated = true;
}

void FILE_ACCESS__not_in_buffer(int32_t oo, bool *vv)
{
    (*vv) = (((oo) != (FILE_ACCESS__name)) ? true : false);
}

void FILE_ACCESS__size_file(int32_t *vv)
{
    BASIC_FILE_VAR__SIZE_FILE(vv);
}

void FILE_ACCESS__val_buffer(int32_t oo, int32_t ii, int32_t *vv)
{
    (*vv) = FILE_ACCESS__buffer[oo][ii];
}

