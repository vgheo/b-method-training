/* QUERY
 * Author: T0164919
 * Creation date: 7/30/2015
 */
MACHINE
    QUERY
SEES
    DATA_BASE , BASIC_SEX , BASIC_STATUS
/*Definition clause not mentioned in SEES visibility table => manually imported definition clause*/
DEFINITIONS
    MAN == sex ~ [ { man } ] ;
    WOMAN == sex ~ [ { woman } ] ;
    LIVING == status ~ [ { living } ] ;
    DEAD == status ~ [ { dead } ] ;
    MARRIED == dom ( husband \/ wife ) ;
    SINGLE == person - MARRIED ;
    ANGEL == PERSON - person
OPERATIONS
    pp , bb <-- get_new_dead_person =
    CHOICE
        pp :: PERSON /\ LIVING || /*parameter is not implementable(typed with abstract variable person)*/
        bb := TRUE
    OR
        pp :: PERSON ||
        bb := FALSE
    END ;

    ss , bb <-- get_sex_of_new =
    BEGIN
        ss :: SEX ||
        bb := bool ( ANGEL /= {} )
    END ;

    get_and_print_person = skip ;

    mm , ww , bb <-- get_new_couple =
    CHOICE
        mm :: PERSON /\ ( SINGLE /\ MAN ) || /*parameter is not implementable(typed with abstract variable person)*/
        ww :: PERSON /\ ( SINGLE /\ WOMAN ) || /*parameter is not implementable(typed with abstract variable person)*/
        bb := TRUE
    OR
        mm :: PERSON ||
        ww :: PERSON ||
        bb := FALSE
    END ;

    ss , ww , bb <-- get_sex_and_mother =
    CHOICE
        ss :: SEX ||
        ww :: PERSON /\ ( MARRIED /\ WOMAN ) || /*parameter is not implementable(typed with abstract variable person)*/
        bb := bool ( ANGEL /= {} )
    OR
        ss :: SEX ||
        ww :: PERSON ||
        bb := FALSE
    END



END
