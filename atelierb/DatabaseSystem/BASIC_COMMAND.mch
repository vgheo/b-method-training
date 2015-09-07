/* BASIC_COMMAND
* Author: T0164919
* Creation date: 7/30/2015
*/
MACHINE
    BASIC_COMMAND
SETS
    COMMAND = { new , birth , marriage , death , print , quit }
ABSTRACT_CONSTANTS
    code_COMMAND , decode_COMMAND
PROPERTIES
    code_COMMAND : COMMAND >->> { 0 , 1 , 2 , 3 , 4 , 5 } &
    decode_COMMAND = code_COMMAND ~
OPERATIONS
    rr <-- COMMAND_READ =
    BEGIN
        rr :: COMMAND
    END ;
    
    COMMAND_WRITE ( ii ) =
    PRE
        ii : COMMAND
    THEN
        skip
    END
    
END
