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

DEFINITIONS
    FLOOR == ground_floor .. top_floor ;
    attracted_up ( ll ) == ( dom ( in ) \/ out [ { ll } ] ) /\ ( ( current_floor ( ll ) + 1 ) .. top_floor ) /= {} ;
    attracted_dn ( ll ) == ( dom ( in ) \/ out [ { ll } ] ) /\ ( ground_floor .. ( current_floor ( ll ) - 1 ) ) /= {} ;
    can_continue_up ( ll ) == ( ll |-> current_floor ( ll ) ) /: out & ( current_floor ( ll ) |-> dir ( ll ) ) /: in & attracted_up ( ll ) ;
    can_continue_dn ( ll ) == ( ll |-> current_floor ( ll ) ) /: out & ( current_floor ( ll ) |-> dir ( ll ) ) /: in & attracted_dn ( ll )
ABSTRACT_VARIABLES
    moving , current_floor , dir , in , out
    /*WARNING|∈ floor is a reserved word ⇒ Renamed current_floor*/
INVARIANT
    moving <: LIFT &
    current_floor : LIFT --> FLOOR &
    dir : LIFT --> DIRECTION &
    in : FLOOR <-> DIRECTION &
    out : LIFT <-> FLOOR &
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
            ff : FLOOR &
            ( ll /: moving => current_floor ( ll ) /= ff )
        THEN
            out := out \/ { ll |-> ff }
        END ;

    Request_Lift ( ff , dd ) =
    PRE
        ff : FLOOR &
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
         can_continue_up ( ll )
     THEN
         current_floor ( ll ) := current_floor ( ll ) + 1
     END ;

      Continue_dn ( ll ) =
     PRE
             ll : moving &
         dir ( ll ) = dn &
         can_continue_dn ( ll )
     THEN
         current_floor ( ll ) := current_floor ( ll ) - 1
     END ;

     Stop_up ( ll ) =
     PRE
         ll : moving &
         dir ( ll ) = up &
         not ( can_continue_up ( ll ) )
    THEN
        moving := moving - { ll } ||
        out := out - { ll |-> current_floor ( ll ) } ||
        in := in - { current_floor ( ll ) |-> dir ( ll ) }
    END ;

    Stop_dn ( ll ) =
    PRE
         ll : moving &
         dir ( ll ) = dn &
         not ( can_continue_dn ( ll ) )
    THEN
        moving := moving - { ll } ||
        out := out - { ll |-> current_floor ( ll ) } ||
        in := in - { current_floor ( ll ) |-> dir ( ll ) }
    END ;

    Depart_up ( ll ) =
    PRE
        ll : LIFT - moving &
        dir ( ll ) = up &
        attracted_up ( ll )
    THEN
        moving := moving \/ { ll } ||
        current_floor ( ll ) := current_floor ( ll ) + 1
    END ;

    Depart_dn ( ll ) =
    PRE
        ll : LIFT - moving &
        dir ( ll ) = dn &
        attracted_dn ( ll )
    THEN
        moving := moving \/ { ll } ||
        current_floor ( ll ) := current_floor ( ll ) - 1
    END ;

   Change_up_to_dn ( ll ) =
   PRE
        ll : LIFT - moving &
        dir ( ll ) = up &
        not ( attracted_up ( ll ) ) &
        attracted_dn ( ll )
   THEN
       in := in - { current_floor ( ll ) |-> dn } ||
       dir ( ll ) := dn
   END ;

   Change_dn_to_up ( ll ) =
   PRE
        ll : LIFT - moving &
        dir ( ll ) = dn &
        not ( attracted_dn ( ll ) ) &
        attracted_up ( ll )
   THEN
       in := in - { current_floor ( ll ) |-> up } ||
       dir ( ll ) := up
   END
END
