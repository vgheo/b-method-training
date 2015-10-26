MACHINE X1(T, init)

CONSTRAINTS
    init : T
    
EXTENDS y1.Y1(T, init)



VARIABLES
    v1
    
INVARIANT
    v1 : INT

INITIALISATION
    v1:=0

OPERATIONS

    opx1 = BEGIN skip END

END