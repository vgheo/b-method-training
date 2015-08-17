Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(QUERY_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(QUERY_1))==(Machine(QUERY));
  Level(Implementation(QUERY_1))==(1);
  Upper_Level(Implementation(QUERY_1))==(Machine(QUERY))
END
&
THEORY LoadedStructureX IS
  Implementation(QUERY_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(QUERY_1))==(DATA_BASE,BASIC_IO,BASIC_SEX,BASIC_STATUS)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(QUERY_1))==(?);
  Inherited_List_Includes(Implementation(QUERY_1))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(QUERY_1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(QUERY_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(QUERY_1))==(?);
  Context_List_Variables(Implementation(QUERY_1))==(?);
  Abstract_List_Variables(Implementation(QUERY_1))==(?);
  Local_List_Variables(Implementation(QUERY_1))==(?);
  List_Variables(Implementation(QUERY_1))==(?);
  External_List_Variables(Implementation(QUERY_1))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(QUERY_1))==(?);
  Abstract_List_VisibleVariables(Implementation(QUERY_1))==(?);
  External_List_VisibleVariables(Implementation(QUERY_1))==(?);
  Expanded_List_VisibleVariables(Implementation(QUERY_1))==(?);
  List_VisibleVariables(Implementation(QUERY_1))==(?);
  Internal_List_VisibleVariables(Implementation(QUERY_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(QUERY_1))==(btrue);
  Expanded_List_Invariant(Implementation(QUERY_1))==(btrue);
  Abstract_List_Invariant(Implementation(QUERY_1))==(btrue);
  Context_List_Invariant(Implementation(QUERY_1))==(person <: PERSON & sex: person --> SEX & status: person --> STATUS & husband: sex~[{woman}] >+> sex~[{man}] & wife = husband~ & mother: person +-> dom(husband\/wife)/\sex~[{woman}]);
  List_Invariant(Implementation(QUERY_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(QUERY_1))==(btrue);
  Abstract_List_Assertions(Implementation(QUERY_1))==(btrue);
  Context_List_Assertions(Implementation(QUERY_1))==(btrue);
  List_Assertions(Implementation(QUERY_1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(QUERY_1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(QUERY_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(QUERY_1))==(skip);
  Context_List_Initialisation(Implementation(QUERY_1))==(skip);
  List_Initialisation(Implementation(QUERY_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(QUERY_1))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(QUERY_1),Machine(DATA_BASE))==(?);
  List_Instanciated_Parameters(Implementation(QUERY_1),Machine(BASIC_IO))==(?);
  List_Instanciated_Parameters(Implementation(QUERY_1),Machine(BASIC_SEX))==(?);
  List_Instanciated_Parameters(Implementation(QUERY_1),Machine(BASIC_STATUS))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(QUERY_1))==(btrue);
  List_Context_Constraints(Implementation(QUERY_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(QUERY_1))==(get_new_dead_person,get_sex_of_new,get_sex_and_mother,get_new_couple,get_and_print_person);
  List_Operations(Implementation(QUERY_1))==(get_new_dead_person,get_sex_of_new,get_sex_and_mother,get_new_couple,get_and_print_person)
END
&
THEORY ListInputX IS
  List_Input(Implementation(QUERY_1),get_new_dead_person)==(?);
  List_Input(Implementation(QUERY_1),get_sex_of_new)==(?);
  List_Input(Implementation(QUERY_1),get_sex_and_mother)==(?);
  List_Input(Implementation(QUERY_1),get_new_couple)==(?);
  List_Input(Implementation(QUERY_1),get_and_print_person)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(QUERY_1),get_new_dead_person)==(pp,bb);
  List_Output(Implementation(QUERY_1),get_sex_of_new)==(ss,bb);
  List_Output(Implementation(QUERY_1),get_sex_and_mother)==(ss,ww,bb);
  List_Output(Implementation(QUERY_1),get_new_couple)==(mm,ww,bb);
  List_Output(Implementation(QUERY_1),get_and_print_person)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(QUERY_1),get_new_dead_person)==(pp,bb <-- get_new_dead_person);
  List_Header(Implementation(QUERY_1),get_sex_of_new)==(ss,bb <-- get_sex_of_new);
  List_Header(Implementation(QUERY_1),get_sex_and_mother)==(ss,ww,bb <-- get_sex_and_mother);
  List_Header(Implementation(QUERY_1),get_new_couple)==(mm,ww,bb <-- get_new_couple);
  List_Header(Implementation(QUERY_1),get_and_print_person)==(get_and_print_person)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(QUERY_1),get_new_dead_person)==(btrue);
  List_Precondition(Implementation(QUERY_1),get_new_dead_person)==(btrue);
  Own_Precondition(Implementation(QUERY_1),get_sex_of_new)==(btrue);
  List_Precondition(Implementation(QUERY_1),get_sex_of_new)==(btrue);
  Own_Precondition(Implementation(QUERY_1),get_sex_and_mother)==(btrue);
  List_Precondition(Implementation(QUERY_1),get_sex_and_mother)==(btrue);
  Own_Precondition(Implementation(QUERY_1),get_new_couple)==(btrue);
  List_Precondition(Implementation(QUERY_1),get_new_couple)==(btrue);
  Own_Precondition(Implementation(QUERY_1),get_and_print_person)==(btrue);
  List_Precondition(Implementation(QUERY_1),get_and_print_person)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(QUERY_1),get_and_print_person)==(btrue | @(pp,bb,vv,uu,ww,tt).(("Person Id: ": STRING | skip);(btrue | @(pp$1).(pp$1: PERSON ==> pp:=pp$1));(pp: PERSON | bb:=bool(pp: person));(bb = FALSE ==> ("Person does not exist \n": STRING | skip) [] not(bb = FALSE) ==> (("\n Person: ": STRING | skip);(pp: PERSON | skip);("\n Sex: ": STRING | skip);(pp: PERSON & pp: person | vv:=sex(pp));(vv: SEX | skip);("\n Status: ": STRING | skip);(pp: PERSON & pp: person | uu:=status(pp));(uu: STATUS | skip);(pp: PERSON & pp: person | bb:=bool(pp: dom(mother)));(bb = TRUE ==> (("\n Mother: ": STRING | skip);(pp: PERSON & pp: person & pp: dom(mother) & ww: PERSON | ww:=mother(pp));(ww: PERSON | skip)) [] not(bb = TRUE) ==> skip);(pp: PERSON & pp: person | bb:=bool(pp: dom(husband\/wife)));(bb = TRUE ==> (("\n Spu=ouse: ": STRING | skip);(pp: PERSON & pp: person & pp: dom(husband\/wife) & tt: PERSON | tt:=(husband\/wife)(pp));(tt: PERSON | skip)) [] not(bb = TRUE) ==> skip)))));
  Expanded_List_Substitution(Implementation(QUERY_1),get_new_couple)==(btrue | @(pm,pw,bm,bms,bw,bws).(bb:=TRUE;("Man Id: ": STRING | skip);(btrue | @(pp$0).(pp$0: PERSON ==> mm:=pp$0));("Woman Id": STRING | skip);(btrue | @(pp$0).(pp$0: PERSON ==> ww:=pp$0));(mm: PERSON | pm:=bool(mm: person));(ww: PERSON | pw:=bool(ww: person));(pm = FALSE ==> (bb:=FALSE;("First person does not exist\n": STRING | skip)) [] not(pm = FALSE) ==> skip);(pw = FALSE ==> (bb:=FALSE;("Second person does not exist\n": STRING | skip)) [] not(pw = FALSE) ==> skip);(bb = TRUE ==> ((mm: PERSON & mm: person | bm:=bool(mm: sex~[{woman}]));(mm: PERSON & mm: person | bms:=bool(mm: dom(husband\/wife)));(ww: PERSON & ww: person | bw:=bool(ww: sex~[{woman}]));(ww: PERSON & ww: person | bws:=bool(ww: dom(husband\/wife)));(bm = TRUE ==> (bb:=FALSE;("First person must be a man\n": STRING | skip)) [] not(bm = TRUE) ==> skip);(bms = TRUE ==> (bb:=FALSE;("First person must be a woman\n": STRING | skip)) [] not(bms = TRUE) ==> skip);(bw = FALSE ==> (bb:=FALSE;("Second person must be a woman\n": STRING | skip)) [] not(bw = FALSE) ==> skip);(bws = TRUE ==> (bb:=FALSE;("Second person must not be married\n": STRING | skip)) [] not(bws = TRUE) ==> skip)) [] not(bb = TRUE) ==> skip)));
  Expanded_List_Substitution(Implementation(QUERY_1),get_sex_and_mother)==(btrue | ("Sex: ": STRING | skip);(btrue | @(rr$0).(rr$0: SEX ==> ss:=rr$0));("Mother Id: ": STRING | skip);(btrue | @(pp$0).(pp$0: PERSON ==> ww:=pp$0));(ww: PERSON | bb:=bool(ww: person));(bb = FALSE ==> ("Person does not exist\n": STRING | skip) [] not(bb = FALSE) ==> ((ww: PERSON & ww: person | bb:=bool(ww: sex~[{woman}]));(bb = FALSE ==> ("Person must be a woman\n": STRING | skip) [] not(bb = FALSE) ==> ((ww: PERSON & ww: person | bb:=bool(ww: dom(husband\/wife)));(bb = FALSE ==> ("Person must be married\n": STRING | skip) [] not(bb = FALSE) ==> ((btrue | bb:=bool(PERSON-person/={}));(bb = FALSE ==> ("System full\n": STRING | skip) [] not(bb = FALSE) ==> skip))))))));
  Expanded_List_Substitution(Implementation(QUERY_1),get_sex_of_new)==(btrue | ("Sex: ": STRING | skip);(btrue | @(rr$0).(rr$0: SEX ==> ss:=rr$0));(btrue | bb:=bool(PERSON-person/={}));(bb = FALSE ==> ("System_full\n": STRING | skip) [] not(bb = FALSE) ==> skip));
  Expanded_List_Substitution(Implementation(QUERY_1),get_new_dead_person)==(btrue | ("Mother Id:": STRING | skip);(btrue | @(pp$0).(pp$0: PERSON ==> pp:=pp$0));(pp: PERSON | bb:=bool(pp: person));(bb = FALSE ==> ("Person does not exist\n": STRING | skip) [] not(bb = FALSE) ==> ((pp: PERSON & pp: person | bb:=bool(pp: status~[{living}]));(bb = FALSE ==> ("Person must be alive\n": STRING | skip) [] not(bb = FALSE) ==> skip))));
  List_Substitution(Implementation(QUERY_1),get_new_dead_person)==(STRING_WRITE("Mother Id:");pp <-- PERSON_read;bb <-- is_present(pp);IF bb = FALSE THEN STRING_WRITE("Person does not exist\n") ELSE bb <-- is_living(pp);IF bb = FALSE THEN STRING_WRITE("Person must be alive\n") END END);
  List_Substitution(Implementation(QUERY_1),get_sex_of_new)==(STRING_WRITE("Sex: ");ss <-- SEX_READ;bb <-- not_saturated;IF bb = FALSE THEN STRING_WRITE("System_full\n") END);
  List_Substitution(Implementation(QUERY_1),get_sex_and_mother)==(STRING_WRITE("Sex: ");ss <-- SEX_READ;STRING_WRITE("Mother Id: ");ww <-- PERSON_read;bb <-- is_present(ww);IF bb = FALSE THEN STRING_WRITE("Person does not exist\n") ELSE bb <-- is_woman(ww);IF bb = FALSE THEN STRING_WRITE("Person must be a woman\n") ELSE bb <-- is_married(ww);IF bb = FALSE THEN STRING_WRITE("Person must be married\n") ELSE bb <-- not_saturated;IF bb = FALSE THEN STRING_WRITE("System full\n") END END END END);
  List_Substitution(Implementation(QUERY_1),get_new_couple)==(VAR pm,pw,bm,bms,bw,bws IN bb:=TRUE;STRING_WRITE("Man Id: ");mm <-- PERSON_read;STRING_WRITE("Woman Id");ww <-- PERSON_read;pm <-- is_present(mm);pw <-- is_present(ww);IF pm = FALSE THEN bb:=FALSE;STRING_WRITE("First person does not exist\n") END;IF pw = FALSE THEN bb:=FALSE;STRING_WRITE("Second person does not exist\n") END;IF bb = TRUE THEN bm <-- is_woman(mm);bms <-- is_married(mm);bw <-- is_woman(ww);bws <-- is_married(ww);IF bm = TRUE THEN bb:=FALSE;STRING_WRITE("First person must be a man\n") END;IF bms = TRUE THEN bb:=FALSE;STRING_WRITE("First person must be a woman\n") END;IF bw = FALSE THEN bb:=FALSE;STRING_WRITE("Second person must be a woman\n") END;IF bws = TRUE THEN bb:=FALSE;STRING_WRITE("Second person must not be married\n") END END END);
  List_Substitution(Implementation(QUERY_1),get_and_print_person)==(VAR pp,bb,vv,uu,ww,tt IN STRING_WRITE("Person Id: ");pp <-- PERSON_read;bb <-- is_present(pp);IF bb = FALSE THEN STRING_WRITE("Person does not exist \n") ELSE STRING_WRITE("\n Person: ");PERSON_write(pp);STRING_WRITE("\n Sex: ");vv <-- val_sex(pp);SEX_WRITE(vv);STRING_WRITE("\n Status: ");uu <-- val_status(pp);STATUS_WRITE(uu);bb <-- has_mother(pp);IF bb = TRUE THEN STRING_WRITE("\n Mother: ");ww <-- val_mother(pp);PERSON_write(ww) END;bb <-- is_married(pp);IF bb = TRUE THEN STRING_WRITE("\n Spu=ouse: ");tt <-- val_spouse(pp);PERSON_write(tt) END END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(QUERY_1))==(?);
  Inherited_List_Constants(Implementation(QUERY_1))==(?);
  List_Constants(Implementation(QUERY_1))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(QUERY_1),STATUS)==({dead,living});
  Context_List_Enumerated(Implementation(QUERY_1))==(SEX,STATUS);
  Context_List_Defered(Implementation(QUERY_1))==(PERSON);
  Context_List_Sets(Implementation(QUERY_1))==(PERSON,SEX,STATUS);
  List_Own_Enumerated(Implementation(QUERY_1))==(?);
  List_Valuable_Sets(Implementation(QUERY_1))==(?);
  Inherited_List_Enumerated(Implementation(QUERY_1))==(?);
  Inherited_List_Defered(Implementation(QUERY_1))==(?);
  Inherited_List_Sets(Implementation(QUERY_1))==(?);
  List_Enumerated(Implementation(QUERY_1))==(?);
  List_Defered(Implementation(QUERY_1))==(?);
  List_Sets(Implementation(QUERY_1))==(?);
  Set_Definition(Implementation(QUERY_1),SEX)==({man,woman})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(QUERY_1))==(?);
  Expanded_List_HiddenConstants(Implementation(QUERY_1))==(?);
  List_HiddenConstants(Implementation(QUERY_1))==(?);
  External_List_HiddenConstants(Implementation(QUERY_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(QUERY_1))==(btrue);
  Context_List_Properties(Implementation(QUERY_1))==(max_pers: NAT & max_pers = card(PERSON) & PERSON: FIN(INTEGER) & not(PERSON = {}) & code_SEX: SEX >->> 0..1 & decode_SEX: 0..1 >->> SEX & decode_SEX = code_SEX~ & SEX: FIN(INTEGER) & not(SEX = {}) & code_STATUS: STATUS >->> 0..1 & decode_STATUS: 0..1 >->> STATUS & decode_STATUS = code_STATUS~ & STATUS: FIN(INTEGER) & not(STATUS = {}));
  Inherited_List_Properties(Implementation(QUERY_1))==(btrue);
  List_Properties(Implementation(QUERY_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(QUERY_1))==(aa: aa);
  List_Values(Implementation(QUERY_1))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(QUERY_1),Machine(BASIC_STATUS))==(STATUS_READ,STATUS_WRITE);
  Seen_Context_List_Enumerated(Implementation(QUERY_1))==(SEX,STATUS);
  Seen_Context_List_Invariant(Implementation(QUERY_1))==(btrue);
  Seen_Context_List_Assertions(Implementation(QUERY_1))==(btrue);
  Seen_Context_List_Properties(Implementation(QUERY_1))==(code_SEX: SEX >->> 0..1 & decode_SEX: 0..1 >->> SEX & decode_SEX = code_SEX~ & SEX: FIN(INTEGER) & not(SEX = {}) & code_STATUS: STATUS >->> 0..1 & decode_STATUS: 0..1 >->> STATUS & decode_STATUS = code_STATUS~ & STATUS: FIN(INTEGER) & not(STATUS = {}));
  Seen_List_Constraints(Implementation(QUERY_1))==(btrue);
  Seen_List_Precondition(Implementation(QUERY_1),STATUS_WRITE)==(ii: STATUS);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),STATUS_WRITE)==(skip);
  Seen_List_Precondition(Implementation(QUERY_1),STATUS_READ)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),STATUS_READ)==(@(rr$0).(rr$0: STATUS ==> rr:=rr$0));
  Seen_List_Operations(Implementation(QUERY_1),Machine(BASIC_STATUS))==(STATUS_READ,STATUS_WRITE);
  Seen_Expanded_List_Invariant(Implementation(QUERY_1),Machine(BASIC_STATUS))==(btrue);
  Seen_Internal_List_Operations(Implementation(QUERY_1),Machine(BASIC_SEX))==(SEX_READ,SEX_WRITE);
  Seen_List_Precondition(Implementation(QUERY_1),SEX_WRITE)==(ii: SEX);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),SEX_WRITE)==(skip);
  Seen_List_Precondition(Implementation(QUERY_1),SEX_READ)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),SEX_READ)==(@(rr$0).(rr$0: SEX ==> rr:=rr$0));
  Seen_List_Operations(Implementation(QUERY_1),Machine(BASIC_SEX))==(SEX_READ,SEX_WRITE);
  Seen_Expanded_List_Invariant(Implementation(QUERY_1),Machine(BASIC_SEX))==(btrue);
  Seen_Internal_List_Operations(Implementation(QUERY_1),Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE);
  Seen_List_Precondition(Implementation(QUERY_1),STRING_WRITE)==(ss: STRING);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),STRING_WRITE)==(skip);
  Seen_List_Precondition(Implementation(QUERY_1),CHAR_WRITE)==(bb: 0..255);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),CHAR_WRITE)==(skip);
  Seen_List_Precondition(Implementation(QUERY_1),CHAR_READ)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),CHAR_READ)==(@(bb$0).(bb$0: 0..255 ==> bb:=bb$0));
  Seen_List_Precondition(Implementation(QUERY_1),BOOL_WRITE)==(bb: BOOL);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),BOOL_WRITE)==(skip);
  Seen_List_Precondition(Implementation(QUERY_1),BOOL_READ)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),BOOL_READ)==(@(bb$0).(bb$0: BOOL ==> bb:=bb$0));
  Seen_List_Precondition(Implementation(QUERY_1),INT_WRITE)==(nn: INT);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),INT_WRITE)==(skip);
  Seen_List_Precondition(Implementation(QUERY_1),INTERVAL_READ)==(aa: INT & bb: INT & aa<=bb);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),INTERVAL_READ)==(@(nn$0).(nn$0: aa..bb ==> nn:=nn$0));
  Seen_List_Operations(Implementation(QUERY_1),Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE);
  Seen_Expanded_List_Invariant(Implementation(QUERY_1),Machine(BASIC_IO))==(btrue);
  Seen_Internal_List_Operations(Implementation(QUERY_1),Machine(DATA_BASE))==(death,marriage,first_human,new_born,not_saturated,is_present,is_living,is_woman,is_married,has_mother,val_status,val_sex,val_spouse,val_mother,PERSON_read,PERSON_write);
  Seen_List_Precondition(Implementation(QUERY_1),PERSON_write)==(pp: PERSON);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),PERSON_write)==(skip);
  Seen_List_Precondition(Implementation(QUERY_1),PERSON_read)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),PERSON_read)==(@(pp$0).(pp$0: PERSON ==> pp:=pp$0));
  Seen_List_Precondition(Implementation(QUERY_1),val_mother)==(pp: PERSON & pp: person & pp: dom(mother) & vv: PERSON);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),val_mother)==(vv:=mother(pp));
  Seen_List_Precondition(Implementation(QUERY_1),val_spouse)==(pp: PERSON & pp: person & pp: dom(husband\/wife) & vv: PERSON);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),val_spouse)==(vv:=(husband\/wife)(pp));
  Seen_List_Precondition(Implementation(QUERY_1),val_sex)==(pp: PERSON & pp: person);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),val_sex)==(vv:=sex(pp));
  Seen_List_Precondition(Implementation(QUERY_1),val_status)==(pp: PERSON & pp: person);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),val_status)==(vv:=status(pp));
  Seen_List_Precondition(Implementation(QUERY_1),has_mother)==(pp: PERSON & pp: person);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),has_mother)==(report:=bool(pp: dom(mother)));
  Seen_List_Precondition(Implementation(QUERY_1),is_married)==(pp: PERSON & pp: person);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),is_married)==(report:=bool(pp: dom(husband\/wife)));
  Seen_List_Precondition(Implementation(QUERY_1),is_woman)==(pp: PERSON & pp: person);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),is_woman)==(report:=bool(pp: sex~[{woman}]));
  Seen_List_Precondition(Implementation(QUERY_1),is_living)==(pp: PERSON & pp: person);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),is_living)==(report:=bool(pp: status~[{living}]));
  Seen_List_Precondition(Implementation(QUERY_1),is_present)==(pp: PERSON);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),is_present)==(report:=bool(pp: person));
  Seen_List_Precondition(Implementation(QUERY_1),not_saturated)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),not_saturated)==(report:=bool(PERSON-person/={}));
  Seen_List_Precondition(Implementation(QUERY_1),new_born)==(PERSON-person/={} & ss: SEX & mm: PERSON & mm: dom(husband\/wife)/\sex~[{woman}]);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),new_born)==(@angel.(angel: PERSON-person ==> person,status,sex,mother,baby:=person\/{angel},status<+{angel|->living},sex<+{angel|->ss},mother<+{angel|->mm},angel));
  Seen_List_Precondition(Implementation(QUERY_1),first_human)==(PERSON-person/={} & ss: SEX);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),first_human)==(@angel.(angel: PERSON-person ==> person,status,sex,baby:=person\/{angel},status<+{angel|->living},sex<+{angel|->ss},angel));
  Seen_List_Precondition(Implementation(QUERY_1),marriage)==(bride: PERSON & bride: person & bride: person-dom(husband\/wife)/\sex~[{woman}] & groom: PERSON & groom: person & groom: person-dom(husband\/wife)/\sex~[{man}]);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),marriage)==(husband,wife:=husband<+{bride|->groom},wife<+{groom|->bride});
  Seen_List_Precondition(Implementation(QUERY_1),death)==(pp: PERSON & pp: person & pp: status~[{living}]);
  Seen_Expanded_List_Substitution(Implementation(QUERY_1),death)==(status:=status<+{pp|->dead});
  Seen_List_Operations(Implementation(QUERY_1),Machine(DATA_BASE))==(death,marriage,first_human,new_born,not_saturated,is_present,is_living,is_woman,is_married,has_mother,val_status,val_sex,val_spouse,val_mother,PERSON_read,PERSON_write);
  Seen_Expanded_List_Invariant(Implementation(QUERY_1),Machine(DATA_BASE))==(btrue);
  Set_Definition(Implementation(QUERY_1),STATUS)==({dead,living});
  Set_Definition(Implementation(QUERY_1),SEX)==({man,woman})
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(QUERY_1),Machine(BASIC_STATUS))==(STATUS_READ,STATUS_WRITE);
  List_Included_Operations(Implementation(QUERY_1),Machine(BASIC_SEX))==(SEX_READ,SEX_WRITE);
  List_Included_Operations(Implementation(QUERY_1),Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE);
  List_Included_Operations(Implementation(QUERY_1),Machine(DATA_BASE))==(death,marriage,first_human,new_born,not_saturated,is_present,is_living,is_woman,is_married,has_mother,val_status,val_sex,val_spouse,val_mother,PERSON_read,PERSON_write)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(QUERY_1))==(Type(get_sex_and_mother) == Cst(etype(SEX,?,?)*atype(PERSON,?,?)*btype(BOOL,?,?),No_type);Type(get_new_couple) == Cst(atype(PERSON,?,?)*atype(PERSON,?,?)*btype(BOOL,?,?),No_type);Type(get_and_print_person) == Cst(No_type,No_type);Type(get_sex_of_new) == Cst(etype(SEX,?,?)*btype(BOOL,?,?),No_type);Type(get_new_dead_person) == Cst(atype(PERSON,?,?)*btype(BOOL,?,?),No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(QUERY_1),Machine(BASIC_STATUS))==(code_STATUS,decode_STATUS);
  List_Constants_Env(Implementation(QUERY_1),Machine(BASIC_STATUS))==(Type(dead) == Cst(etype(STATUS,0,1));Type(living) == Cst(etype(STATUS,0,1));Type(code_STATUS) == Cst(SetOf(etype(STATUS,0,1)*btype(INTEGER,0,1)));Type(decode_STATUS) == Cst(SetOf(btype(INTEGER,0,1)*etype(STATUS,0,1))));
  Enumerate_Definition(Implementation(QUERY_1),Machine(BASIC_STATUS),STATUS)==({dead,living});
  List_Constants(Implementation(QUERY_1),Machine(BASIC_SEX))==(code_SEX,decode_SEX);
  List_Constants_Env(Implementation(QUERY_1),Machine(BASIC_SEX))==(Type(man) == Cst(etype(SEX,0,1));Type(woman) == Cst(etype(SEX,0,1));Type(code_SEX) == Cst(SetOf(etype(SEX,0,1)*btype(INTEGER,0,1)));Type(decode_SEX) == Cst(SetOf(btype(INTEGER,0,1)*etype(SEX,0,1))));
  Enumerate_Definition(Implementation(QUERY_1),Machine(BASIC_SEX),SEX)==({man,woman});
  List_Constants(Implementation(QUERY_1),Machine(DATA_BASE))==(max_pers);
  List_Constants_Env(Implementation(QUERY_1),Machine(DATA_BASE))==(Type(max_pers) == Cst(btype(INTEGER,?,?)));
  List_Defered_Sets(Implementation(QUERY_1),Machine(DATA_BASE))==(PERSON)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(QUERY_1)) == (? | ? | ? | ? | get_new_dead_person,get_sex_of_new,get_sex_and_mother,get_new_couple,get_and_print_person | ? | seen(Machine(DATA_BASE)),seen(Machine(BASIC_IO)),seen(Machine(BASIC_SEX)),seen(Machine(BASIC_STATUS)) | ? | QUERY_1);
  List_Of_HiddenCst_Ids(Implementation(QUERY_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(QUERY_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(QUERY_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(QUERY_1)) == (?: ?);
  List_Of_Ids(Machine(BASIC_STATUS)) == (code_STATUS,decode_STATUS,STATUS,dead,living | ? | ? | ? | STATUS_READ,STATUS_WRITE | ? | ? | ? | BASIC_STATUS);
  List_Of_HiddenCst_Ids(Machine(BASIC_STATUS)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_STATUS)) == (code_STATUS,decode_STATUS);
  List_Of_VisibleVar_Ids(Machine(BASIC_STATUS)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_STATUS)) == (?: ?);
  List_Of_Ids(Machine(BASIC_SEX)) == (code_SEX,decode_SEX,SEX,man,woman | ? | ? | ? | SEX_READ,SEX_WRITE | ? | ? | ? | BASIC_SEX);
  List_Of_HiddenCst_Ids(Machine(BASIC_SEX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_SEX)) == (code_SEX,decode_SEX);
  List_Of_VisibleVar_Ids(Machine(BASIC_SEX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_SEX)) == (?: ?);
  List_Of_Ids(Machine(BASIC_IO)) == (? | ? | ? | ? | INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE | ? | ? | ? | BASIC_IO);
  List_Of_HiddenCst_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_IO)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_IO)) == (?: ?);
  List_Of_Ids(Machine(DATA_BASE)) == (max_pers,PERSON | ? | wife,husband,mother,status,sex,person | ? | death,marriage,first_human,new_born,not_saturated,is_present,is_living,is_woman,is_married,has_mother,val_status,val_sex,val_spouse,val_mother,PERSON_read,PERSON_write | ? | seen(Machine(BASIC_SEX)),seen(Machine(BASIC_STATUS)) | ? | DATA_BASE);
  List_Of_HiddenCst_Ids(Machine(DATA_BASE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(DATA_BASE)) == (max_pers);
  List_Of_VisibleVar_Ids(Machine(DATA_BASE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(DATA_BASE)) == (?: ?)
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(QUERY_1),get_new_couple, 1) == (Type(pm) == Lvl(btype(BOOL,?,?));Type(pw) == Lvl(btype(BOOL,?,?));Type(bm) == Lvl(btype(BOOL,?,?));Type(bms) == Lvl(btype(BOOL,?,?));Type(bw) == Lvl(btype(BOOL,?,?));Type(bws) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(QUERY_1),get_and_print_person, 1) == (Type(pp) == Lvl(atype(PERSON,"[PERSON","]PERSON"));Type(bb) == Lvl(btype(BOOL,?,?));Type(vv) == Lvl(etype(SEX,?,?));Type(uu) == Lvl(etype(STATUS,?,?));Type(ww) == Lvl(atype(PERSON,?,?));Type(tt) == Lvl(atype(PERSON,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(QUERY_1))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(QUERY_1))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
