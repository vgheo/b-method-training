Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(QUERY))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(QUERY))==(Machine(QUERY));
  Level(Machine(QUERY))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(QUERY)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(QUERY))==(DATA_BASE,BASIC_SEX,BASIC_STATUS)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(QUERY))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(QUERY))==(?);
  List_Includes(Machine(QUERY))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(QUERY))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(QUERY))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(QUERY))==(?);
  Context_List_Variables(Machine(QUERY))==(?);
  Abstract_List_Variables(Machine(QUERY))==(?);
  Local_List_Variables(Machine(QUERY))==(?);
  List_Variables(Machine(QUERY))==(?);
  External_List_Variables(Machine(QUERY))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(QUERY))==(?);
  Abstract_List_VisibleVariables(Machine(QUERY))==(?);
  External_List_VisibleVariables(Machine(QUERY))==(?);
  Expanded_List_VisibleVariables(Machine(QUERY))==(?);
  List_VisibleVariables(Machine(QUERY))==(?);
  Internal_List_VisibleVariables(Machine(QUERY))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(QUERY))==(btrue);
  Gluing_List_Invariant(Machine(QUERY))==(btrue);
  Expanded_List_Invariant(Machine(QUERY))==(btrue);
  Abstract_List_Invariant(Machine(QUERY))==(btrue);
  Context_List_Invariant(Machine(QUERY))==(person <: PERSON & sex: person --> SEX & status: person --> STATUS & husband: sex~[{woman}] >+> sex~[{man}] & wife = husband~ & mother: person +-> dom(husband\/wife)/\sex~[{woman}]);
  List_Invariant(Machine(QUERY))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(QUERY))==(btrue);
  Abstract_List_Assertions(Machine(QUERY))==(btrue);
  Context_List_Assertions(Machine(QUERY))==(btrue);
  List_Assertions(Machine(QUERY))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(QUERY))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(QUERY))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(QUERY))==(skip);
  Context_List_Initialisation(Machine(QUERY))==(skip);
  List_Initialisation(Machine(QUERY))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(QUERY))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(QUERY),Machine(DATA_BASE))==(?);
  List_Instanciated_Parameters(Machine(QUERY),Machine(BASIC_SEX))==(?);
  List_Instanciated_Parameters(Machine(QUERY),Machine(BASIC_STATUS))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(QUERY))==(btrue);
  List_Constraints(Machine(QUERY))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(QUERY))==(get_new_dead_person,get_sex_of_new,get_and_print_person,get_new_couple,get_sex_and_mother);
  List_Operations(Machine(QUERY))==(get_new_dead_person,get_sex_of_new,get_and_print_person,get_new_couple,get_sex_and_mother)
END
&
THEORY ListInputX IS
  List_Input(Machine(QUERY),get_new_dead_person)==(?);
  List_Input(Machine(QUERY),get_sex_of_new)==(?);
  List_Input(Machine(QUERY),get_and_print_person)==(?);
  List_Input(Machine(QUERY),get_new_couple)==(?);
  List_Input(Machine(QUERY),get_sex_and_mother)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(QUERY),get_new_dead_person)==(pp,bb);
  List_Output(Machine(QUERY),get_sex_of_new)==(ss,bb);
  List_Output(Machine(QUERY),get_and_print_person)==(?);
  List_Output(Machine(QUERY),get_new_couple)==(mm,ww,bb);
  List_Output(Machine(QUERY),get_sex_and_mother)==(ss,ww,bb)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(QUERY),get_new_dead_person)==(pp,bb <-- get_new_dead_person);
  List_Header(Machine(QUERY),get_sex_of_new)==(ss,bb <-- get_sex_of_new);
  List_Header(Machine(QUERY),get_and_print_person)==(get_and_print_person);
  List_Header(Machine(QUERY),get_new_couple)==(mm,ww,bb <-- get_new_couple);
  List_Header(Machine(QUERY),get_sex_and_mother)==(ss,ww,bb <-- get_sex_and_mother)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(QUERY),get_new_dead_person)==(btrue);
  List_Precondition(Machine(QUERY),get_sex_of_new)==(btrue);
  List_Precondition(Machine(QUERY),get_and_print_person)==(btrue);
  List_Precondition(Machine(QUERY),get_new_couple)==(btrue);
  List_Precondition(Machine(QUERY),get_sex_and_mother)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(QUERY),get_sex_and_mother)==(btrue | @(ss$0).(ss$0: SEX ==> ss:=ss$0) || @(ww$0).(ww$0: PERSON/\(dom(husband\/wife)/\sex~[{woman}]) ==> ww:=ww$0) || bb:=bool(PERSON-person/={}) [] (@(ss$0).(ss$0: SEX ==> ss:=ss$0) || @(ww$0).(ww$0: PERSON ==> ww:=ww$0) || bb:=FALSE));
  Expanded_List_Substitution(Machine(QUERY),get_new_couple)==(btrue | @(mm$0).(mm$0: PERSON/\(person-dom(husband\/wife)/\sex~[{man}]) ==> mm:=mm$0) || @(ww$0).(ww$0: PERSON/\(person-dom(husband\/wife)/\sex~[{woman}]) ==> ww:=ww$0) || bb:=TRUE [] (@(mm$0).(mm$0: PERSON ==> mm:=mm$0) || @(ww$0).(ww$0: PERSON ==> ww:=ww$0) || bb:=FALSE));
  Expanded_List_Substitution(Machine(QUERY),get_and_print_person)==(btrue | skip);
  Expanded_List_Substitution(Machine(QUERY),get_sex_of_new)==(btrue | @(ss$0).(ss$0: SEX ==> ss:=ss$0) || bb:=bool(PERSON-person/={}));
  Expanded_List_Substitution(Machine(QUERY),get_new_dead_person)==(btrue | @(pp$0).(pp$0: PERSON/\status~[{living}] ==> pp:=pp$0) || bb:=TRUE [] (@(pp$0).(pp$0: PERSON ==> pp:=pp$0) || bb:=FALSE));
  List_Substitution(Machine(QUERY),get_new_dead_person)==(CHOICE pp:: PERSON/\status~[{living}] || bb:=TRUE OR pp:: PERSON || bb:=FALSE END);
  List_Substitution(Machine(QUERY),get_sex_of_new)==(ss:: SEX || bb:=bool(PERSON-person/={}));
  List_Substitution(Machine(QUERY),get_and_print_person)==(skip);
  List_Substitution(Machine(QUERY),get_new_couple)==(CHOICE mm:: PERSON/\(person-dom(husband\/wife)/\sex~[{man}]) || ww:: PERSON/\(person-dom(husband\/wife)/\sex~[{woman}]) || bb:=TRUE OR mm:: PERSON || ww:: PERSON || bb:=FALSE END);
  List_Substitution(Machine(QUERY),get_sex_and_mother)==(CHOICE ss:: SEX || ww:: PERSON/\(dom(husband\/wife)/\sex~[{woman}]) || bb:=bool(PERSON-person/={}) OR ss:: SEX || ww:: PERSON || bb:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(QUERY))==(?);
  Inherited_List_Constants(Machine(QUERY))==(?);
  List_Constants(Machine(QUERY))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(QUERY),STATUS)==({dead,living});
  Context_List_Enumerated(Machine(QUERY))==(SEX,STATUS);
  Context_List_Defered(Machine(QUERY))==(PERSON);
  Context_List_Sets(Machine(QUERY))==(PERSON,SEX,STATUS);
  List_Valuable_Sets(Machine(QUERY))==(?);
  Inherited_List_Enumerated(Machine(QUERY))==(?);
  Inherited_List_Defered(Machine(QUERY))==(?);
  Inherited_List_Sets(Machine(QUERY))==(?);
  List_Enumerated(Machine(QUERY))==(?);
  List_Defered(Machine(QUERY))==(?);
  List_Sets(Machine(QUERY))==(?);
  Set_Definition(Machine(QUERY),SEX)==({man,woman})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(QUERY))==(?);
  Expanded_List_HiddenConstants(Machine(QUERY))==(?);
  List_HiddenConstants(Machine(QUERY))==(?);
  External_List_HiddenConstants(Machine(QUERY))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(QUERY))==(btrue);
  Context_List_Properties(Machine(QUERY))==(max_pers: NAT & max_pers = card(PERSON) & PERSON: FIN(INTEGER) & not(PERSON = {}) & code_SEX: SEX >->> 0..1 & decode_SEX: 0..1 >->> SEX & decode_SEX = code_SEX~ & SEX: FIN(INTEGER) & not(SEX = {}) & code_STATUS: STATUS >->> 0..1 & decode_STATUS: 0..1 >->> STATUS & decode_STATUS = code_STATUS~ & STATUS: FIN(INTEGER) & not(STATUS = {}));
  Inherited_List_Properties(Machine(QUERY))==(btrue);
  List_Properties(Machine(QUERY))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(QUERY),Machine(BASIC_STATUS))==(STATUS_READ,STATUS_WRITE);
  Seen_Context_List_Enumerated(Machine(QUERY))==(SEX,STATUS);
  Seen_Context_List_Invariant(Machine(QUERY))==(btrue);
  Seen_Context_List_Assertions(Machine(QUERY))==(btrue);
  Seen_Context_List_Properties(Machine(QUERY))==(code_SEX: SEX >->> 0..1 & decode_SEX: 0..1 >->> SEX & decode_SEX = code_SEX~ & SEX: FIN(INTEGER) & not(SEX = {}) & code_STATUS: STATUS >->> 0..1 & decode_STATUS: 0..1 >->> STATUS & decode_STATUS = code_STATUS~ & STATUS: FIN(INTEGER) & not(STATUS = {}));
  Seen_List_Constraints(Machine(QUERY))==(btrue);
  Seen_List_Precondition(Machine(QUERY),STATUS_WRITE)==(ii: STATUS);
  Seen_Expanded_List_Substitution(Machine(QUERY),STATUS_WRITE)==(skip);
  Seen_List_Precondition(Machine(QUERY),STATUS_READ)==(btrue);
  Seen_Expanded_List_Substitution(Machine(QUERY),STATUS_READ)==(@(rr$0).(rr$0: STATUS ==> rr:=rr$0));
  Seen_List_Operations(Machine(QUERY),Machine(BASIC_STATUS))==(STATUS_READ,STATUS_WRITE);
  Seen_Expanded_List_Invariant(Machine(QUERY),Machine(BASIC_STATUS))==(btrue);
  Seen_Internal_List_Operations(Machine(QUERY),Machine(BASIC_SEX))==(SEX_READ,SEX_WRITE);
  Seen_List_Precondition(Machine(QUERY),SEX_WRITE)==(ii: SEX);
  Seen_Expanded_List_Substitution(Machine(QUERY),SEX_WRITE)==(skip);
  Seen_List_Precondition(Machine(QUERY),SEX_READ)==(btrue);
  Seen_Expanded_List_Substitution(Machine(QUERY),SEX_READ)==(@(rr$0).(rr$0: SEX ==> rr:=rr$0));
  Seen_List_Operations(Machine(QUERY),Machine(BASIC_SEX))==(SEX_READ,SEX_WRITE);
  Seen_Expanded_List_Invariant(Machine(QUERY),Machine(BASIC_SEX))==(btrue);
  Seen_Internal_List_Operations(Machine(QUERY),Machine(DATA_BASE))==(death,marriage,first_human,new_born,not_saturated,is_present,is_living,is_woman,is_married,has_mother,val_status,val_sex,val_spouse,val_mother,PERSON_read,PERSON_write);
  Seen_List_Precondition(Machine(QUERY),PERSON_write)==(pp: PERSON);
  Seen_Expanded_List_Substitution(Machine(QUERY),PERSON_write)==(skip);
  Seen_List_Precondition(Machine(QUERY),PERSON_read)==(btrue);
  Seen_Expanded_List_Substitution(Machine(QUERY),PERSON_read)==(@(pp$0).(pp$0: PERSON ==> pp:=pp$0));
  Seen_List_Precondition(Machine(QUERY),val_mother)==(pp: PERSON & pp: person & pp: dom(mother) & vv: PERSON);
  Seen_Expanded_List_Substitution(Machine(QUERY),val_mother)==(vv:=mother(pp));
  Seen_List_Precondition(Machine(QUERY),val_spouse)==(pp: PERSON & pp: person & pp: dom(husband\/wife) & vv: PERSON);
  Seen_Expanded_List_Substitution(Machine(QUERY),val_spouse)==(vv:=(husband\/wife)(pp));
  Seen_List_Precondition(Machine(QUERY),val_sex)==(pp: PERSON & pp: person);
  Seen_Expanded_List_Substitution(Machine(QUERY),val_sex)==(vv:=sex(pp));
  Seen_List_Precondition(Machine(QUERY),val_status)==(pp: PERSON & pp: person);
  Seen_Expanded_List_Substitution(Machine(QUERY),val_status)==(vv:=status(pp));
  Seen_List_Precondition(Machine(QUERY),has_mother)==(pp: PERSON & pp: person);
  Seen_Expanded_List_Substitution(Machine(QUERY),has_mother)==(report:=bool(pp: dom(mother)));
  Seen_List_Precondition(Machine(QUERY),is_married)==(pp: PERSON & pp: person);
  Seen_Expanded_List_Substitution(Machine(QUERY),is_married)==(report:=bool(pp: dom(husband\/wife)));
  Seen_List_Precondition(Machine(QUERY),is_woman)==(pp: PERSON & pp: person);
  Seen_Expanded_List_Substitution(Machine(QUERY),is_woman)==(report:=bool(pp: sex~[{woman}]));
  Seen_List_Precondition(Machine(QUERY),is_living)==(pp: PERSON & pp: person);
  Seen_Expanded_List_Substitution(Machine(QUERY),is_living)==(report:=bool(pp: status~[{living}]));
  Seen_List_Precondition(Machine(QUERY),is_present)==(pp: PERSON);
  Seen_Expanded_List_Substitution(Machine(QUERY),is_present)==(report:=bool(pp: person));
  Seen_List_Precondition(Machine(QUERY),not_saturated)==(btrue);
  Seen_Expanded_List_Substitution(Machine(QUERY),not_saturated)==(report:=bool(PERSON-person/={}));
  Seen_List_Precondition(Machine(QUERY),new_born)==(PERSON-person/={} & ss: SEX & mm: PERSON & mm: dom(husband\/wife)/\sex~[{woman}]);
  Seen_Expanded_List_Substitution(Machine(QUERY),new_born)==(@angel.(angel: PERSON-person ==> person,status,sex,mother,baby:=person\/{angel},status<+{angel|->living},sex<+{angel|->ss},mother<+{angel|->mm},angel));
  Seen_List_Precondition(Machine(QUERY),first_human)==(PERSON-person/={} & ss: SEX);
  Seen_Expanded_List_Substitution(Machine(QUERY),first_human)==(@angel.(angel: PERSON-person ==> person,status,sex,baby:=person\/{angel},status<+{angel|->living},sex<+{angel|->ss},angel));
  Seen_List_Precondition(Machine(QUERY),marriage)==(bride: PERSON & bride: person & bride: person-dom(husband\/wife)/\sex~[{woman}] & groom: PERSON & groom: person & groom: person-dom(husband\/wife)/\sex~[{man}]);
  Seen_Expanded_List_Substitution(Machine(QUERY),marriage)==(husband,wife:=husband<+{bride|->groom},wife<+{groom|->bride});
  Seen_List_Precondition(Machine(QUERY),death)==(pp: PERSON & pp: person & pp: status~[{living}]);
  Seen_Expanded_List_Substitution(Machine(QUERY),death)==(status:=status<+{pp|->dead});
  Seen_List_Operations(Machine(QUERY),Machine(DATA_BASE))==(death,marriage,first_human,new_born,not_saturated,is_present,is_living,is_woman,is_married,has_mother,val_status,val_sex,val_spouse,val_mother,PERSON_read,PERSON_write);
  Seen_Expanded_List_Invariant(Machine(QUERY),Machine(DATA_BASE))==(btrue);
  Set_Definition(Machine(QUERY),STATUS)==({dead,living});
  Set_Definition(Machine(QUERY),SEX)==({man,woman})
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(QUERY),get_new_dead_person)==(?);
  List_ANY_Var(Machine(QUERY),get_sex_of_new)==(?);
  List_ANY_Var(Machine(QUERY),get_and_print_person)==(?);
  List_ANY_Var(Machine(QUERY),get_new_couple)==(?);
  List_ANY_Var(Machine(QUERY),get_sex_and_mother)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(QUERY)) == (? | ? | ? | ? | get_new_dead_person,get_sex_of_new,get_and_print_person,get_new_couple,get_sex_and_mother | ? | seen(Machine(DATA_BASE)),seen(Machine(BASIC_SEX)),seen(Machine(BASIC_STATUS)) | ? | QUERY);
  List_Of_HiddenCst_Ids(Machine(QUERY)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(QUERY)) == (?);
  List_Of_VisibleVar_Ids(Machine(QUERY)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(QUERY)) == (?: ?);
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
  List_Of_Ids(Machine(DATA_BASE)) == (max_pers,PERSON | ? | wife,husband,mother,status,sex,person | ? | death,marriage,first_human,new_born,not_saturated,is_present,is_living,is_woman,is_married,has_mother,val_status,val_sex,val_spouse,val_mother,PERSON_read,PERSON_write | ? | seen(Machine(BASIC_SEX)),seen(Machine(BASIC_STATUS)) | ? | DATA_BASE);
  List_Of_HiddenCst_Ids(Machine(DATA_BASE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(DATA_BASE)) == (max_pers);
  List_Of_VisibleVar_Ids(Machine(DATA_BASE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(DATA_BASE)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(QUERY)) == (Type(get_sex_and_mother) == Cst(etype(SEX,?,?)*atype(PERSON,?,?)*btype(BOOL,?,?),No_type);Type(get_new_couple) == Cst(atype(PERSON,?,?)*atype(PERSON,?,?)*btype(BOOL,?,?),No_type);Type(get_and_print_person) == Cst(No_type,No_type);Type(get_sex_of_new) == Cst(etype(SEX,?,?)*btype(BOOL,?,?),No_type);Type(get_new_dead_person) == Cst(atype(PERSON,?,?)*btype(BOOL,?,?),No_type));
  Observers(Machine(QUERY)) == (Type(get_sex_and_mother) == Cst(etype(SEX,?,?)*atype(PERSON,?,?)*btype(BOOL,?,?),No_type);Type(get_new_couple) == Cst(atype(PERSON,?,?)*atype(PERSON,?,?)*btype(BOOL,?,?),No_type);Type(get_and_print_person) == Cst(No_type,No_type);Type(get_sex_of_new) == Cst(etype(SEX,?,?)*btype(BOOL,?,?),No_type);Type(get_new_dead_person) == Cst(atype(PERSON,?,?)*btype(BOOL,?,?),No_type))
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
