/* BASIC_FILE_VAR
 * Author: T0164919
 * Creation date: 7/30/2015
 */
MACHINE
    BASIC_FILE_VAR ( max_rec  )
CONSTRAINTS
    max_rec : NAT1

CONCRETE_VARIABLES
    buf_vrb , file_vrb
INITIALISATION
    buf_vrb :: FIELD --> VALUE ||
    file_vrb := []
INVARIANT
    buf_vrb : FIELD --> VALUE &
    file_vrb : NAT --> ( FIELD --> VALUE ) &
    file_vrb : seq ( FIELD --> VALUE ) &
    size ( file_vrb ) < max_rec
DEFINITIONS
    FIELD == ( 0 .. 4 ) ;
    VALUE == ( 0 .. 10000 )
OPERATIONS
    READ_FILE ( ii ) =
    PRE
        ii : NAT & /*typing expression for B0 check*/
        ii : dom ( file_vrb )
    THEN
        buf_vrb := file_vrb ( ii )
    END ;

    WRITE_FILE ( ii ) =
    PRE
        ii : NAT & /*typing expression for B0 check*/
        ii : dom ( file_vrb )
    THEN
    file_vrb ( ii ) := buf_vrb
    END ;

    NEW_RECORD ( vv ) =
    PRE
        vv : VALUE &
        size ( file_vrb ) /= max_rec
    THEN
    file_vrb := file_vrb <- (  FIELD *  { vv } )
    END ;

    vv <-- SIZE_FILE =
    BEGIN
        vv := size ( file_vrb )
    END ;

    RESET_FILE =
    BEGIN
        file_vrb := []
    END



END
