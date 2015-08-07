/* PARTIAL_OBJECT
 * Author: T0164919
 * Creation date: 7/30/2015
 */
MACHINE
    PARTIAL_OBJECT ( max_obj , max_field , min_val , max_val )
CONSTRAINTS
    max_obj : NAT1 &
    max_field : NAT1 &
    min_val : NAT &
    max_val : NAT &
    max_val < MAXINT
ABSTRACT_VARIABLES
    partial_object , partial_field
INITIALISATION
    partial_object := 0 ||
    /*the original model initiated partial_field with {},but the prover proved false with this initial value.*/
    partial_field := {}
INVARIANT
    partial_object : 0 .. max_obj &
    partial_field : 1 .. max_field --> ( 1 .. partial_object +-> min_val .. max_val )





OPERATIONS
    oo <-- create_partial_object =
    PRE
        partial_object /= max_obj
    THEN
        partial_object := partial_object + 1 ||
        oo := partial_object + 1
    END ;

    mod_field ( ii , oo , vv ) =
    PRE
        ii : 1 .. max_field &
        oo : 1 .. partial_object &
        vv : min_val .. max_val
    THEN
        partial_field ( ii ) ( oo ) := vv
    END ;

    rem_field ( ii , oo ) =
    PRE
        ii : 1 .. max_field &
        oo : 1 .. partial_object
    THEN
        partial_field ( ii ) := { oo } <<| partial_field ( ii )
    END ;

    vv <-- def_field ( ii , oo ) =
    PRE
        ii : 1 .. max_field &
        oo : 1 .. partial_object
    THEN
        vv := bool ( oo : dom ( partial_field ( ii ) ) )
    END ;

    vv <-- val_field ( ii , oo ) =
    PRE
        ii : 1 .. max_field &
        oo : dom ( partial_field ( ii ) )
    THEN
        vv := partial_field ( ii ) ( oo )
    END ;

    vv <-- nbr_object =
    BEGIN
        vv := partial_object
    END
 END
