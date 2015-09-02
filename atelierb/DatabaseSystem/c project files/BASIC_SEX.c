#include "BASIC_SEX.h" 

const BASIC_SEX__SEX BASIC_SEX__code_SEX[2]={BASIC_SEX__man,BASIC_SEX__woman};
const BASIC_SEX__SEX BASIC_SEX__decode_SEX[2]={BASIC_SEX__man,BASIC_SEX__woman};

void BASIC_SEX__INITIALISATION(void)
{
 
}
 
void BASIC_SEX__SEX_READ(BASIC_SEX__SEX *rr)
{ 
 //printf("[BASIC_SEX_SEX_READ](man:%d,woman:%d)",BASIC_SEX__man,BASIC_SEX__woman);
 	printf("(man:%d,woman:%d)",BASIC_SEX__man,BASIC_SEX__woman);
 	scanf("%d",rr);
 
 	if((*rr)!=BASIC_SEX__man && (*rr)!=BASIC_SEX__woman)
 //printf("[SEX_READ]:INVALID VALUE!\nExpected value : 0 or 1.\n");
 	printf("INVALID VALUE!\nExpected value : 0 or 1.\n");
 
//printf("[SEX_READ]Read value: %d",*rr); // debugging purpose
}
 
void BASIC_SEX__SEX_WRITE(BASIC_SEX__SEX ii)
{
 	if(ii == BASIC_SEX__man)
 	//printf("[SEX_WRITE]:man\n");
 		printf(" man   ");
 	else
	 if(ii==BASIC_SEX__woman)
 	//printf("[SEX_WRITE]:woman\n");
 		printf("woman  ");
}
	 
