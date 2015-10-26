MACHINE Y1(T, init)

CONSTRAINTS
    init : T

VARIABLES
    vy1
    
INVARIANT
    vy1 : T

INITIALISATION
    vy1:=init

OPERATIONS

    opy1 = BEGIN skip END

END