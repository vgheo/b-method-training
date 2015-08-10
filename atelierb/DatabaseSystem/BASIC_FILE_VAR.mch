/* BASIC_FILE_VAR
 * Author: T0164919
 * Creation date: 7/30/2015
 */
MACHINE
    BASIC_FILE_VAR(max_rec, INDEX, VALUE)
CONSTRAINTS
    max_rec : NAT1
VARIABLES
    file_vrb
CONCRETE_VARIABLES
    buf_vrb
INITIALISATION
    buf_vrb:: INDEX --> VALUE ||
    file_vrb := []
INVARIANT
    buf_vrb : INDEX--> VALUE &
    file_vrb : seq(INDEX-->VALUE)&
    size(file_vrb) < max_rec
 
OPERATIONS
    READ_FILE(ii)=
    PRE
        ii:dom(file_vrb)
    THEN
        buf_vrb:=file_vrb(ii)
    END;

    WRITE_FILE(ii)=
    PRE
        ii:dom(file_vrb)
    THEN
    file_vrb(ii):=buf_vrb
    END;
    
    NEW_RECORD(vv)=
    PRE
        vv:VALUE &
        size(file_vrb) /=max_rec
    THEN
    file_vrb:= file_vrb<-(INDEX * {vv})
    END;

    vv<--SIZE_FILE = 
    BEGIN
        vv:=size(file_vrb)
    END;
    
    RESET_FILE=
    BEGIN
        file_vrb:=[]
    END
  

END