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
        /*parameter is not implementable(typed with abstract variable person)*/
        ANY pp0 WHERE
            pp0 : PERSON
            & pp0 : status ~ [ { living } ] /* original statement */
        THEN
            pp := pp0 ||
            bb := TRUE
        END
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
    /*parameter is not implementable(typed with abstract variable person)*/
    ANY mm0 , ww0 WHERE
        mm0 : PERSON &
        mm0 : person - dom ( husband \/ wife ) /\ sex ~ [ { man } ] &
        ww0 : PERSON &
        ww0 : person - dom ( husband \/ wife ) /\ sex ~ [ { woman } ]
    THEN
        mm := mm0 ||
        ww := ww0 ||
        bb := TRUE
    END
    OR
        mm :: PERSON ||
        ww :: PERSON ||
        bb := FALSE
    END ;

    ss , ww , bb <-- get_sex_and_mother =
    CHOICE
    /*parameter is not implementable(typed with abstract variable person)*/
    ANY  ww0 WHERE
        ww0 : PERSON &
        ww0 : ( dom ( husband \/ wife ) /\ sex ~ [ { woman } ] )
    THEN
        ss :: SEX ||
        ww := ww0 ||
        bb := bool ( PERSON - person /= {} )
    END
    OR
        ss :: SEX ||
        ww :: PERSON ||
        bb := FALSE
    END



END
