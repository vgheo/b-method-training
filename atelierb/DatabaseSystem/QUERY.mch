/* QUERY
 * Author: T0164919
 * Creation date: 7/30/2015
 */
MACHINE
    QUERY
SEES
    DATA_BASE,BASIC_SEX,BASIC_STATUS
/*Definition clause not mentioned in SEES visibility table => manually imported definition clause*/
DEFINITIONS
    MAN == sex~[{man}];
    WOMAN == sex~[{woman}];
    LIVING == status~[{living}];
    DEAD ==status~[{dead}];
    MARRIED == dom(husband \/ wife);
    SINGLE == person - MARRIED;
    ANGEL == PERSON - person
OPERATIONS
    pp,bb<--get_new_dead_person =
    CHOICE
        /*parameter is not implementable(typed with abstract variable person)*/
        ANY pp0 WHERE 
            pp0 : PERSON
            & pp0 : LIVING /* original statement */
        THEN
            pp:=pp0 || 
            bb:=TRUE
        END
    OR
        pp::PERSON||
        bb:=FALSE
    END;
    
    ss,bb<--get_sex_of_new =
    BEGIN
        ss::SEX ||
        bb:=bool(ANGEL/={})
    END;

    get_and_print_person=skip;
    
    mm,ww,bb<--get_new_couple=
    CHOICE
    /*parameter is not implementable(typed with abstract variable person)*/
    ANY mm0,ww0 WHERE
        mm0:PERSON &
        mm0:SINGLE/\MAN &
        ww0:PERSON &
        ww0:SINGLE /\ WOMAN
    THEN
        mm:=mm0 || 
        ww:=ww0 || 
        bb:=TRUE
    END
    OR
        mm::PERSON ||
        ww::PERSON ||
        bb:=FALSE
    END;
    
    ss,ww,bb<--get_sex_and_mother=
    CHOICE
    /*parameter is not implementable(typed with abstract variable person)*/
    ANY  ww0 WHERE
        ww0:PERSON &
        ww0:(MARRIED /\ WOMAN)
    THEN        
        ss::SEX ||
        ww:=ww0 ||
        bb:=bool(ANGEL /={})
    END
    OR
        ss::SEX ||
        ww::PERSON||
        bb:=FALSE
    END
    
    
        
END
