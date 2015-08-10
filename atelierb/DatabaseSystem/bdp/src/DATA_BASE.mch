/* DATA_BASE
 * Author: T0164919
 * Creation date: 7/30/2015
 */
MACHINE
    DATA_BASE
SETS
    PERSON
SEES
    BASIC_SEX , BASIC_STATUS
ABSTRACT_CONSTANTS
    max_pers
PROPERTIES
    max_pers = card ( PERSON )
ABSTRACT_VARIABLES
    person , sex , status , mother , husband , wife








INVARIANT
    /* !! clause order IS RELEVANT */
    person <: PERSON &
    sex : person --> SEX &
    status : person --> STATUS &
    husband : sex ~ [ { woman } ] >+> sex ~ [ { man } ] &
    wife = husband ~ &
    mother : person +-> ( dom ( husband \/ wife ) /\ sex ~ [ { woman } ] )
INITIALISATION
    person := {} ||
    sex := {} ||
    status := {} ||
    mother := {} ||
    husband := {} ||
    wife := {}
OPERATIONS
    death ( pp ) =
    PRE
        pp : status ~ [ { living } ]
    THEN
        status ( pp ) := dead
    END ;

    marriage ( bride , groom ) =
    PRE
        bride : person - dom ( husband \/ wife ) /\ sex ~ [ { woman } ] &
        groom : person - dom ( husband \/ wife ) /\ sex ~ [ { man } ]
    THEN
        husband ( bride ) := groom ||
        wife ( groom ) := bride
    END ;

    baby <-- first_human ( ss ) =
    PRE
        PERSON - person /= {} &
        ss : SEX
    THEN
        ANY angel WHERE
            angel : PERSON - person
        THEN
            person := person \/ { angel } ||
            status ( angel ) := living ||
            sex ( angel ) := ss ||
            baby := angel
        END
    END ;
    baby <-- new_born ( ss , mm ) =
    PRE
        PERSON - person /= {} &
        ss : SEX &
        mm : dom ( husband \/ wife ) /\ sex ~ [ { woman } ]
    THEN
        ANY angel WHERE
            angel : PERSON - person
        THEN
            person := person \/ { angel } ||
            status ( angel ) := living ||
            sex ( angel ) := ss ||
            mother ( angel ) := mm ||
            baby := angel
        END
    END ;
    report <-- not_saturated =
    BEGIN
        report := bool ( PERSON - person /= {} )
    END ;
    report <-- is_present ( pp ) =
    PRE
        pp : PERSON
    THEN
        report := bool ( pp : person )
    END ;

    report <-- is_living ( pp ) =
    PRE
        pp : person
    THEN
        report := bool ( pp : status ~ [ { living } ] )
    END ;
    report <-- is_woman ( pp ) =
    PRE
        pp : person
    THEN
        report := bool ( pp : sex ~ [ { woman } ] )
    END ;

    report <-- is_married ( pp ) =
    PRE
        pp : person
    THEN
        report := bool ( pp : dom ( husband \/ wife ) )
    END ;

    report <-- has_mother ( pp ) =
    PRE
        pp : person
    THEN
        report := bool ( pp : dom ( mother ) )
    END ;

    vv <-- val_status ( pp ) =
    PRE
        pp : person
    THEN
        vv := status ( pp )
    END ;


    vv <-- val_sex ( pp ) =
    PRE
        pp : person
    THEN
        vv := sex ( pp )
    END ;

    vv <-- val_spouse ( pp ) =
    PRE
        pp : dom ( husband \/ wife )
    THEN
        vv := ( husband \/ wife ) ( pp )
    END ;

    vv <-- val_mother ( pp ) =
    PRE
        pp : dom ( mother )
    THEN
        vv := ( mother ) ( pp )
    END ;

    pp <-- PERSON_read =
    BEGIN
        pp :: PERSON
    END ;

    PERSON_write ( pp ) =
    PRE
        pp : PERSON
    THEN
        skip
    END
END
