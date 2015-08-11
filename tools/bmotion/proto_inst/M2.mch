/* M2
 */
MACHINE
    M2
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
