 #include "BASIC_COMMAND.h"
 
 
  void BASIC_COMMAND__INITIALISATION(void)
  {
	 	
  }
  	/*This function must return a BASIC_COMMAND__COMMAND *.
  	 *It will read an integer corresponding to a command from the enum declared in BASIC_COMMAND.h file.
  	 *  If an invalid value is read it is discarded and the flow will enter in a loop until a valid command is entered !
	 *	for scanf return value and to avoid an endless loop if a nonnumeric character or string is inserted see : http://stackoverflow.com/questions/15456140/using-while-scanf-0-properly .
	*/
  void BASIC_COMMAND__COMMAND_READ(BASIC_COMMAND__COMMAND *rr)
 {  int32_t aux;
  	
  	printf("\n[COMMAND_READ]:Insert command :\n(new:0,birth:1,marriage:2,death:3,print:4,quit:5)\n");
	
	while(1)
	
	{int32_t rez = scanf("%d",&aux);	
		if(rez > 0)
		{
			if(aux >=0 && aux <=5)
			{
				*rr = aux;
				break;
			}	
		}
		else
		if(rez == 0 )
		{
			printf("[COMMAND_READ]:INVALID COMMAND !!!\n Expected value between 0 and 5 !\n");		
			printf("\n[COMMAND_READ]:Insert command :\n(new:0,birth:1,marriage:2,death:3,print:4,quit:5)\n");
			scanf("%*s");
		}
		else
		printf("[COMMAND_READ]:Error readind from console!");
	}	
  } 
  
  void BASIC_COMMAND__COMMAND_WRITE(BASIC_COMMAND__COMMAND ii)
  {
  	
  }
