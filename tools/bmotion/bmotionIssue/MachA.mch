MACHINE
    MachA
VARIABLES
    count
INVARIANT
    count : NAT
INITIALISATION
    count:=0
OPERATIONS
    op(t1,t2)=
    PRE
        t1 : NAT &
        t2 : NAT
    THEN
        count:=t1+t2
    END
END