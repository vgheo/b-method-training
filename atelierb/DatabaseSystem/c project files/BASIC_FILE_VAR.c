#include "BASIC_FILE_VAR.h"
  
int32_t BASIC_FILE_VAR_size = 0; //added in order to measure the effective ocupied size of file_vrb
 
int32_t BASIC_FILE_VAR__buf_vrb[5];        
int32_t BASIC_FILE_VAR__file_vrb[10000][5];
  
void BASIC_FILE_VAR__INITIALISATION(void)
{
	
} 
 
 void BASIC_FILE_VAR__SIZE_FILE(int32_t *vv)
 {
  *vv=BASIC_FILE_VAR_size; // new record is called  first, basic_file_var_size increments so the id is the new size - 1
 }

 void BASIC_FILE_VAR__NEW_RECORD(int32_t vv)
 {
 	int i=0; 
 		for(;i<5;i++)
	BASIC_FILE_VAR__file_vrb[BASIC_FILE_VAR_size+1][i] = vv;

	BASIC_FILE_VAR_size++; 
 }
 
 void BASIC_FILE_VAR__READ_FILE(int32_t ii)
 {
 	int i,j; 
 	if(ii)
  		for(i=0; i < BASIC_FILE_VAR_size; i++)
  		for(j=0;j<5;j++)
 	BASIC_FILE_VAR__file_vrb[i][j] = FILE_ACCESS__buffer[i][j];
 //BASIC_FILE_VAR__buf_vrb[i] = BASIC_FILE_VAR__file_vrb[ii][i];
 }
 
 void BASIC_FILE_VAR__WRITE_FILE(int32_t ii)
 {
 	int i; 
 	for(i=0; i < 5; i++)
 	BASIC_FILE_VAR__file_vrb[ii][i] = BASIC_FILE_VAR__buf_vrb[i] ; 
 }
