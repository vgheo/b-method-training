/* FILE_ACCESS
* Author: T0164919
* Creation date: 7/29/2015
*/
MACHINE
    FILE_ACCESS ( max_rec  )
CONSTRAINTS
    max_rec : NAT1
    
CONCRETE_VARIABLES
    bfile , buffer , updated
    
INVARIANT
    bfile : NAT --> ( FIELD --> VALUE ) & /*[B0Check Requirement]: Invalid ident type abstract variable for identifier (concrete data expected) */
    bfile : seq ( FIELD --> VALUE ) &
    buffer : NAT --> ( FIELD --> VALUE ) & /*[B0Check Requirement]: Invalid ident type abstract variable for identifier (concrete data expected) */
    buffer : dom ( bfile ) +-> ( FIELD --> VALUE ) &
    updated : BOOL &
    ( updated = FALSE => buffer <: bfile ) &
    ( updated = TRUE => buffer /= {} )
    
INITIALISATION
    bfile , buffer , updated := [] , {} , FALSE
    /*
    [Translator Requirement]:
    Moved Definitions from PARTIAL_OBJECT (where these sets are effectively valued and passed as paramaters) because  code generator does not translates SET formal paramteres of a machine.
    */
    
    /*
    [Translator Requirement]:
    Sets' definitions modified so that they start from 0 beacause of translator requirement:"Lower bound of array must be 0".
    */
DEFINITIONS
    FIELD == (0..4);
    VALUE == (0..10000)
OPERATIONS
    get_record ( oo ) =
    PRE
        oo : NAT1 & /*[B0Check Requirement]: Invalid ident type abstract variable for identifier (concrete data expected) */
        oo : dom ( bfile )
    THEN
        buffer := { oo |-> bfile ( oo ) } ||
        updated := FALSE
    END ;
    
    put_buffer =
    PRE
        updated = TRUE
    THEN
        bfile := bfile <+ buffer
    END ;
    
    oo <-- create_record ( vv ) =
    PRE
        vv : VALUE &
        size ( bfile ) /= max_rec
    THEN
        
        bfile := bfile <- ( FIELD * { vv } ) ||/*[Possible typo]:renamed INDEX to FIELD*/
        oo := size ( bfile ) + 1
    END ;
    
    vv <-- not_in_buffer ( oo ) =
    PRE
        oo : NAT1 & /*[B0Check Requirement]: Invalid ident type abstract variable for identifier (concrete data expected) */
        oo : 1 .. size ( bfile )
    THEN
        vv := bool ( oo /: dom ( buffer ) )
    END ;
    
    mod_buffer ( oo , ii , vv ) =
    PRE
        oo : NAT1 & /*[B0Check Requirement]: Invalid ident type abstract variable for identifier (concrete data expected) */
        oo : dom ( buffer ) &
        ii : FIELD &
        vv : VALUE
    THEN
        buffer ( oo ) ( ii ) := vv ||
        updated := TRUE
    END ;
    vv <-- size_file =
    BEGIN
        vv := size ( bfile )
    END ;
    
    vv <-- val_buffer ( oo , ii ) =
    PRE
        oo : NAT1 & /*[B0Check Requirement]: Invalid ident type abstract variable for identifier (concrete data expected) */
        oo : dom ( buffer ) &
        ii : FIELD
    THEN
        vv := buffer ( oo ) ( ii )
    END
END