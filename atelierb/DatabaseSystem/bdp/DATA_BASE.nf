Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(DATA_BASE))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(DATA_BASE))==(Machine(DATA_BASE));
  Level(Machine(DATA_BASE))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(DATA_BASE)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(DATA_BASE))==(BASIC_SEX,BASIC_STATUS)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(DATA_BASE))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(DATA_BASE))==(?);
  List_Includes(Machine(DATA_BASE))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(DATA_BASE))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(DATA_BASE))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(DATA_BASE))==(?);
  Context_List_Variables(Machine(DATA_BASE))==(?);
  Abstract_List_Variables(Machine(DATA_BASE))==(?);
  Local_List_Variables(Machine(DATA_BASE))==(wife,husband,mother,status,sex,person);
  List_Variables(Machine(DATA_BASE))==(wife,husband,mother,status,sex,person);
  External_List_Variables(Machine(DATA_BASE))==(wife,husband,mother,status,sex,person)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(DATA_BASE))==(?);
  Abstract_List_VisibleVariables(Machine(DATA_BASE))==(?);
  External_List_VisibleVariables(Machine(DATA_BASE))==(?);
  Expanded_List_VisibleVariables(Machine(DATA_BASE))==(?);
  List_VisibleVariables(Machine(DATA_BASE))==(?);
  Internal_List_VisibleVariables(Machine(DATA_BASE))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(DATA_BASE))==(btrue);
  Gluing_List_Invariant(Machine(DATA_BASE))==(btrue);
  Expanded_List_Invariant(Machine(DATA_BASE))==(btrue);
  Abstract_List_Invariant(Machine(DATA_BASE))==(btrue);
  Context_List_Invariant(Machine(DATA_BASE))==(btrue);
  List_Invariant(Machine(DATA_BASE))==(person <: PERSON & sex: person --> SEX & status: person --> STATUS & husband: sex~[{woman}] >+> sex~[{man}] & wife = husband~ & mother: person +-> dom(husband\/wife)/\sex~[{woman}])
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(DATA_BASE))==(btrue);
  Abstract_List_Assertions(Machine(DATA_BASE))==(btrue);
  Context_List_Assertions(Machine(DATA_BASE))==(btrue);
  List_Assertions(Machine(DATA_BASE))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(DATA_BASE))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(DATA_BASE))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(DATA_BASE))==(person,sex,status,mother,husband,wife:={},{},{},{},{},{});
  Context_List_Initialisation(Machine(DATA_BASE))==(skip);
  List_Initialisation(Machine(DATA_BASE))==(person:={} || sex:={} || status:={} || mother:={} || husband:={} || wife:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(DATA_BASE))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(DATA_BASE),Machine(BASIC_SEX))==(?);
  List_Instanciated_Parameters(Machine(DATA_BASE),Machine(BASIC_STATUS))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(DATA_BASE))==(btrue);
  List_Constraints(Machine(DATA_BASE))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(DATA_BASE))==(death,marriage,first_human,new_born,not_saturated,is_present,is_living,is_woman,is_married,has_mother,val_status,val_sex,val_spouse,val_mother,PERSON_read,PERSON_write);
  List_Operations(Machine(DATA_BASE))==(death,marriage,first_human,new_born,not_saturated,is_present,is_living,is_woman,is_married,has_mother,val_status,val_sex,val_spouse,val_mother,PERSON_read,PERSON_write)
END
&
THEORY ListInputX IS
  List_Input(Machine(DATA_BASE),death)==(pp);
  List_Input(Machine(DATA_BASE),marriage)==(bride,groom);
  List_Input(Machine(DATA_BASE),first_human)==(ss);
  List_Input(Machine(DATA_BASE),new_born)==(ss,mm);
  List_Input(Machine(DATA_BASE),not_saturated)==(?);
  List_Input(Machine(DATA_BASE),is_present)==(pp);
  List_Input(Machine(DATA_BASE),is_living)==(pp);
  List_Input(Machine(DATA_BASE),is_woman)==(pp);
  List_Input(Machine(DATA_BASE),is_married)==(pp);
  List_Input(Machine(DATA_BASE),has_mother)==(pp);
  List_Input(Machine(DATA_BASE),val_status)==(pp);
  List_Input(Machine(DATA_BASE),val_sex)==(pp);
  List_Input(Machine(DATA_BASE),val_spouse)==(pp);
  List_Input(Machine(DATA_BASE),val_mother)==(pp);
  List_Input(Machine(DATA_BASE),PERSON_read)==(?);
  List_Input(Machine(DATA_BASE),PERSON_write)==(pp)
END
&
THEORY ListOutputX IS
  List_Output(Machine(DATA_BASE),death)==(?);
  List_Output(Machine(DATA_BASE),marriage)==(?);
  List_Output(Machine(DATA_BASE),first_human)==(baby);
  List_Output(Machine(DATA_BASE),new_born)==(baby);
  List_Output(Machine(DATA_BASE),not_saturated)==(report);
  List_Output(Machine(DATA_BASE),is_present)==(report);
  List_Output(Machine(DATA_BASE),is_living)==(report);
  List_Output(Machine(DATA_BASE),is_woman)==(report);
  List_Output(Machine(DATA_BASE),is_married)==(report);
  List_Output(Machine(DATA_BASE),has_mother)==(report);
  List_Output(Machine(DATA_BASE),val_status)==(vv);
  List_Output(Machine(DATA_BASE),val_sex)==(vv);
  List_Output(Machine(DATA_BASE),val_spouse)==(vv);
  List_Output(Machine(DATA_BASE),val_mother)==(vv);
  List_Output(Machine(DATA_BASE),PERSON_read)==(pp);
  List_Output(Machine(DATA_BASE),PERSON_write)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(DATA_BASE),death)==(death(pp));
  List_Header(Machine(DATA_BASE),marriage)==(marriage(bride,groom));
  List_Header(Machine(DATA_BASE),first_human)==(baby <-- first_human(ss));
  List_Header(Machine(DATA_BASE),new_born)==(baby <-- new_born(ss,mm));
  List_Header(Machine(DATA_BASE),not_saturated)==(report <-- not_saturated);
  List_Header(Machine(DATA_BASE),is_present)==(report <-- is_present(pp));
  List_Header(Machine(DATA_BASE),is_living)==(report <-- is_living(pp));
  List_Header(Machine(DATA_BASE),is_woman)==(report <-- is_woman(pp));
  List_Header(Machine(DATA_BASE),is_married)==(report <-- is_married(pp));
  List_Header(Machine(DATA_BASE),has_mother)==(report <-- has_mother(pp));
  List_Header(Machine(DATA_BASE),val_status)==(vv <-- val_status(pp));
  List_Header(Machine(DATA_BASE),val_sex)==(vv <-- val_sex(pp));
  List_Header(Machine(DATA_BASE),val_spouse)==(vv <-- val_spouse(pp));
  List_Header(Machine(DATA_BASE),val_mother)==(vv <-- val_mother(pp));
  List_Header(Machine(DATA_BASE),PERSON_read)==(pp <-- PERSON_read);
  List_Header(Machine(DATA_BASE),PERSON_write)==(PERSON_write(pp))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(DATA_BASE),death)==(pp: PERSON & pp: person & pp: status~[{living}]);
  List_Precondition(Machine(DATA_BASE),marriage)==(bride: PERSON & bride: person & bride: person-dom(husband\/wife)/\sex~[{woman}] & groom: PERSON & groom: person & groom: person-dom(husband\/wife)/\sex~[{man}]);
  List_Precondition(Machine(DATA_BASE),first_human)==(PERSON-person/={} & ss: SEX);
  List_Precondition(Machine(DATA_BASE),new_born)==(PERSON-person/={} & ss: SEX & mm: PERSON & mm: dom(husband\/wife)/\sex~[{woman}]);
  List_Precondition(Machine(DATA_BASE),not_saturated)==(btrue);
  List_Precondition(Machine(DATA_BASE),is_present)==(pp: PERSON);
  List_Precondition(Machine(DATA_BASE),is_living)==(pp: PERSON & pp: person);
  List_Precondition(Machine(DATA_BASE),is_woman)==(pp: PERSON & pp: person);
  List_Precondition(Machine(DATA_BASE),is_married)==(pp: PERSON & pp: person);
  List_Precondition(Machine(DATA_BASE),has_mother)==(pp: PERSON & pp: person);
  List_Precondition(Machine(DATA_BASE),val_status)==(pp: PERSON & pp: person);
  List_Precondition(Machine(DATA_BASE),val_sex)==(pp: PERSON & pp: person);
  List_Precondition(Machine(DATA_BASE),val_spouse)==(pp: PERSON & pp: person & pp: dom(husband\/wife) & vv: PERSON);
  List_Precondition(Machine(DATA_BASE),val_mother)==(pp: PERSON & pp: person & pp: dom(mother) & vv: PERSON);
  List_Precondition(Machine(DATA_BASE),PERSON_read)==(btrue);
  List_Precondition(Machine(DATA_BASE),PERSON_write)==(pp: PERSON)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(DATA_BASE),PERSON_write)==(pp: PERSON | skip);
  Expanded_List_Substitution(Machine(DATA_BASE),PERSON_read)==(btrue | @(pp$0).(pp$0: PERSON ==> pp:=pp$0));
  Expanded_List_Substitution(Machine(DATA_BASE),val_mother)==(pp: PERSON & pp: person & pp: dom(mother) & vv: PERSON | vv:=mother(pp));
  Expanded_List_Substitution(Machine(DATA_BASE),val_spouse)==(pp: PERSON & pp: person & pp: dom(husband\/wife) & vv: PERSON | vv:=(husband\/wife)(pp));
  Expanded_List_Substitution(Machine(DATA_BASE),val_sex)==(pp: PERSON & pp: person | vv:=sex(pp));
  Expanded_List_Substitution(Machine(DATA_BASE),val_status)==(pp: PERSON & pp: person | vv:=status(pp));
  Expanded_List_Substitution(Machine(DATA_BASE),has_mother)==(pp: PERSON & pp: person | report:=bool(pp: dom(mother)));
  Expanded_List_Substitution(Machine(DATA_BASE),is_married)==(pp: PERSON & pp: person | report:=bool(pp: dom(husband\/wife)));
  Expanded_List_Substitution(Machine(DATA_BASE),is_woman)==(pp: PERSON & pp: person | report:=bool(pp: sex~[{woman}]));
  Expanded_List_Substitution(Machine(DATA_BASE),is_living)==(pp: PERSON & pp: person | report:=bool(pp: status~[{living}]));
  Expanded_List_Substitution(Machine(DATA_BASE),is_present)==(pp: PERSON | report:=bool(pp: person));
  Expanded_List_Substitution(Machine(DATA_BASE),not_saturated)==(btrue | report:=bool(PERSON-person/={}));
  Expanded_List_Substitution(Machine(DATA_BASE),new_born)==(PERSON-person/={} & ss: SEX & mm: PERSON & mm: dom(husband\/wife)/\sex~[{woman}] | @angel.(angel: PERSON-person ==> person,status,sex,mother,baby:=person\/{angel},status<+{angel|->living},sex<+{angel|->ss},mother<+{angel|->mm},angel));
  Expanded_List_Substitution(Machine(DATA_BASE),first_human)==(PERSON-person/={} & ss: SEX | @angel.(angel: PERSON-person ==> person,status,sex,baby:=person\/{angel},status<+{angel|->living},sex<+{angel|->ss},angel));
  Expanded_List_Substitution(Machine(DATA_BASE),marriage)==(bride: PERSON & bride: person & bride: person-dom(husband\/wife)/\sex~[{woman}] & groom: PERSON & groom: person & groom: person-dom(husband\/wife)/\sex~[{man}] | husband,wife:=husband<+{bride|->groom},wife<+{groom|->bride});
  Expanded_List_Substitution(Machine(DATA_BASE),death)==(pp: PERSON & pp: person & pp: status~[{living}] | status:=status<+{pp|->dead});
  List_Substitution(Machine(DATA_BASE),death)==(status(pp):=dead);
  List_Substitution(Machine(DATA_BASE),marriage)==(husband(bride):=groom || wife(groom):=bride);
  List_Substitution(Machine(DATA_BASE),first_human)==(ANY angel WHERE angel: PERSON-person THEN person:=person\/{angel} || status(angel):=living || sex(angel):=ss || baby:=angel END);
  List_Substitution(Machine(DATA_BASE),new_born)==(ANY angel WHERE angel: PERSON-person THEN person:=person\/{angel} || status(angel):=living || sex(angel):=ss || mother(angel):=mm || baby:=angel END);
  List_Substitution(Machine(DATA_BASE),not_saturated)==(report:=bool(PERSON-person/={}));
  List_Substitution(Machine(DATA_BASE),is_present)==(report:=bool(pp: person));
  List_Substitution(Machine(DATA_BASE),is_living)==(report:=bool(pp: status~[{living}]));
  List_Substitution(Machine(DATA_BASE),is_woman)==(report:=bool(pp: sex~[{woman}]));
  List_Substitution(Machine(DATA_BASE),is_married)==(report:=bool(pp: dom(husband\/wife)));
  List_Substitution(Machine(DATA_BASE),has_mother)==(report:=bool(pp: dom(mother)));
  List_Substitution(Machine(DATA_BASE),val_status)==(vv:=status(pp));
  List_Substitution(Machine(DATA_BASE),val_sex)==(vv:=sex(pp));
  List_Substitution(Machine(DATA_BASE),val_spouse)==(vv:=(husband\/wife)(pp));
  List_Substitution(Machine(DATA_BASE),val_mother)==(vv:=mother(pp));
  List_Substitution(Machine(DATA_BASE),PERSON_read)==(pp:: PERSON);
  List_Substitution(Machine(DATA_BASE),PERSON_write)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(DATA_BASE))==(max_pers);
  Inherited_List_Constants(Machine(DATA_BASE))==(?);
  List_Constants(Machine(DATA_BASE))==(max_pers)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(DATA_BASE),STATUS)==({dead,living});
  Context_List_Enumerated(Machine(DATA_BASE))==(SEX,STATUS);
  Context_List_Defered(Machine(DATA_BASE))==(?);
  Context_List_Sets(Machine(DATA_BASE))==(SEX,STATUS);
  List_Valuable_Sets(Machine(DATA_BASE))==(PERSON);
  Inherited_List_Enumerated(Machine(DATA_BASE))==(?);
  Inherited_List_Defered(Machine(DATA_BASE))==(?);
  Inherited_List_Sets(Machine(DATA_BASE))==(?);
  List_Enumerated(Machine(DATA_BASE))==(?);
  List_Defered(Machine(DATA_BASE))==(PERSON);
  List_Sets(Machine(DATA_BASE))==(PERSON);
  Set_Definition(Machine(DATA_BASE),SEX)==({man,woman});
  Set_Definition(Machine(DATA_BASE),PERSON)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(DATA_BASE))==(?);
  Expanded_List_HiddenConstants(Machine(DATA_BASE))==(?);
  List_HiddenConstants(Machine(DATA_BASE))==(?);
  External_List_HiddenConstants(Machine(DATA_BASE))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(DATA_BASE))==(btrue);
  Context_List_Properties(Machine(DATA_BASE))==(code_SEX: SEX >->> 0..1 & decode_SEX: 0..1 >->> SEX & decode_SEX = code_SEX~ & SEX: FIN(INTEGER) & not(SEX = {}) & code_STATUS: STATUS >->> {0,1} & decode_STATUS = code_STATUS~ & STATUS: FIN(INTEGER) & not(STATUS = {}));
  Inherited_List_Properties(Machine(DATA_BASE))==(btrue);
  List_Properties(Machine(DATA_BASE))==(max_pers: NAT & max_pers = card(PERSON) & PERSON: FIN(INTEGER) & not(PERSON = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(DATA_BASE),Machine(BASIC_STATUS))==(STATUS_READ,STATUS_WRITE);
  Seen_Context_List_Enumerated(Machine(DATA_BASE))==(?);
  Seen_Context_List_Invariant(Machine(DATA_BASE))==(btrue);
  Seen_Context_List_Assertions(Machine(DATA_BASE))==(btrue);
  Seen_Context_List_Properties(Machine(DATA_BASE))==(btrue);
  Seen_List_Constraints(Machine(DATA_BASE))==(btrue);
  Seen_List_Precondition(Machine(DATA_BASE),STATUS_WRITE)==(ii: STATUS);
  Seen_Expanded_List_Substitution(Machine(DATA_BASE),STATUS_WRITE)==(skip);
  Seen_List_Precondition(Machine(DATA_BASE),STATUS_READ)==(btrue);
  Seen_Expanded_List_Substitution(Machine(DATA_BASE),STATUS_READ)==(@(rr$0).(rr$0: STATUS ==> rr:=rr$0));
  Seen_List_Operations(Machine(DATA_BASE),Machine(BASIC_STATUS))==(STATUS_READ,STATUS_WRITE);
  Seen_Expanded_List_Invariant(Machine(DATA_BASE),Machine(BASIC_STATUS))==(btrue);
  Seen_Internal_List_Operations(Machine(DATA_BASE),Machine(BASIC_SEX))==(SEX_READ,SEX_WRITE);
  Seen_List_Precondition(Machine(DATA_BASE),SEX_WRITE)==(ii: SEX);
  Seen_Expanded_List_Substitution(Machine(DATA_BASE),SEX_WRITE)==(skip);
  Seen_List_Precondition(Machine(DATA_BASE),SEX_READ)==(btrue);
  Seen_Expanded_List_Substitution(Machine(DATA_BASE),SEX_READ)==(@(rr$0).(rr$0: SEX ==> rr:=rr$0));
  Seen_List_Operations(Machine(DATA_BASE),Machine(BASIC_SEX))==(SEX_READ,SEX_WRITE);
  Seen_Expanded_List_Invariant(Machine(DATA_BASE),Machine(BASIC_SEX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(DATA_BASE),death)==(?);
  List_ANY_Var(Machine(DATA_BASE),marriage)==(?);
  List_ANY_Var(Machine(DATA_BASE),first_human)==(Var(angel) == atype(PERSON,?,?));
  List_ANY_Var(Machine(DATA_BASE),new_born)==(Var(angel) == atype(PERSON,?,?));
  List_ANY_Var(Machine(DATA_BASE),not_saturated)==(?);
  List_ANY_Var(Machine(DATA_BASE),is_present)==(?);
  List_ANY_Var(Machine(DATA_BASE),is_living)==(?);
  List_ANY_Var(Machine(DATA_BASE),is_woman)==(?);
  List_ANY_Var(Machine(DATA_BASE),is_married)==(?);
  List_ANY_Var(Machine(DATA_BASE),has_mother)==(?);
  List_ANY_Var(Machine(DATA_BASE),val_status)==(?);
  List_ANY_Var(Machine(DATA_BASE),val_sex)==(?);
  List_ANY_Var(Machine(DATA_BASE),val_spouse)==(?);
  List_ANY_Var(Machine(DATA_BASE),val_mother)==(?);
  List_ANY_Var(Machine(DATA_BASE),PERSON_read)==(?);
  List_ANY_Var(Machine(DATA_BASE),PERSON_write)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(DATA_BASE)) == (max_pers,PERSON | ? | wife,husband,mother,status,sex,person | ? | death,marriage,first_human,new_born,not_saturated,is_present,is_living,is_woman,is_married,has_mother,val_status,val_sex,val_spouse,val_mother,PERSON_read,PERSON_write | ? | seen(Machine(BASIC_SEX)),seen(Machine(BASIC_STATUS)) | ? | DATA_BASE);
  List_Of_HiddenCst_Ids(Machine(DATA_BASE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(DATA_BASE)) == (max_pers);
  List_Of_VisibleVar_Ids(Machine(DATA_BASE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(DATA_BASE)) == (?: ?);
  List_Of_Ids(Machine(BASIC_STATUS)) == (STATUS,dead,living | ? | ? | ? | STATUS_READ,STATUS_WRITE | ? | ? | ? | BASIC_STATUS);
  List_Of_HiddenCst_Ids(Machine(BASIC_STATUS)) == (decode_STATUS,code_STATUS | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_STATUS)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_STATUS)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_STATUS)) == (?: ?);
  List_Of_Ids(Machine(BASIC_SEX)) == (code_SEX,decode_SEX,SEX,man,woman | ? | ? | ? | SEX_READ,SEX_WRITE | ? | ? | ? | BASIC_SEX);
  List_Of_HiddenCst_Ids(Machine(BASIC_SEX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_SEX)) == (code_SEX,decode_SEX);
  List_Of_VisibleVar_Ids(Machine(BASIC_SEX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_SEX)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(DATA_BASE)) == (Type(PERSON) == Cst(SetOf(atype(PERSON,"[PERSON","]PERSON"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(DATA_BASE)) == (Type(max_pers) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(DATA_BASE)) == (Type(wife) == Mvl(SetOf(atype(PERSON,?,?)*atype(PERSON,?,?)));Type(husband) == Mvl(SetOf(atype(PERSON,?,?)*atype(PERSON,?,?)));Type(mother) == Mvl(SetOf(atype(PERSON,?,?)*atype(PERSON,?,?)));Type(status) == Mvl(SetOf(atype(PERSON,?,?)*etype(STATUS,0,1)));Type(sex) == Mvl(SetOf(atype(PERSON,?,?)*etype(SEX,0,1)));Type(person) == Mvl(SetOf(atype(PERSON,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(DATA_BASE)) == (Type(PERSON_write) == Cst(No_type,atype(PERSON,?,?));Type(PERSON_read) == Cst(atype(PERSON,"[PERSON","]PERSON"),No_type);Type(val_mother) == Cst(atype(PERSON,?,?),atype(PERSON,?,?));Type(val_spouse) == Cst(atype(PERSON,?,?),atype(PERSON,?,?));Type(val_sex) == Cst(etype(SEX,?,?),atype(PERSON,?,?));Type(val_status) == Cst(etype(STATUS,?,?),atype(PERSON,?,?));Type(has_mother) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(is_married) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(is_woman) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(is_living) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(is_present) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(not_saturated) == Cst(btype(BOOL,?,?),No_type);Type(new_born) == Cst(atype(PERSON,?,?),etype(SEX,?,?)*atype(PERSON,?,?));Type(first_human) == Cst(atype(PERSON,?,?),etype(SEX,?,?));Type(marriage) == Cst(No_type,atype(PERSON,?,?)*atype(PERSON,?,?));Type(death) == Cst(No_type,atype(PERSON,?,?)));
  Observers(Machine(DATA_BASE)) == (Type(PERSON_write) == Cst(No_type,atype(PERSON,?,?));Type(PERSON_read) == Cst(atype(PERSON,"[PERSON","]PERSON"),No_type);Type(val_mother) == Cst(atype(PERSON,?,?),atype(PERSON,?,?));Type(val_spouse) == Cst(atype(PERSON,?,?),atype(PERSON,?,?));Type(val_sex) == Cst(etype(SEX,?,?),atype(PERSON,?,?));Type(val_status) == Cst(etype(STATUS,?,?),atype(PERSON,?,?));Type(has_mother) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(is_married) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(is_woman) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(is_living) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(is_present) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(not_saturated) == Cst(btype(BOOL,?,?),No_type))
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
)
