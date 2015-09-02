#include "BASIC_STATUS.h"

const BASIC_STATUS__STATUS BASIC_STATUS__code_STATUS[2]={BASIC_STATUS__dead,BASIC_STATUS__living};
const BASIC_STATUS__STATUS BASIC_STATUS__decode_STATUS[2]={BASIC_STATUS__dead,BASIC_STATUS__living};

void BASIC_STATUS__INITIALISATION(void)
{
}

void BASIC_STATUS__STATUS_WRITE(BASIC_STATUS__STATUS ii)
{
	 	if(ii = BASIC_STATUS__dead)
		 //printf("[STATUS_WRITE]:DEAD\n");
		 printf(" dead   ");
		 else
		 if(ii = BASIC_STATUS__living)
		 //printf("[STATUS_WRITE]:LIVING\n");
		 printf("living  ");
		 else
		 printf("[STATUS_WRITE]:INVALID PARAMETER.\nExpected parameter DEAD or LIVING.\n");
}
