/* FILE
* Author: T0164919
* Creation date: 7/29/2015
*/
/*
This machine encapsulates a file considered to be a finite sequence of "record values", of maximum size max_rec.
A "record_value is a total function from FIELD set to VALUE set"
*/
MACHINE
    FILE ( max_rec )
CONSTRAINTS
    max_rec : NAT1
ABSTRACT_VARIABLES
    file
INITIALISATION
    file := []
INVARIANT
    file : seq ( FIELD --> VALUE ) &
    size ( file ) <= max_rec
    
    /*moved Definitions from PARTIAL_OBJECT (where these sets are effectively valued and passed as paramaters) because  code generator does not translates SET formal paramteres of a machine.*/
    
    /*Sets' definitions modified so that they start from 0 beacause of translator requirement:"Lower bound of array must be 0"*/
DEFINITIONS
    FIELD == (0..4);
    VALUE == (0..10000)
OPERATIONS
    /*
    val_file acceses the value of a particular field of a certain record in the file
    */
    vv <-- val_file ( oo , ii ) =
    PRE
        oo : NAT & /*concrete typing*/
        oo : dom ( file ) &
        ii : FIELD
    THEN
        vv := file ( oo ) ( ii )
    END ;
    
    /*
    mod_file modifies the value of a particular field of a certain record in the file
    */
    mod_file ( oo , ii , vv ) =
    PRE
        oo : NAT & /*concrete typing*/
        oo : dom ( file ) &
        ii : FIELD &
        vv : VALUE
    THEN
        file ( oo ) ( ii ) := vv
    END ;
    /*add a new record*/
    oo <-- create_record ( vv ) =
    PRE
        vv : VALUE &
        size ( file ) < max_rec
    THEN
        file := file <- ( FIELD * { vv } ) || /* /INDEX in page 613, probably typo*/
        oo := size ( file ) + 1
    END ;
    /*returns the size of file*/
    vv <-- size_file =
    BEGIN
        vv := size ( file )
    END
END
