/* BASIC_SEX
 * Author: T0164919
 * Creation date: 7/30/2015
 */
MACHINE
    BASIC_SEX
SETS
    SEX = { man , woman }
ABSTRACT_CONSTANTS
    code_SEX , decode_SEX
PROPERTIES
    code_SEX : SEX >->> { 0 , 1 } &
    decode_SEX =  code_SEX ~
OPERATIONS
    rr <-- SEX_READ =
    BEGIN
        rr :: SEX
    END ;
    SEX_WRITE ( ii ) =
    PRE
        ii : SEX
    THEN
        skip
    END
END
