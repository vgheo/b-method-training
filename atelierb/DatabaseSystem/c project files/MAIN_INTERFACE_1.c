/* WARNING if type checker is not performed, translation could contain errors ! */

#include "MAIN_INTERFACE.h"

/* Clause IMPORTS */
#include "INNER_INTERFACE.h"
#include "BASIC_COMMAND.h"
#include "BASIC_SEX.h"
#include "BASIC_STATUS.h"
#include "BASIC_IO.h"
#include "BASIC_FILE_VAR.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void MAIN_INTERFACE__INITIALISATION(void)
{
    
    BASIC_COMMAND__INITIALISATION();
    BASIC_IO__INITIALISATION();
    BASIC_SEX__INITIALISATION();
    BASIC_STATUS__INITIALISATION();
    INNER_INTERFACE__INITIALISATION();
}

/* Clause OPERATIONS */

int main(void)
{
    BASIC_COMMAND__COMMAND cc;
    int32_t xx;
    
    BASIC_COMMAND__COMMAND_READ(&cc);
    xx = INT_MAX;
    while((((cc) != (BASIC_COMMAND__quit))) &&
    (((xx) != (0))))
    {
        switch(cc)
        {
            case BASIC_COMMAND__new : {
                
				printf("[INNER_INTERFACE__first_operation]:\n");
                INNER_INTERFACE__first_operation();
                break;
            }
            case BASIC_COMMAND__birth : {
                
				printf("[INNER_INTERFACE__birth_operation]:\n");
                INNER_INTERFACE__birth_operation();
                break;
            }
            case BASIC_COMMAND__marriage : {
                
                
                printf("[INNER_INTERFACE__marriage_operation]:\n");
                INNER_INTERFACE__marriage_operation();
				break;
            }
            case BASIC_COMMAND__death : {
                
                
                printf("[INNER_INTERFACE__death_operation]:\n");
                INNER_INTERFACE__death_operation();
                break;
            }
            case BASIC_COMMAND__print : {
                
                
                printf("[INNER_INTERFACE__print_operation]\n");
                //INNER_INTERFACE__print_operation();
                {
            	int i;
            	for(i=1; i<=BASIC_FILE_VAR_size; i++)
            	{
				printf("person[%d]:",i);
				if(FILE_ACCESS__buffer[i][1] == BASIC_SEX__man)
					printf(" man ");
					else 
				if(FILE_ACCESS__buffer[i][1] == BASIC_SEX__woman)					
					printf("woman");
					else
					printf("x%dx",FILE_ACCESS__buffer[i][2]);
					
				if(FILE_ACCESS__buffer[i][2] == BASIC_STATUS__living)
					printf(" living ");
					else
				if(FILE_ACCESS__buffer[i][2] == BASIC_STATUS__dead )
					printf("  dead  ");
					else
					printf("x%dx",FILE_ACCESS__buffer[i][2]);
					
				printf(" %d ",FILE_ACCESS__buffer[i][3]);		
				printf(" %d ",FILE_ACCESS__buffer[i][4]);	
				
				printf("\n");
				}
                break;
            }}
            default:
				break;
			}
        
        BASIC_COMMAND__COMMAND_READ(&cc);
        xx = xx-1;
    }
	
	return 0;
}

