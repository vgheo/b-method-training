/* Lift
 * Author∈ T0164919
 * Creation date∈ 7÷8÷2015
 */
MACHINE
    Lift

SETS
    LIFT ;
    DIRECTION = { up , dn }

CONCRETE_CONSTANTS

    ground_floor , top_floor
    /*WARNING∈ top is a reserved word ⇾ top of a tree 5.21 ⇒ Renamed top_floor*/


PROPERTIES
    ground_floor : NAT &
    top_floor : NAT &
    ground_floor < top_floor







ABSTRACT_VARIABLES
    moving , current_floor , dir , in , out
    /*WARNING|∈ floor is a reserved word ⇒ Renamed current_floor*/
INVARIANT
    moving <: LIFT &
    current_floor : LIFT --> ground_floor .. top_floor &
    dir : LIFT --> DIRECTION &
    in : ground_floor .. top_floor <-> DIRECTION &
    out : LIFT <-> ground_floor .. top_floor &
    ( ground_floor |-> dn ) /: in &
    ( top_floor |-> up ) /: in &
    moving <<| ( out /\ current_floor ) = {} &
    in /\ ran ( moving <<| ( current_floor >< dir ) ) = {}

INITIALISATION
    in , out , moving := {} , {} , {} ||
    current_floor , dir := LIFT * { ground_floor } , LIFT * { up }

OPERATIONS
    Request_Floor ( ll , ff ) =
    /*WARNING∈ f,l identifiers shorter than 2 letters ⇒ renamed ll,ff*/
        PRE
            ll : LIFT &
            ff : ground_floor .. top_floor &
            ( ll /: moving => current_floor ( ll ) /= ff )
        THEN
            out := out \/ { ll |-> ff }
        END ;

    Request_Lift ( ff , dd ) =
    PRE
        ff : ground_floor .. top_floor &
        dd : DIRECTION &
        ( ff , dd ) /= ( ground_floor , dn ) &
        ( ff , dd ) /= ( top_floor , up ) &
        ( ff , dd ) /: ran ( moving <<| ( current_floor >< dir ) )
     THEN
         in := in \/ { ff |-> dd }
     END ;

     Continue_up ( ll ) =
     PRE
         ll : moving &
         dir ( ll ) = up &
         ( ll |-> current_floor ( ll ) ) /: out & ( current_floor ( ll ) |-> dir ( ll ) ) /: in & ( dom ( in ) \/ out [ { ll } ] ) /\ ( ( current_floor ( ll ) + 1 ) .. top_floor ) /= {}
     THEN
         current_floor ( ll ) := current_floor ( ll ) + 1
     END ;

      Continue_dn ( ll ) =
     PRE
             ll : moving &
         dir ( ll ) = dn &
         ( ll |-> current_floor ( ll ) ) /: out & ( current_floor ( ll ) |-> dir ( ll ) ) /: in & ( dom ( in ) \/ out [ { ll } ] ) /\ ( ground_floor .. ( current_floor ( ll ) - 1 ) ) /= {}
     THEN
         current_floor ( ll ) := current_floor ( ll ) - 1
     END ;

     Stop_up ( ll ) =
     PRE
         ll : moving &
         dir ( ll ) = up &
         not ( ( ll |-> current_floor ( ll ) ) /: out & ( current_floor ( ll ) |-> dir ( ll ) ) /: in & ( dom ( in ) \/ out [ { ll } ] ) /\ ( ( current_floor ( ll ) + 1 ) .. top_floor ) /= {} )
    THEN
        moving := moving - { ll } ||
        out := out - { ll |-> current_floor ( ll ) } ||
        in := in - { current_floor ( ll ) |-> dir ( ll ) }
    END ;

    Stop_dn ( ll ) =
    PRE
         ll : moving &
         dir ( ll ) = dn &
         not ( ( ll |-> current_floor ( ll ) ) /: out & ( current_floor ( ll ) |-> dir ( ll ) ) /: in & ( dom ( in ) \/ out [ { ll } ] ) /\ ( ground_floor .. ( current_floor ( ll ) - 1 ) ) /= {} )
    THEN
        moving := moving - { ll } ||
        out := out - { ll |-> current_floor ( ll ) } ||
        in := in - { current_floor ( ll ) |-> dir ( ll ) }
    END ;

    Depart_up ( ll ) =
    PRE
        ll : LIFT - moving &
        dir ( ll ) = up &
        ( dom ( in ) \/ out [ { ll } ] ) /\ ( ( current_floor ( ll ) + 1 ) .. top_floor ) /= {}
    THEN
        moving := moving \/ { ll } ||
        current_floor ( ll ) := current_floor ( ll ) + 1
    END ;

    Depart_dn ( ll ) =
    PRE
        ll : LIFT - moving &
        dir ( ll ) = dn &
        ( dom ( in ) \/ out [ { ll } ] ) /\ ( ground_floor .. ( current_floor ( ll ) - 1 ) ) /= {}
    THEN
        moving := moving \/ { ll } ||
        current_floor ( ll ) := current_floor ( ll ) - 1
    END ;

   Change_up_to_dn ( ll ) =
   PRE
        ll : LIFT - moving &
        dir ( ll ) = up &
        not ( ( dom ( in ) \/ out [ { ll } ] ) /\ ( ( current_floor ( ll ) + 1 ) .. top_floor ) /= {} ) &
        ( dom ( in ) \/ out [ { ll } ] ) /\ ( ground_floor .. ( current_floor ( ll ) - 1 ) ) /= {}
   THEN
       in := in - { current_floor ( ll ) |-> dn } ||
       dir ( ll ) := dn
   END ;

   Change_dn_to_up ( ll ) =
   PRE
        ll : LIFT - moving &
        dir ( ll ) = dn &
        not ( ( dom ( in ) \/ out [ { ll } ] ) /\ ( ground_floor .. ( current_floor ( ll ) - 1 ) ) /= {} ) &
        ( dom ( in ) \/ out [ { ll } ] ) /\ ( ( current_floor ( ll ) + 1 ) .. top_floor ) /= {}
   THEN
       in := in - { current_floor ( ll ) |-> up } ||
       dir ( ll ) := up
   END
END
