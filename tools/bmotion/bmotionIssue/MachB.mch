MACHINE
    MachB
INCLUDES
    MachA(set2)
CONSTANTS
    operand,set1,set2
PROPERTIES
    set1 = 1..3 &
    set2 = 1..3 &
    operand: set1 --> set2
OPERATIONS
    op2=
    BEGIN
    op(operand(1),2)
    END
END