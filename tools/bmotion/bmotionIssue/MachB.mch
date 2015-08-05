MACHINE
    MachB
INCLUDES
    MachA
CONSTANTS
    operand,set1,set2
PROPERTIES
    set1 = 1..3 &
    set2 = 1..3 &
    operand: set1 --> set2
OPERATIONS
    op2(xx)=
    PRE
        xx : set1
    THEN
    op(operand(xx),1)
    END
END