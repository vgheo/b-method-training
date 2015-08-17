Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(INNER_INTERFACE_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(INNER_INTERFACE_1))==(Machine(INNER_INTERFACE));
  Level(Implementation(INNER_INTERFACE_1))==(1);
  Upper_Level(Implementation(INNER_INTERFACE_1))==(Machine(INNER_INTERFACE))
END
&
THEORY LoadedStructureX IS
  Implementation(INNER_INTERFACE_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(INNER_INTERFACE_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(INNER_INTERFACE_1))==(DATA_BASE,QUERY);
  Inherited_List_Includes(Implementation(INNER_INTERFACE_1))==(QUERY,DATA_BASE)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(INNER_INTERFACE_1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(INNER_INTERFACE_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(INNER_INTERFACE_1))==(?);
  Context_List_Variables(Implementation(INNER_INTERFACE_1))==(?);
  Abstract_List_Variables(Implementation(INNER_INTERFACE_1))==(?);
  Local_List_Variables(Implementation(INNER_INTERFACE_1))==(?);
  List_Variables(Implementation(INNER_INTERFACE_1))==(wife,husband,mother,status,sex,person);
  External_List_Variables(Implementation(INNER_INTERFACE_1))==(wife,husband,mother,status,sex,person)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(INNER_INTERFACE_1))==(?);
  Abstract_List_VisibleVariables(Implementation(INNER_INTERFACE_1))==(?);
  External_List_VisibleVariables(Implementation(INNER_INTERFACE_1))==(?);
  Expanded_List_VisibleVariables(Implementation(INNER_INTERFACE_1))==(?);
  List_VisibleVariables(Implementation(INNER_INTERFACE_1))==(?);
  Internal_List_VisibleVariables(Implementation(INNER_INTERFACE_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(INNER_INTERFACE_1))==(btrue);
  Abstract_List_Invariant(Implementation(INNER_INTERFACE_1))==(btrue);
  Expanded_List_Invariant(Implementation(INNER_INTERFACE_1))==(person <: PERSON & sex: person --> SEX & status: person --> STATUS & husband: sex~[{woman}] >+> sex~[{man}] & wife = husband~ & mother: person +-> dom(husband\/wife)/\sex~[{woman}]);
  Context_List_Invariant(Implementation(INNER_INTERFACE_1))==(btrue);
  List_Invariant(Implementation(INNER_INTERFACE_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(INNER_INTERFACE_1))==(btrue);
  Expanded_List_Assertions(Implementation(INNER_INTERFACE_1))==(btrue);
  Context_List_Assertions(Implementation(INNER_INTERFACE_1))==(btrue);
  List_Assertions(Implementation(INNER_INTERFACE_1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(INNER_INTERFACE_1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(INNER_INTERFACE_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(INNER_INTERFACE_1))==(person,sex,status,mother,husband,wife:={},{},{},{},{},{});
  Context_List_Initialisation(Implementation(INNER_INTERFACE_1))==(skip);
  List_Initialisation(Implementation(INNER_INTERFACE_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(INNER_INTERFACE_1))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(INNER_INTERFACE_1),Machine(DATA_BASE))==(?);
  List_Instanciated_Parameters(Implementation(INNER_INTERFACE_1),Machine(QUERY))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(INNER_INTERFACE_1),Machine(QUERY))==(btrue);
  List_Constraints(Implementation(INNER_INTERFACE_1))==(btrue);
  List_Context_Constraints(Implementation(INNER_INTERFACE_1))==(btrue);
  List_Constraints(Implementation(INNER_INTERFACE_1),Machine(DATA_BASE))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(INNER_INTERFACE_1))==(death_operation,marriage_operation,first_operation,birth_operation,print_operation);
  List_Operations(Implementation(INNER_INTERFACE_1))==(death_operation,marriage_operation,first_operation,birth_operation,print_operation)
END
&
THEORY ListInputX IS
  List_Input(Implementation(INNER_INTERFACE_1),death_operation)==(?);
  List_Input(Implementation(INNER_INTERFACE_1),marriage_operation)==(?);
  List_Input(Implementation(INNER_INTERFACE_1),first_operation)==(?);
  List_Input(Implementation(INNER_INTERFACE_1),birth_operation)==(?);
  List_Input(Implementation(INNER_INTERFACE_1),print_operation)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(INNER_INTERFACE_1),death_operation)==(?);
  List_Output(Implementation(INNER_INTERFACE_1),marriage_operation)==(?);
  List_Output(Implementation(INNER_INTERFACE_1),first_operation)==(?);
  List_Output(Implementation(INNER_INTERFACE_1),birth_operation)==(?);
  List_Output(Implementation(INNER_INTERFACE_1),print_operation)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(INNER_INTERFACE_1),death_operation)==(death_operation);
  List_Header(Implementation(INNER_INTERFACE_1),marriage_operation)==(marriage_operation);
  List_Header(Implementation(INNER_INTERFACE_1),first_operation)==(first_operation);
  List_Header(Implementation(INNER_INTERFACE_1),birth_operation)==(birth_operation);
  List_Header(Implementation(INNER_INTERFACE_1),print_operation)==(print_operation)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(INNER_INTERFACE_1),death_operation)==(btrue);
  List_Precondition(Implementation(INNER_INTERFACE_1),death_operation)==(btrue);
  Own_Precondition(Implementation(INNER_INTERFACE_1),marriage_operation)==(btrue);
  List_Precondition(Implementation(INNER_INTERFACE_1),marriage_operation)==(btrue);
  Own_Precondition(Implementation(INNER_INTERFACE_1),first_operation)==(btrue);
  List_Precondition(Implementation(INNER_INTERFACE_1),first_operation)==(btrue);
  Own_Precondition(Implementation(INNER_INTERFACE_1),birth_operation)==(btrue);
  List_Precondition(Implementation(INNER_INTERFACE_1),birth_operation)==(btrue);
  Own_Precondition(Implementation(INNER_INTERFACE_1),print_operation)==(btrue);
  List_Precondition(Implementation(INNER_INTERFACE_1),print_operation)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(INNER_INTERFACE_1),print_operation)==(btrue | skip);
  Expanded_List_Substitution(Implementation(INNER_INTERFACE_1),birth_operation)==(btrue | @(ww,ss,bb,pp).((btrue | @(ss$1).(ss$1: SEX ==> ss:=ss$1) || @(ww$1).(ww$1: PERSON/\(dom(husband\/wife)/\sex~[{woman}]) ==> ww:=ww$1) || bb:=bool(PERSON-person/={}) [] (@(ss$1).(ss$1: SEX ==> ss:=ss$1) || @(ww$1).(ww$1: PERSON ==> ww:=ww$1) || bb:=FALSE));(bb = TRUE ==> (PERSON-person/={} & ss: SEX & ww: PERSON & ww: dom(husband\/wife)/\sex~[{woman}] | @angel.(angel: PERSON-person ==> person,status,sex,mother,pp:=person\/{angel},status<+{angel|->living},sex<+{angel|->ss},mother<+{angel|->ww},angel)) [] not(bb = TRUE) ==> skip)));
  Expanded_List_Substitution(Implementation(INNER_INTERFACE_1),first_operation)==(btrue | @(ss,bb,pp).((btrue | @(ss$1).(ss$1: SEX ==> ss:=ss$1) || bb:=bool(PERSON-person/={}));(bb = TRUE ==> (PERSON-person/={} & ss: SEX | @angel.(angel: PERSON-person ==> person,status,sex,pp:=person\/{angel},status<+{angel|->living},sex<+{angel|->ss},angel)) [] not(bb = TRUE) ==> skip)));
  Expanded_List_Substitution(Implementation(INNER_INTERFACE_1),marriage_operation)==(btrue | @(ww,mm,bb).((btrue | @(mm$1).(mm$1: PERSON/\(person-dom(husband\/wife)/\sex~[{man}]) ==> mm:=mm$1) || @(ww$1).(ww$1: PERSON/\(person-dom(husband\/wife)/\sex~[{woman}]) ==> ww:=ww$1) || bb:=TRUE [] (@(mm$1).(mm$1: PERSON ==> mm:=mm$1) || @(ww$1).(ww$1: PERSON ==> ww:=ww$1) || bb:=FALSE));(bb = TRUE ==> (ww: PERSON & ww: person & ww: person-dom(husband\/wife)/\sex~[{woman}] & mm: PERSON & mm: person & mm: person-dom(husband\/wife)/\sex~[{man}] | husband,wife:=husband<+{ww|->mm},wife<+{mm|->ww}) [] not(bb = TRUE) ==> skip)));
  Expanded_List_Substitution(Implementation(INNER_INTERFACE_1),death_operation)==(btrue | @(pp,bb).((btrue | @(pp$1).(pp$1: PERSON/\status~[{living}] ==> pp:=pp$1) || bb:=TRUE [] (@(pp$1).(pp$1: PERSON ==> pp:=pp$1) || bb:=FALSE));(bb = TRUE ==> (pp: PERSON & pp: person & pp: status~[{living}] | status:=status<+{pp|->dead}) [] not(bb = TRUE) ==> skip)));
  List_Substitution(Implementation(INNER_INTERFACE_1),death_operation)==(VAR pp,bb IN pp,bb <-- get_new_dead_person;IF bb = TRUE THEN death(pp) END END);
  List_Substitution(Implementation(INNER_INTERFACE_1),marriage_operation)==(VAR ww,mm,bb IN mm,ww,bb <-- get_new_couple;IF bb = TRUE THEN marriage(ww,mm) END END);
  List_Substitution(Implementation(INNER_INTERFACE_1),first_operation)==(VAR ss,bb,pp IN ss,bb <-- get_sex_of_new;IF bb = TRUE THEN pp <-- first_human(ss) END END);
  List_Substitution(Implementation(INNER_INTERFACE_1),birth_operation)==(VAR ww,ss,bb,pp IN ss,ww,bb <-- get_sex_and_mother;IF bb = TRUE THEN pp <-- new_born(ss,ww) END END);
  List_Substitution(Implementation(INNER_INTERFACE_1),print_operation)==(get_and_print_person)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(INNER_INTERFACE_1))==(?);
  Inherited_List_Constants(Implementation(INNER_INTERFACE_1))==(max_pers);
  List_Constants(Implementation(INNER_INTERFACE_1))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(INNER_INTERFACE_1),PERSON)==(?);
  Context_List_Enumerated(Implementation(INNER_INTERFACE_1))==(?);
  Context_List_Defered(Implementation(INNER_INTERFACE_1))==(?);
  Context_List_Sets(Implementation(INNER_INTERFACE_1))==(?);
  List_Own_Enumerated(Implementation(INNER_INTERFACE_1))==(?);
  List_Valuable_Sets(Implementation(INNER_INTERFACE_1))==(?);
  Inherited_List_Enumerated(Implementation(INNER_INTERFACE_1))==(?);
  Inherited_List_Defered(Implementation(INNER_INTERFACE_1))==(PERSON);
  Inherited_List_Sets(Implementation(INNER_INTERFACE_1))==(PERSON);
  List_Enumerated(Implementation(INNER_INTERFACE_1))==(?);
  List_Defered(Implementation(INNER_INTERFACE_1))==(?);
  List_Sets(Implementation(INNER_INTERFACE_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(INNER_INTERFACE_1))==(?);
  Expanded_List_HiddenConstants(Implementation(INNER_INTERFACE_1))==(?);
  List_HiddenConstants(Implementation(INNER_INTERFACE_1))==(?);
  External_List_HiddenConstants(Implementation(INNER_INTERFACE_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(INNER_INTERFACE_1))==(btrue);
  Context_List_Properties(Implementation(INNER_INTERFACE_1))==(btrue);
  Inherited_List_Properties(Implementation(INNER_INTERFACE_1))==(max_pers: NAT & max_pers = card(PERSON) & PERSON: FIN(INTEGER) & not(PERSON = {}));
  List_Properties(Implementation(INNER_INTERFACE_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(INNER_INTERFACE_1))==(aa: aa);
  List_Values(Implementation(INNER_INTERFACE_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(INNER_INTERFACE_1),Machine(QUERY))==(get_new_dead_person,get_sex_of_new,get_and_print_person,get_new_couple,get_sex_and_mother);
  List_Included_Operations(Implementation(INNER_INTERFACE_1),Machine(DATA_BASE))==(death,marriage,first_human,new_born,not_saturated,is_present,is_living,is_woman,is_married,has_mother,val_status,val_sex,val_spouse,val_mother,PERSON_read,PERSON_write)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(INNER_INTERFACE_1))==(Type(print_operation) == Cst(No_type,No_type);Type(birth_operation) == Cst(No_type,No_type);Type(first_operation) == Cst(No_type,No_type);Type(marriage_operation) == Cst(No_type,No_type);Type(death_operation) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(INNER_INTERFACE_1),Machine(DATA_BASE))==(max_pers);
  List_Constants_Env(Implementation(INNER_INTERFACE_1),Machine(DATA_BASE))==(Type(max_pers) == Cst(btype(INTEGER,?,?)));
  List_Defered_Sets(Implementation(INNER_INTERFACE_1),Machine(DATA_BASE))==(PERSON)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(INNER_INTERFACE_1)) == (? | max_pers,PERSON | ? | wife,husband,mother,status,sex,person | death_operation,marriage_operation,first_operation,birth_operation,print_operation | ? | imported(Machine(DATA_BASE)),imported(Machine(QUERY)) | ? | INNER_INTERFACE_1);
  List_Of_HiddenCst_Ids(Implementation(INNER_INTERFACE_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(INNER_INTERFACE_1)) == (max_pers);
  List_Of_VisibleVar_Ids(Implementation(INNER_INTERFACE_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(INNER_INTERFACE_1)) == (seen(Machine(DATA_BASE)): (max_pers,PERSON | ? | wife,husband,mother,status,sex,person | ? | ? | ? | ? | ? | ?) | seen(Machine(BASIC_SEX)): (code_SEX,decode_SEX,SEX,man,woman | ? | ? | ? | ? | ? | ? | ? | ?) | seen(Machine(BASIC_STATUS)): (code_STATUS,decode_STATUS,STATUS,dead,living | ? | ? | ? | ? | ? | ? | ? | ?));
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
THEORY SetsEnvX IS
  Sets(Implementation(INNER_INTERFACE_1)) == (Type(PERSON) == Cst(SetOf(atype(PERSON,"[PERSON","]PERSON"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(INNER_INTERFACE_1)) == (Type(max_pers) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(INNER_INTERFACE_1),death_operation, 1) == (Type(pp) == Lvl(atype(PERSON,?,?));Type(bb) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(INNER_INTERFACE_1),marriage_operation, 1) == (Type(ww) == Lvl(atype(PERSON,?,?));Type(mm) == Lvl(atype(PERSON,?,?));Type(bb) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(INNER_INTERFACE_1),first_operation, 1) == (Type(ss) == Lvl(etype(SEX,?,?));Type(bb) == Lvl(btype(BOOL,?,?));Type(pp) == Lvl(atype(PERSON,?,?)));
  Variables_Loc(Implementation(INNER_INTERFACE_1),birth_operation, 1) == (Type(ww) == Lvl(atype(PERSON,?,?));Type(ss) == Lvl(etype(SEX,?,?));Type(bb) == Lvl(btype(BOOL,?,?));Type(pp) == Lvl(atype(PERSON,?,?)))
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
  List_Local_Operations(Implementation(INNER_INTERFACE_1))==(?)
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
  TypingPredicate(Implementation(INNER_INTERFACE_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(INNER_INTERFACE_1),Machine(DATA_BASE))==(wife,husband,mother,status,sex,person);
  ImportedVisVariablesList(Implementation(INNER_INTERFACE_1),Machine(DATA_BASE))==(?);
  ImportedVariablesList(Implementation(INNER_INTERFACE_1),Machine(QUERY))==(?);
  ImportedVisVariablesList(Implementation(INNER_INTERFACE_1),Machine(QUERY))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
