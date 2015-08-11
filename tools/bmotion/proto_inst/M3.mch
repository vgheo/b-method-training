/* M3
 * Author: vgheorgh
 * Creation date: 7/24/2015
 */
MACHINE
    M3
VARIABLES
    vv    
INITIALISATION
    vv := FALSE
INVARIANT
    vv:BOOL
OPERATIONS
    set(xx) =
    PRE
        xx:BOOL
        & xx/=vv
    THEN
        vv:=xx
    END
END
