MACHINE ISS1_REC
CONSTANTS
    a
PROPERTIES
    a = rec(data:[FALSE], valid:FALSE) // CAUSES ATB UI NOT to display Outline 
VARIABLES
   x
INVARIANT
   x : struct(data:seq1(BOOL), valid:BOOL)    
INITIALIZATION
   x := rec(data:[FALSE], valid:FALSE) } // ATB - INTERNAL ERROR
END 
