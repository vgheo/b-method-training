/* FILE_BUFFER
* Author: T0164919
* Creation date: 7/29/2015
*/
/*
The buffer is a part of the file that resides in the core for further processing.Therefore all changes or acceses of the file are made through the buffer
*/
MACHINE
    FILE_BUFFER ( max_rec )
CONSTRAINTS
    max_rec : NAT1
ABSTRACT_VARIABLES
    buffer , bfile
INITIALISATION
    /*[Possible typo]: pag614, sfile renamed to bfile.*/
    bfile , buffer := [] , {}
INVARIANT
    bfile : seq ( FIELD --> VALUE ) &
    buffer : dom ( bfile ) +-> ( FIELD --> VALUE )
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
    oo <-- create_record ( vv ) =
    PRE
        vv : VALUE &
        size ( bfile ) /= max_rec
    THEN
        /*[Possible typo]: renamed INDEX to FIELD.*/
        bfile := bfile <- ( FIELD * { vv } ) ||
        oo := size ( bfile ) + 1
    END ;
    
    load_buffer ( oo ) =
    PRE
        oo : NAT & /*[B0Check Requirement]: Invalid ident type abstract variable for identifier (concrete data expected) */
        oo : dom ( bfile ) &
        oo /: dom ( buffer )
    THEN
        bfile := bfile <+ buffer ||
        buffer := { oo |-> bfile ( oo ) }
    END ;
    
    vv <-- size_file =
    BEGIN
        vv := size ( bfile )
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
        /*[Possible typo]: renamed bfile in buffer because model would have been false -- bfile not included in bfile so it possible to apply buufer on something out of his domaine*/
        oo : NAT & /*[B0Check Requirement]: Invalid ident type abstract variable for identifier (concrete data expected) */
        oo : dom ( buffer ) &
        ii : FIELD &
        vv : VALUE
    THEN
        buffer ( oo ) ( ii ) := vv
    END ;
    
    vv <-- val_buffer ( oo , ii ) =
    PRE
        oo : NAT & /*[B0Check Requirement]: Invalid ident type abstract variable for identifier (concrete data expected) */
        oo : dom ( buffer ) &
        ii : FIELD
    THEN
        vv := buffer ( oo ) ( ii )
    END
END
