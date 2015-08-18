/* M1
 */
MACHINE M1
    
INCLUDES
    MA.M2,
    MB.M2,
    M3 /*  non-prefixed include */

PROMOTES
    MA.set,
    MB.set,
    set

VARIABLES
	v1
INVARIANT
	v1 : BOOL
	
INITIALISATION
	v1 := FALSE
	
OPERATIONS
    /* NOTE: set would collide with M3::set */
	set_v1(xx) = PRE xx:BOOL & xx/=v1 THEN v1:=xx END
END
