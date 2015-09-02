 #include "BASIC_IO.h"
 
  void BASIC_IO__INITIALISATION(void)
   { 
	 	
   } 
	 
  void BASIC_IO__STRING_WRITE(const char* ss)
   { 
 	//printf("[IO_STRING_WRITE]: %s",ss);
 	printf("%s",ss);
   }
	 
   void BASIC_IO__INTERVAL_READ(int32_t aa, int32_t bb, int32_t *nn) 
   {
	 	//printf("[INTERVAL_READ]:");
		scanf("%d",nn);
		if( (*nn) < aa  || (*nn) > bb){
			printf("INVALID VALUE!\nExpected value in [%d,%d].\nInitializing with with default value DATA_BASE__PERSON__max + 1 (%d)\n",aa,bb,DATA_BASE__PERSON__max + 1);
			(*nn)=DATA_BASE__PERSON__max + 1;
		}
    }
	 
	 void BASIC_IO__INT_WRITE(int32_t nn) 
	{
	 	printf("%d",nn);
	}
 
