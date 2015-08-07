/* FILE_ACCESS
 * Author: T0164919
 * Creation date: 7/29/2015
 */
MACHINE
    FILE_ACCESS ( max_rec , FIELD , VALUE )
CONSTRAINTS
    max_rec : NAT1

CONCRETE_VARIABLES
    bfile , buffer , updated

INVARIANT
    bfile : seq ( FIELD --> VALUE ) &
    buffer : dom ( bfile ) +-> ( FIELD --> VALUE ) &
    updated : BOOL &
    ( updated = FALSE => buffer <: bfile ) &
    ( updated = TRUE => buffer /= {} )

INITIALISATION
    bfile , buffer , updated := [] , {} , FALSE

OPERATIONS
get_record ( oo ) =
    PRE
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
    /*Warning possible typo => renamed INDEX to FIELD*/
    bfile := bfile <- ( FIELD * { vv } ) ||
    oo := size ( bfile ) + 1
    END ;

vv <-- not_in_buffer ( oo ) =
    PRE
    oo : 1 .. size ( bfile )
    THEN
    vv := bool ( oo /: dom ( buffer ) )
    END ;

mod_buffer ( oo , ii , vv ) =
    PRE
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
    oo : dom ( buffer ) &
    ii : FIELD
    THEN
    vv := buffer ( oo ) ( ii )
    END


END
