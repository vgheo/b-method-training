	 #include<stdio.h>
	 #include "BASIC_STATUS.h"
	 #include "BASIC_SEX.h"
	 #include "BASIC_COMMAND.h"
	 #include "BASIC_FILE_VAR.h"
	 #include "DATA_BASE.h"
	 
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
	 	printf("[IO_STRING_WRITE]:%s",ss);
	 }
	 
	 void BASIC_IO__INTERVAL_READ(int32_t aa, int32_t bb, int32_t *nn){
	 	printf("[INTERVAL_READ]:");
		scanf("%d",nn);
		if( (*nn) < aa  || (*nn) > bb){
			printf("INVALID VALUE!\n");
			(*nn)=DATA_BASE__PERSON__max + 1;
		}
	 }
	 
	 void BASIC_IO__INT_WRITE(int32_t nn){
	 	printf(" %d ",nn);
	 }
	  
	 /*BASIC_SEX*/ 
	 void BASIC_SEX__INITIALISATION(void){
	 	
	 }
	 
	 void BASIC_SEX__SEX_READ(BASIC_SEX__SEX *rr){
	 	printf("[SEX_READ](man:0,woman:1)");
	 	scanf("%d",rr);
	 }
	 
	 void BASIC_SEX__SEX_WRITE(BASIC_SEX__SEX ii){
	 	printf("[SEX_WRITE]:%s\n",ii);
	 }
	 
	 /*BASIC_STATUS*/
	 void BASIC_STATUS__INITIALISATION(void){
	 	
	 }
	 void BASIC_STATUS__STATUS_WRITE(BASIC_STATUS__STATUS ii){
	 	if(ii = BASIC_STATUS__dead)
		 printf("[STATUS_WRITE]:DEAD\n");
		 else
		 if(ii = BASIC_STATUS__living)
		 printf("[STATUS_WRITE]:LIVING\n");
		 else
		 printf("[STATUS_WRITE]:INVALID PARAMETER\n");
	 }
	 
	 /*BASIC_COMMAND*/
	 void BASIC_COMMAND__INITIALISATION(void){
	 	
	 }
	 void BASIC_COMMAND__COMMAND_READ(BASIC_COMMAND__COMMAND *rr){
	 	printf("[COMMAND_READ]:Insert command :\n(new:0,birth:1,marriage:2,death:3,print:4,quit:5)\n");
	 	scanf("%d",rr);	
	} 
	 
	 /*BASIC_FILE_VAR*/
	 void BASIC_FILE_VAR__INITIALISATION(void){
	 	
	 }
	 
	 void BASIC_FILE_VAR__SIZE_FILE(int32_t *vv){
	 	 *vv=BASIC_FILE_VAR_size;
	 	 //*vv = sizeof(BASIC_FILE_VAR__file_vrb)/ sizeof(int32_t);
	}
	
	 void BASIC_FILE_VAR__NEW_RECORD(int32_t vv){
	 	int i=0;	 	
		 for(;i<5;i++)
			BASIC_FILE_VAR__file_vrb[BASIC_FILE_VAR_size][i] = vv;
		
		BASIC_FILE_VAR_size++;		 	
	 }
	 
	 void BASIC_FILE_VAR__READ_FILE(int32_t ii){
	 	int i=0;	 	
		 for(; i < 5; i++)
	 		BASIC_FILE_VAR__buf_vrb[i] = BASIC_FILE_VAR__file_vrb[ii][i];
	 }
	 
	 void BASIC_FILE_VAR__WRITE_FILE(int32_t ii){
	 int i=0;	 	
		 for(; i < 5; i++)
	 		BASIC_FILE_VAR__file_vrb[ii][i] = BASIC_FILE_VAR__buf_vrb[i] ;	 
	 }
