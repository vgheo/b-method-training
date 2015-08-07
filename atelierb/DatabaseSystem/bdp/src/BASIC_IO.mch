/* BASIC_IO
 * Author: T0164919
 * Creation date: 7/30/2015
 */
MACHINE
    BASIC_IO


OPERATIONS
    nn <-- INTERVAL_READ ( aa , bb ) =
    PRE
        aa : INT &
        bb : INT &
        aa <= bb
    THEN
        nn :: aa .. bb
    END ;

    INT_WRITE ( nn ) =
    PRE
        nn : INT
    THEN
        skip
    END ;

    bb <-- BOOL_READ =
    BEGIN
        bb :: BOOL
    END ;

    BOOL_WRITE ( bb ) =
    PRE
        bb : BOOL
    THEN
        skip
    END ;

    bb <-- CHAR_READ =
    BEGIN
        bb :: 0 .. 255
   END ;

   CHAR_WRITE ( bb ) =
   PRE
       bb : 0 .. 255
   THEN
       skip
   END ;

   STRING_WRITE ( ss ) =
   PRE
       ss : STRING
   THEN
       skip
   END




END
