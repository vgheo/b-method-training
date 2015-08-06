MACHINE
    MachB
INCLUDES
    MachA
OPERATIONS
    
    issueOp(xx)=
    PRE
        xx : NAT1
    THEN
    op(xx)
    END;

    issueOp2(xx)=
    PRE
        xx : NAT
    THEN
    op(2)
    END;

    workingOp=
    BEGIN
    op(1)
    END
    

END