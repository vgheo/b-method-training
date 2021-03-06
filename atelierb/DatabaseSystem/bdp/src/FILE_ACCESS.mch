﻿/* FILE_ACCESS
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
    bfile : NAT --> ( ( 0 .. 4 ) --> ( 0 .. 10000 ) ) &
    bfile : seq ( ( 0 .. 4 ) --> ( 0 .. 10000 ) ) &
    buffer : NAT --> ( ( 0 .. 4 ) --> ( 0 .. 10000 ) ) &
    buffer : dom ( bfile ) +-> ( ( 0 .. 4 ) --> ( 0 .. 10000 ) ) &
    updated : BOOL &
    ( updated = FALSE => buffer <: bfile ) &
    ( updated = TRUE => buffer /= {} )

INITIALISATION
    bfile , buffer , updated := <> , {} , FALSE



OPERATIONS
get_record ( oo ) =
    PRE
    oo : NAT1 & /*concrete typing for B0 check*/
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
    vv : ( 0 .. 10000 ) &
    size ( bfile ) /= max_rec
    THEN
    /*Warning possible typo => renamed INDEX to FIELD*/
    bfile := bfile <- ( ( 0 .. 4 ) * { vv } ) ||
    oo := size ( bfile ) + 1
    END ;

vv <-- not_in_buffer ( oo ) =
    PRE
    oo : NAT1 & /*concrete typing for B0 check*/
    oo : 1 .. size ( bfile )
    THEN
    vv := bool ( oo /: dom ( buffer ) )
    END ;

mod_buffer ( oo , ii , vv ) =
    PRE
    oo : NAT1 & /*concrete typing for B0 check*/
    oo : dom ( buffer ) &
    ii : ( 0 .. 4 ) &
    vv : ( 0 .. 10000 )
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
    oo : NAT1 & /*concrete typing for B0 check*/
    oo : dom ( buffer ) &
    ii : ( 0 .. 4 )
    THEN
    vv := buffer ( oo ) ( ii )
END
END
