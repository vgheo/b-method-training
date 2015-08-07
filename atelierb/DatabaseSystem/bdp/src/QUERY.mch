/* QUERY
 * Author: T0164919
 * Creation date: 7/30/2015
 */
MACHINE
    QUERY
SEES
    DATA_BASE , BASIC_SEX , BASIC_STATUS
/*Definition clause not mentioned in SEES visibility table => manually imported definition clause*/








OPERATIONS
    pp , bb <-- get_new_dead_person =
    CHOICE
        pp :: status ~ [ { living } ] ||
        bb := TRUE
    OR
        pp :: PERSON ||
        bb := FALSE
    END ;

    ss , bb <-- get_sex_of_new =
    BEGIN
        ss :: SEX ||
        bb := bool ( PERSON - person /= {} )
    END ;

    get_and_print_person = skip ;

    mm , ww , bb <-- get_new_couple =
    CHOICE
        mm :: person - dom ( husband \/ wife ) /\ sex ~ [ { man } ] ||
        ww :: person - dom ( husband \/ wife ) /\ sex ~ [ { woman } ] ||
        bb := TRUE
    OR
        mm :: PERSON ||
        ww :: PERSON ||
        bb := FALSE
    END ;

    ss , ww , bb <-- get_sex_and_mother =
    CHOICE
        ss :: SEX ||
        ww :: dom ( husband \/ wife ) /\ sex ~ [ { woman } ] ||
        bb := bool ( PERSON - person /= {} )
    OR
        ss :: SEX ||
        ww :: PERSON ||
        bb := FALSE
    END



END
