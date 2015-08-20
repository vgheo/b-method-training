/* TOTAL_OBJECT
* Author: T0164919
* Creation date: 7/30/2015
*/
MACHINE
    TOTAL_OBJECT ( max_obj )
CONSTRAINTS
    max_obj : NAT1
ABSTRACT_VARIABLES
    total_object , total_field
INITIALISATION
    total_object , total_field := 0 , ( 1 .. 4 ) * { {} }


INVARIANT
    total_object : 0 .. max_obj &
    total_field : ( 1 .. 4 ) --> ( 1 .. total_object --> ( 0 .. 10000 ) )





OPERATIONS
    oo <-- create_total_object ( vv ) =
    PRE
        vv : ( 0 .. 10000 ) &
        total_object /= max_obj
    THEN
        total_object := total_object + 1 ||
        total_field := % ii . ( ii : ( 1 .. 4 ) | total_field ( ii ) \/ { ( total_object + 1 ) |-> vv } ) ||
        oo := total_object + 1
    END ;

    mod_field ( ii , oo , vv ) =
    PRE
        ii : ( 1 .. 4 ) &
        oo : 1 .. total_object &
        vv : ( 0 .. 10000 )
    THEN
        total_field ( ii ) ( oo ) := vv
    END ;
    vv <-- val_field ( ii , oo ) =
    PRE
        ii : ( 1 .. 4 ) &
        oo : 1 .. total_object
    THEN
        vv := total_field ( ii ) ( oo )
    END ;

    vv <-- nbr_object =
    BEGIN
        vv := total_object
    END
END
