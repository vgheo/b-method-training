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
    total_object , total_field := 0 , FIELD * { {} }
    
    
INVARIANT
    total_object : 0 .. max_obj &
    total_field : FIELD --> ( OBJECT --> VALUE )
    /*
    [Translator Requirement]:
    Moved Definitions from PARTIAL_OBJECT (where these sets are effectively valued and passed as paramaters) because  code generator does not translates SET formal paramteres of a machine.
    */
    
    /*
    [Translator Requirement]:
    Sets' definitions modified so that they start from 0 beacause of translator requirement:"Lower bound of array must be 0".
    */
DEFINITIONS
    OBJECT == 1 .. total_object;
    FIELD == (0..4);
    VALUE == (0..10000)
OPERATIONS
    oo <-- create_total_object (vv) =
    PRE
        vv : VALUE &
        total_object /= max_obj
    THEN
        total_object := total_object + 1 ||
        total_field := % ii . ( ii : FIELD | total_field ( ii ) \/ { ( total_object + 1 ) |-> vv } ) ||
        oo := total_object + 1
    END ;
    
    mod_field ( ii , oo , vv ) =
    PRE
        ii : FIELD &
        oo : OBJECT &
        vv : VALUE
    THEN
        total_field ( ii ) ( oo ) := vv
    END ;
    vv <-- val_field ( ii , oo ) =
    PRE
        ii : FIELD &
        oo : OBJECT
    THEN
        vv := total_field ( ii ) ( oo )
    END ;
    
    vv <-- nbr_object =
    BEGIN
        vv := total_object
    END    
END