//Comment added by  me


    /* Lift
     * Author: T0164919
     * Creation date: 7/8/2015
     */
MACHINE
    /*
      In our example the machine is named Lift and is the proposed model for the informal specification of a n lift system of an m floor building.
    */
    Lift

SETS
    /* 
      In our model LIFT is a deffered set and DIRECTION is an enumerated set, whose members are up and dn (abbreviation for down.)
    */

    LIFT ;
    DIRECTION = { up , dn }

CONCRETE_CONSTANTS
    /* We defined two constants: ground_floor and top_floor.
     
       WARNING: top is a reserved word -> top of a tree 5.21 => Renamed top_floor
             Renamed ground to ground_floor to mantain consistency with top_floor
    */

    ground_floor , top_floor

PROPERTIES
    /*
       We defined ground_floor and top_floor as natural numbers,because they express floors, and they have the propeerty that ground_floor is smaller than top_floor.
    */
    ground_floor : NAT &
    top_floor : NAT &
    ground_floor < top_floor

















ABSTRACT_VARIABLES
    /*
    We defined:
    1.moving - the set of moving lifts.
    2.current_floor - the floor on wich the lift is currently stopped or is about to arrive.
    3.dir - the direction in  wich the lift is moving.
    4.in - the set that holds the requests for a particular direction from  a certain floor.
    5. out - the set that holds the request  to get down from a lift to a certain floor.    
    */
    /*
    WARNING: floor is a reserved word => Renamed current_floor.
    */
    moving , current_floor , dir , in , out

INVARIANT
    /*
    The invariant conditions are:
    1.moving is a subset of LIFT.
    2.dir is a set of pairs (lift,floors), specified as a total function from LIFT to FLOOR
    3.in is a subset of the relation between FLOOR and DIRECTION.
    4.out is a subset of the relation between LIFT and DIRECTION.
    5.there are no requests allowed from the ground_floor to dn.
    5.there are no requests allowed from the top_floor to up. 
    6.it is not allowed to ask a lift to stop at a floor if it is already stopped or is about to arrive.
    7.it is not allowed for a lift l1 to take requests from a floor if there is another lift l2 stopped at that floor and l2 is going in the same direction.
    */
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
    /*
    Initially there are no kind of requests, there are no moving lifts, all lifts start from the ground floor and have the direction set to up.
    */
    in , out , moving := {} , {} , {} ||
    current_floor , dir := LIFT * { ground_floor } , LIFT * { up }

OPERATIONS
    /*
       WARNING: f,l identifiers shorter than 2 letters => renamed ll,ff
    
       Request_Floor registers a new request to go down from a lift to a certain floor.    
    */
    Request_Floor ( ll , ff ) =

        PRE
            ll : LIFT &
            ff : ground_floor .. top_floor &
            ( ll /: moving => current_floor ( ll ) /= ff )
        THEN
            out := out \/ { ll |-> ff }
        END ;
    /*
       Request_Lift registers a new request to go in a certain direction from a certain floor.
    */
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
     /*
       Continue_up updates the current_floor of a lift while moving in the up direction.  
     */
     Continue_up ( ll ) =
     PRE
         ll : moving &
         dir ( ll ) = up &
         ( ll |-> current_floor ( ll ) ) /: out & ( current_floor ( ll ) |-> dir ( ll ) ) /: in & ( dom ( in ) \/ out [ { ll } ] ) /\ ( ( current_floor ( ll ) + 1 ) .. top_floor ) /= {}
     THEN
         current_floor ( ll ) := current_floor ( ll ) + 1
     END ;
     /*
       Continue_dn updates the current_floor of a lift while moving in the dn direction.  
     */
      Continue_dn ( ll ) =
     PRE
         ll : moving &
         dir ( ll ) = dn &
         ( ll |-> current_floor ( ll ) ) /: out & ( current_floor ( ll ) |-> dir ( ll ) ) /: in & ( dom ( in ) \/ out [ { ll } ] ) /\ ( ground_floor .. ( current_floor ( ll ) - 1 ) ) /= {}
     THEN
         current_floor ( ll ) := current_floor ( ll ) - 1
     END ;
     /*
       Stop_up updates the systems state by removing a lift from the moving set if it can not continue his movement in the up direction.Also it updates the request sets accordingly.
     */
     Stop_up ( ll ) =
     PRE
         ll : moving &
         dir ( ll ) = up &
         not ( ( ll |-> current_floor ( ll ) ) /: out & ( current_floor ( ll ) |-> dir ( ll ) ) /: in & ( dom ( in ) \/ out [ { ll } ] ) /\ ( ( current_floor ( ll ) + 1 ) .. top_floor ) /= {} )
    THEN
        moving := moving - { ll } ||
        out := out - { ll |-> current_floor ( ll ) } ||
        in  := in  - { current_floor ( ll ) |-> dir ( ll ) }
    END ;
     /*
       Stop_dn updates the systems state by removing a lift from the moving set if it can not continue his movement in the dn direction.Also it updates the request sets accordingly.
     */
    Stop_dn ( ll ) =
    PRE
         ll : moving &
         dir ( ll ) = dn &
         not ( ( ll |-> current_floor ( ll ) ) /: out & ( current_floor ( ll ) |-> dir ( ll ) ) /: in & ( dom ( in ) \/ out [ { ll } ] ) /\ ( ground_floor .. ( current_floor ( ll ) - 1 ) ) /= {} )
    THEN
        moving := moving - { ll } ||
        out := out - { ll |-> current_floor ( ll ) } ||
        in  := in - { current_floor ( ll ) |-> dir ( ll ) }
    END ;
    /*
       Depart_up updates the systems state by adding a new lift to the moving set after receving a request for the up direction and updates his current_floor.
    */
    Depart_up ( ll ) =
    PRE
        ll : LIFT - moving &
        dir ( ll ) = up &
        ( dom ( in ) \/ out [ { ll } ] ) /\ ( ( current_floor ( ll ) + 1 ) .. top_floor ) /= {}
    THEN
        moving := moving \/ { ll } ||
        current_floor ( ll ) := current_floor ( ll ) + 1
    END ;
    /*
       Depart_dn updates the systems state by adding a new lift to the moving set after receving a request for the dn direction and updates his current_floor.
    */
    Depart_dn ( ll ) =
    PRE
        ll : LIFT - moving &
        dir ( ll ) = dn &
        ( dom ( in ) \/ out [ { ll } ] ) /\ ( ground_floor .. ( current_floor ( ll ) - 1 ) ) /= {}
    THEN
        moving := moving \/ { ll } ||
        current_floor ( ll ) := current_floor ( ll ) - 1
    END ;
    /*
    Change_up_to_dn changes the moving direction of a lift from up to dn if it is not moving and updates the in set by removing other down requets from current floor with this lift.
    */
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
   /*
    Change_dn_to_up changes the moving direction of a lift from dn to up if it is not moving and updates the in set by removing other up requets from current_floor with this lift.
    */
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
