/* t1
 * Author: vgheorgh
 * Creation date: 6/29/2015

 MACHINE GardnerSwitchingPuzzle_v2 
 */

MACHINE t1

/* v2 without a special PassThroughTunnel operation */
/* Puzzle Nr 40 from My best mathematical and logical puzzles, Martin Gardner */
/* written by Michael Leuschel, 2010 */
/*
We have ENGINE + two wagons A, B
Only ENGINE can go through tunnel
Layout:
 ==ENGINE ======+======A======\
               /              |
               |             TUN
               |             NEL
               |              |
                \             /
 ======================B======
Task: move A to B's position and vice versa and return ENGINE to original position
*/
SETS
 TRAINS={engine,A,B};
 TRACKS = {topleft,top_middle,bot_left,bot_middle,leftlink}
DEFINITIONS
 GOAL == occ(topleft) = [engine] & occ(top_middle)=[B] & occ(bot_middle)=[A]
CONSTANTS
  link, restrict
PROPERTIES
  link = {topleft |->top_middle, leftlink |->top_middle, 
                          top_middle |-> bot_middle, /* Tunnel is a restriction, not a state */
          bot_middle|-> bot_left, bot_middle |-> leftlink} &
  restrict = (link*{{}}) <+
            { (top_middle|->bot_middle) |-> {A,B} } /* A, B are not allowed to take the tunnel */
VARIABLES occ
INVARIANT
 occ: TRACKS --> iseq(TRAINS) & /* set of injective sequences, occ is defined for one track */
 !(t1,t2).(t1:TRACKS & t1/=t2 => ran(occ(t1)) /\ ran(occ(t2)) = {} ) & /* one train is not allowed on two tracks at the same time */
 UNION(t).(t:TRACKS|ran(occ(t))) = TRAINS /* all trains must be on tracks */
/*
 Sequence Order on Track Sections:
 ====1=2=3======+====1=2=3====\
               /              |
               3             TUN
               2             NEL
               1              |
                \             /
 ====3=2=1===========3=2=1====
*/
INITIALISATION occ := {topleft |-> [engine], top_middle |-> [A], bot_middle |->[B],
                       leftlink |-> <>, bot_left |-> <> }
OPERATIONS
  Move(Seq,T1,T2,Rest) = PRE Seq : iseq1(TRAINS) & /* set of non-empty injective sequences; 
						      non-empty	neccessary because at least one train has to move,
						      injective	neccessary because we cannot have duplicates */ 
	   Rest : iseq(TRAINS) & /* set of injective sequences */
           occ(T1)= Rest^Seq & /* we have to keep the sequence order on track sections given the link direction */
	   engine:ran(Seq) & /* only the engine can move or move something from one track to another */
	   T1|->T2 : link & /* we have to have a link between track 1 and track 2 */
           restrict((T1,T2)) /\ ran(Seq) = {} THEN /* we have to check whether we have a restriction or not  */
    occ := occ <+ {T1 |-> Rest, T2 |-> (Seq^occ(T2))} /* we update the state for each track section */
  END;
  MoveRev(Seq,T1,T2,Rest) = PRE Seq : iseq1(TRAINS) & Rest : iseq(TRAINS) &
           occ(T1)= Seq^Rest & engine:ran(Seq) & T2|->T1 : link &
           restrict((T2,T1)) /\ ran(Seq) = {}  THEN
    occ := occ <+ {T1 |-> Rest, T2 |-> (occ(T2)^Seq)}
  END
END
