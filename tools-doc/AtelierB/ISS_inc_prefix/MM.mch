MACHINE MM

INCLUDES
    a1.A1,
    a2.A2,
    b1.B1,
    b2.B2

PROMOTES
    a1.opx1,
    b1.opx1 /* ATB4.2.1 : INVALID TypeCheck ERROR (?) */
    
OPERATIONS

    op1 = BEGIN skip END;
    
    vv<--op2 = BEGIN vv::INTEGER END;
    
    op3 = BEGIN skip END;
    
    vv<--op4 = BEGIN vv::INTEGER END

END