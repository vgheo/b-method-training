	 #include<stdio.h>
	 #include "BASIC_STATUS.h"
	 #include "BASIC_SEX.h"
	 #include "BASIC_COMMAND.h"
	 #include "BASIC_FILE_VAR.h"
	 #include "DATA_BASE.h"
	 //#include "FILE_ACCESS"
	 
	 int32_t BASIC_FILE_VAR_size = 0; //added in order to measure the effective ocupied size of file_vrb
	 
	 int32_t BASIC_FILE_VAR__buf_vrb[5];        
	 int32_t BASIC_FILE_VAR__file_vrb[10000][5];
	 
	 const BASIC_SEX__SEX BASIC_SEX__code_SEX[2]={BASIC_SEX__man,BASIC_SEX__woman};
	 const BASIC_SEX__SEX BASIC_SEX__decode_SEX[2]={BASIC_SEX__man,BASIC_SEX__woman};
	 
	 const BASIC_STATUS__STATUS BASIC_STATUS__code_STATUS[2]={BASIC_STATUS__dead,BASIC_STATUS__living};
	 const BASIC_STATUS__STATUS BASIC_STATUS__decode_STATUS[2]={BASIC_STATUS__dead,BASIC_STATUS__living};
	
	/*BASIC_IO*/
	 void BASIC_IO__INITIALISATION(void){
	 	
	 }
	 
	 void BASIC_IO__STRING_WRITE(const char* ss){
	 	//printf("[IO_STRING_WRITE]: %s",ss);
	 	printf("%s",ss);
	 }
	 
	 void BASIC_IO__INTERVAL_READ(int32_t aa, int32_t bb, int32_t *nn){
	 	//printf("[INTERVAL_READ]:");
		scanf("%d",nn);
		if( (*nn) < aa  || (*nn) > bb){
			printf("INVALID VALUE!\nExpected value in [%d,%d].\nInitializing with with default value DATA_BASE__PERSON__max + 1 (%d)\n",aa,bb,DATA_BASE__PERSON__max + 1);
			(*nn)=DATA_BASE__PERSON__max + 1;
		}
	 }
	 
	 void BASIC_IO__INT_WRITE(int32_t nn){
	 	printf("%d",nn);
	 }
	  
	 /*BASIC_SEX*/ 
	 void BASIC_SEX__INITIALISATION(void){
	 	
	 }
	 
	 void BASIC_SEX__SEX_READ(BASIC_SEX__SEX *rr){
	 	
	 	//printf("[BASIC_SEX_SEX_READ](man:%d,woman:%d)",BASIC_SEX__man,BASIC_SEX__woman);
	 	printf("(man:%d,woman:%d)",BASIC_SEX__man,BASIC_SEX__woman);
	 	scanf("%d",rr);
	 	
	 	if((*rr)!=BASIC_SEX__man && (*rr)!=BASIC_SEX__woman)
	 		//printf("[SEX_READ]:INVALID VALUE!\nExpected value : 0 or 1.\n");
	 		printf("INVALID VALUE!\nExpected value : 0 or 1.\n");
	 	
	//	printf("[SEX_READ]Read value: %d",*rr); // debugging purpose
	 }
	 
	 void BASIC_SEX__SEX_WRITE(BASIC_SEX__SEX ii){
	 	if(ii == BASIC_SEX__man)
	 		//printf("[SEX_WRITE]:man\n");
	 		printf(" man   ");
	 	else
	 	if(ii==BASIC_SEX__woman)
	 		//printf("[SEX_WRITE]:woman\n");
	 		printf("woman  ");
	 }
	 
	 /*BASIC_STATUS*/
	 void BASIC_STATUS__INITIALISATION(void){
	 	
	 }
	 void BASIC_STATUS__STATUS_WRITE(BASIC_STATUS__STATUS ii){
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
	 
	 /*BASIC_COMMAND*/
	 void BASIC_COMMAND__INITIALISATION(void){
	 	
	 }
	 void BASIC_COMMAND__COMMAND_READ(BASIC_COMMAND__COMMAND *rr){
	 	printf("\n[COMMAND_READ]:Insert command :\n(new:0,birth:1,marriage:2,death:3,print:4,quit:5)\n");
	 	scanf("%d",rr);	
	 	if((*rr) < 0 || (*rr)>5)
		 printf("[COMMAND_READ]:INVALID COMMAND!\nExpected value in [0,5] interval.\nDefault action: print all records.\n") ;
	} 
	 
	 /*BASIC_FILE_VAR*/
	 void BASIC_FILE_VAR__INITIALISATION(void){
	 	
	 }
	 
	 void BASIC_FILE_VAR__SIZE_FILE(int32_t *vv){
	 	 *vv=BASIC_FILE_VAR_size; // new record is called  first, basic_file_var_size increments so the id is the new size - 1
	}
	
	 void BASIC_FILE_VAR__NEW_RECORD(int32_t vv){
	 	int i=0;	 	
		 for(;i<5;i++)
			BASIC_FILE_VAR__file_vrb[BASIC_FILE_VAR_size+1][i] = vv;
		
		BASIC_FILE_VAR_size++;		 	
	 }
	 
	 void BASIC_FILE_VAR__READ_FILE(int32_t ii){
	 	int i,j;	 	
		 if(ii)
		  for(i=0; i < BASIC_FILE_VAR_size; i++)
		  for(j=0;j<5;j++)
		 BASIC_FILE_VAR__file_vrb[i][j] = FILE_ACCESS__buffer[i][j];
	 	//	BASIC_FILE_VAR__buf_vrb[i] = BASIC_FILE_VAR__file_vrb[ii][i];
	 }
	 
	 void BASIC_FILE_VAR__WRITE_FILE(int32_t ii){
	 int i;	 	
		 for(i=0; i < 5; i++)
	 		BASIC_FILE_VAR__file_vrb[ii][i] = BASIC_FILE_VAR__buf_vrb[i] ;	 
	 }
