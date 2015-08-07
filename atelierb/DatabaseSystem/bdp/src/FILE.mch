/* FILE
 * Author: T0164919
 * Creation date: 7/29/2015
 */
 /*
 This machine encapsulates a file considered to be a finite sequence of "record values", of maximum size max_rec.
A "record_value is a total function from FIELD set to VALUE set"
 */
MACHINE
    FILE ( max_rec , FIELD , VALUE )
CONSTRAINTS
    max_rec : NAT1
ABSTRACT_VARIABLES
    file
INITIALISATION
    file := <>
INVARIANT
    file : seq ( FIELD --> VALUE ) &
    size ( file ) <= max_rec
OPERATIONS
    /*
    val_file acceses the value of a particular field of a certain record in the file
    */
    vv <-- val_file ( oo , ii ) =
    PRE
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
        file := file <- ( FIELD * { vv } ) || // /INDEX in page 613, probably typo
        oo := size ( file ) + 1
    END ;
    /*returns the size of file*/
    vv <-- size_file =
    BEGIN
        vv := size ( file )
    END
END
