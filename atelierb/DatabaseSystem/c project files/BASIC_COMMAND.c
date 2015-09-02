 #include "BASIC_COMMAND.h"
 
 
  void BASIC_COMMAND__INITIALISATION(void)
  {
	 	
  }
  void BASIC_COMMAND__COMMAND_READ(BASIC_COMMAND__COMMAND *rr)
  {		char input[20];
  
	 	printf("\n[COMMAND_READ]:Insert command :\n(new:0,birth:1,marriage:2,death:3,print:4,quit:5)\n");
	 	scanf("%s",input);	
	 	
	 	*rr = *input - '0';
	 	if((*rr) < 0 || (*rr)>5)
	 	{ 
		  printf("[COMMAND_READ]:INVALID COMMAND!\nExpected value in [0,5] interval.\n") ;
		  *rr = INT_MAX;
		}
  } 
  
  void BASIC_COMMAND__COMMAND_WRITE(BASIC_COMMAND__COMMAND ii)
  {
  	
  }
