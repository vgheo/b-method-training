MACHINE
    MachA
VARIABLES
    count
INVARIANT
    count : NAT
INITIALISATION
    count:=0
OPERATIONS
    op(t1)=
    PRE
        t1 : NAT 
    THEN
        count:=count + t1
    END
END