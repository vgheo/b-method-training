/* BASIC_STATUS
 * Author: T0164919
 * Creation date: 7/30/2015
 */
MACHINE
    BASIC_STATUS
SETS
    STATUS = { dead , living }
CONCRETE_CONSTANTS
    code_STATUS , decode_STATUS
PROPERTIES
    code_STATUS : STATUS >->> ( 0 .. 1 ) &
    decode_STATUS : ( 0 .. 1 ) >->> STATUS &
    decode_STATUS = code_STATUS ~
OPERATIONS
    rr <-- STATUS_READ =
    BEGIN
        rr :: STATUS
    END ;
    STATUS_WRITE ( ii ) =
    PRE
        ii : STATUS
    THEN
        skip
    END

END
