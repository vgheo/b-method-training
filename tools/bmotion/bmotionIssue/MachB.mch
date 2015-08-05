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
    workingOp=
    BEGIN
    op(1)
END;
    workingOp2(xx)=
    PRE
        xx : NAT
    THEN
    op(2)
END
END