Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(MAIN_INTERFACE_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(MAIN_INTERFACE_1))==(Machine(MAIN_INTERFACE));
  Level(Implementation(MAIN_INTERFACE_1))==(1);
  Upper_Level(Implementation(MAIN_INTERFACE_1))==(Machine(MAIN_INTERFACE))
END
&
THEORY LoadedStructureX IS
  Implementation(MAIN_INTERFACE_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(MAIN_INTERFACE_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(MAIN_INTERFACE_1))==(INNER_INTERFACE,BASIC_COMMAND,BASIC_SEX,BASIC_STATUS,BASIC_IO);
  Inherited_List_Includes(Implementation(MAIN_INTERFACE_1))==(BASIC_IO,BASIC_STATUS,BASIC_SEX,BASIC_COMMAND,INNER_INTERFACE)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(MAIN_INTERFACE_1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(MAIN_INTERFACE_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(MAIN_INTERFACE_1))==(?);
  Context_List_Variables(Implementation(MAIN_INTERFACE_1))==(?);
  Abstract_List_Variables(Implementation(MAIN_INTERFACE_1))==(?);
  Local_List_Variables(Implementation(MAIN_INTERFACE_1))==(?);
  List_Variables(Implementation(MAIN_INTERFACE_1))==(?);
  External_List_Variables(Implementation(MAIN_INTERFACE_1))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(MAIN_INTERFACE_1))==(?);
  Abstract_List_VisibleVariables(Implementation(MAIN_INTERFACE_1))==(?);
  External_List_VisibleVariables(Implementation(MAIN_INTERFACE_1))==(?);
  Expanded_List_VisibleVariables(Implementation(MAIN_INTERFACE_1))==(?);
  List_VisibleVariables(Implementation(MAIN_INTERFACE_1))==(?);
  Internal_List_VisibleVariables(Implementation(MAIN_INTERFACE_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(MAIN_INTERFACE_1))==(btrue);
  Abstract_List_Invariant(Implementation(MAIN_INTERFACE_1))==(btrue);
  Expanded_List_Invariant(Implementation(MAIN_INTERFACE_1))==(btrue);
  Context_List_Invariant(Implementation(MAIN_INTERFACE_1))==(btrue);
  List_Invariant(Implementation(MAIN_INTERFACE_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(MAIN_INTERFACE_1))==(btrue);
  Expanded_List_Assertions(Implementation(MAIN_INTERFACE_1))==(btrue);
  Context_List_Assertions(Implementation(MAIN_INTERFACE_1))==(btrue);
  List_Assertions(Implementation(MAIN_INTERFACE_1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(MAIN_INTERFACE_1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(MAIN_INTERFACE_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(MAIN_INTERFACE_1))==(skip);
  Context_List_Initialisation(Implementation(MAIN_INTERFACE_1))==(skip);
  List_Initialisation(Implementation(MAIN_INTERFACE_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(MAIN_INTERFACE_1))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(MAIN_INTERFACE_1),Machine(INNER_INTERFACE))==(?);
  List_Instanciated_Parameters(Implementation(MAIN_INTERFACE_1),Machine(BASIC_COMMAND))==(?);
  List_Instanciated_Parameters(Implementation(MAIN_INTERFACE_1),Machine(BASIC_SEX))==(?);
  List_Instanciated_Parameters(Implementation(MAIN_INTERFACE_1),Machine(BASIC_STATUS))==(?);
  List_Instanciated_Parameters(Implementation(MAIN_INTERFACE_1),Machine(BASIC_IO))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(MAIN_INTERFACE_1),Machine(BASIC_IO))==(btrue);
  List_Constraints(Implementation(MAIN_INTERFACE_1))==(btrue);
  List_Context_Constraints(Implementation(MAIN_INTERFACE_1))==(btrue);
  List_Constraints(Implementation(MAIN_INTERFACE_1),Machine(BASIC_STATUS))==(btrue);
  List_Constraints(Implementation(MAIN_INTERFACE_1),Machine(BASIC_SEX))==(btrue);
  List_Constraints(Implementation(MAIN_INTERFACE_1),Machine(BASIC_COMMAND))==(btrue);
  List_Constraints(Implementation(MAIN_INTERFACE_1),Machine(INNER_INTERFACE))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(MAIN_INTERFACE_1))==(main);
  List_Operations(Implementation(MAIN_INTERFACE_1))==(main)
END
&
THEORY ListInputX IS
  List_Input(Implementation(MAIN_INTERFACE_1),main)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(MAIN_INTERFACE_1),main)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(MAIN_INTERFACE_1),main)==(main)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(MAIN_INTERFACE_1),main)==(btrue);
  List_Precondition(Implementation(MAIN_INTERFACE_1),main)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(MAIN_INTERFACE_1),main)==(btrue | @(cc,xx).((btrue | @(rr$0).(rr$0: COMMAND ==> cc:=rr$0));xx:=MAXINT;WHILE cc/=quit & xx/=0 DO not(cc = print) & not(cc = death) & not(cc = marriage) & not(cc = birth) & cc = new ==> (btrue | skip) [] not(cc = new) & not(cc = print) & not(cc = death) & not(cc = marriage) & cc = birth ==> (btrue | skip) [] not(cc = new) & not(cc = birth) & not(cc = print) & not(cc = death) & cc = marriage ==> (btrue | skip) [] not(cc = new) & not(cc = birth) & not(cc = marriage) & not(cc = print) & cc = death ==> (btrue | skip) [] not(cc = new) & not(cc = birth) & not(cc = marriage) & not(cc = death) & cc = print ==> (btrue | skip) [] not(cc = new) & not(cc = birth) & not(cc = marriage) & not(cc = death) & not(cc = print) ==> skip;(btrue | @(rr$0).(rr$0: COMMAND ==> cc:=rr$0));(xx-1: INT & xx: INT & 1: INT | xx:=xx-1) INVARIANT xx: NAT VARIANT xx END));
  List_Substitution(Implementation(MAIN_INTERFACE_1),main)==(VAR cc,xx IN cc <-- COMMAND_READ;xx:=MAXINT;WHILE cc/=quit & xx/=0 DO CASE cc OF EITHER new THEN first_operation OR birth THEN birth_operation OR marriage THEN marriage_operation OR death THEN death_operation OR print THEN print_operation END END;cc <-- COMMAND_READ;xx:=xx-1 INVARIANT xx: NAT VARIANT xx END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(MAIN_INTERFACE_1))==(?);
  Inherited_List_Constants(Implementation(MAIN_INTERFACE_1))==(code_SEX,decode_SEX,code_STATUS,decode_STATUS);
  List_Constants(Implementation(MAIN_INTERFACE_1))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(MAIN_INTERFACE_1),STATUS)==({dead,living});
  Context_List_Enumerated(Implementation(MAIN_INTERFACE_1))==(?);
  Context_List_Defered(Implementation(MAIN_INTERFACE_1))==(?);
  Context_List_Sets(Implementation(MAIN_INTERFACE_1))==(?);
  List_Own_Enumerated(Implementation(MAIN_INTERFACE_1))==(?);
  List_Valuable_Sets(Implementation(MAIN_INTERFACE_1))==(?);
  Inherited_List_Enumerated(Implementation(MAIN_INTERFACE_1))==(COMMAND,SEX,STATUS);
  Inherited_List_Defered(Implementation(MAIN_INTERFACE_1))==(?);
  Inherited_List_Sets(Implementation(MAIN_INTERFACE_1))==(COMMAND,SEX,STATUS);
  List_Enumerated(Implementation(MAIN_INTERFACE_1))==(?);
  List_Defered(Implementation(MAIN_INTERFACE_1))==(?);
  List_Sets(Implementation(MAIN_INTERFACE_1))==(?);
  Set_Definition(Implementation(MAIN_INTERFACE_1),SEX)==({man,woman});
  Set_Definition(Implementation(MAIN_INTERFACE_1),COMMAND)==({new,birth,marriage,death,print,quit})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(MAIN_INTERFACE_1))==(?);
  Expanded_List_HiddenConstants(Implementation(MAIN_INTERFACE_1))==(decode_COMMAND,code_COMMAND);
  List_HiddenConstants(Implementation(MAIN_INTERFACE_1))==(?);
  External_List_HiddenConstants(Implementation(MAIN_INTERFACE_1))==(decode_COMMAND,code_COMMAND)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(MAIN_INTERFACE_1))==(btrue);
  Context_List_Properties(Implementation(MAIN_INTERFACE_1))==(btrue);
  Inherited_List_Properties(Implementation(MAIN_INTERFACE_1))==(code_COMMAND: COMMAND >->> {0,1,2,3,4,5} & decode_COMMAND = code_COMMAND~ & COMMAND: FIN(INTEGER) & not(COMMAND = {}) & code_SEX: SEX >->> {0,1} & decode_SEX = code_SEX~ & SEX: FIN(INTEGER) & not(SEX = {}) & code_STATUS: STATUS >->> {0,1} & decode_STATUS = code_STATUS~ & STATUS: FIN(INTEGER) & not(STATUS = {}));
  List_Properties(Implementation(MAIN_INTERFACE_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(MAIN_INTERFACE_1))==(aa: aa);
  List_Values(Implementation(MAIN_INTERFACE_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(MAIN_INTERFACE_1),Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE);
  List_Included_Operations(Implementation(MAIN_INTERFACE_1),Machine(BASIC_STATUS))==(STATUS_READ,STATUS_WRITE);
  List_Included_Operations(Implementation(MAIN_INTERFACE_1),Machine(BASIC_SEX))==(SEX_READ,SEX_WRITE);
  List_Included_Operations(Implementation(MAIN_INTERFACE_1),Machine(BASIC_COMMAND))==(COMMAND_READ,COMMAND_WRITE);
  List_Included_Operations(Implementation(MAIN_INTERFACE_1),Machine(INNER_INTERFACE))==(death_operation,marriage_operation,first_operation,birth_operation,print_operation)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(MAIN_INTERFACE_1))==(Type(main) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(MAIN_INTERFACE_1),Machine(BASIC_STATUS))==(code_STATUS,decode_STATUS);
  List_Constants_Env(Implementation(MAIN_INTERFACE_1),Machine(BASIC_STATUS))==(Type(dead) == Cst(etype(STATUS,0,1));Type(living) == Cst(etype(STATUS,0,1));Type(code_STATUS) == Cst(SetOf(etype(STATUS,0,1)*btype(INTEGER,0,1)));Type(decode_STATUS) == Cst(SetOf(btype(INTEGER,?,?)*etype(STATUS,?,?))));
  Enumerate_Definition(Implementation(MAIN_INTERFACE_1),Machine(BASIC_STATUS),STATUS)==({dead,living});
  List_Constants(Implementation(MAIN_INTERFACE_1),Machine(BASIC_SEX))==(code_SEX,decode_SEX);
  List_Constants_Env(Implementation(MAIN_INTERFACE_1),Machine(BASIC_SEX))==(Type(man) == Cst(etype(SEX,0,1));Type(woman) == Cst(etype(SEX,0,1));Type(code_SEX) == Cst(SetOf(etype(SEX,0,1)*btype(INTEGER,0,1)));Type(decode_SEX) == Cst(SetOf(btype(INTEGER,?,?)*etype(SEX,?,?))));
  Enumerate_Definition(Implementation(MAIN_INTERFACE_1),Machine(BASIC_SEX),SEX)==({man,woman});
  List_Constants_Env(Implementation(MAIN_INTERFACE_1),Machine(BASIC_COMMAND))==(Type(new) == Cst(etype(COMMAND,0,5));Type(birth) == Cst(etype(COMMAND,0,5));Type(marriage) == Cst(etype(COMMAND,0,5));Type(death) == Cst(etype(COMMAND,0,5));Type(print) == Cst(etype(COMMAND,0,5));Type(quit) == Cst(etype(COMMAND,0,5)));
  Enumerate_Definition(Implementation(MAIN_INTERFACE_1),Machine(BASIC_COMMAND),COMMAND)==({new,birth,marriage,death,print,quit})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(MAIN_INTERFACE_1)) == (? | code_STATUS,decode_STATUS,STATUS,dead,living,code_SEX,decode_SEX,SEX,man,woman,COMMAND,new,birth,marriage,death,print,quit | ? | ? | main | ? | imported(Machine(INNER_INTERFACE)),imported(Machine(BASIC_COMMAND)),imported(Machine(BASIC_SEX)),imported(Machine(BASIC_STATUS)),imported(Machine(BASIC_IO)) | ? | MAIN_INTERFACE_1);
  List_Of_HiddenCst_Ids(Implementation(MAIN_INTERFACE_1)) == (? | decode_COMMAND,code_COMMAND);
  List_Of_VisibleCst_Ids(Implementation(MAIN_INTERFACE_1)) == (code_STATUS,decode_STATUS,code_SEX,decode_SEX);
  List_Of_VisibleVar_Ids(Implementation(MAIN_INTERFACE_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(MAIN_INTERFACE_1)) == (?: ?);
  List_Of_Ids(Machine(BASIC_IO)) == (? | ? | ? | ? | INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE | ? | ? | ? | BASIC_IO);
  List_Of_HiddenCst_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_IO)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_IO)) == (?: ?);
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
  List_Of_Ids(Machine(BASIC_COMMAND)) == (COMMAND,new,birth,marriage,death,print,quit | ? | ? | ? | COMMAND_READ,COMMAND_WRITE | ? | ? | ? | BASIC_COMMAND);
  List_Of_HiddenCst_Ids(Machine(BASIC_COMMAND)) == (decode_COMMAND,code_COMMAND | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_COMMAND)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_COMMAND)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_COMMAND)) == (?: ?);
  List_Of_Ids(Machine(INNER_INTERFACE)) == (? | ? | ? | ? | death_operation,marriage_operation,first_operation,birth_operation,print_operation | ? | ? | ? | INNER_INTERFACE);
  List_Of_HiddenCst_Ids(Machine(INNER_INTERFACE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(INNER_INTERFACE)) == (?);
  List_Of_VisibleVar_Ids(Machine(INNER_INTERFACE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(INNER_INTERFACE)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(MAIN_INTERFACE_1)) == (Type(COMMAND) == Cst(SetOf(etype(COMMAND,0,5)));Type(SEX) == Cst(SetOf(etype(SEX,0,1)));Type(STATUS) == Cst(SetOf(etype(STATUS,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(MAIN_INTERFACE_1)) == (Type(quit) == Cst(etype(COMMAND,0,5));Type(print) == Cst(etype(COMMAND,0,5));Type(death) == Cst(etype(COMMAND,0,5));Type(marriage) == Cst(etype(COMMAND,0,5));Type(birth) == Cst(etype(COMMAND,0,5));Type(new) == Cst(etype(COMMAND,0,5));Type(decode_SEX) == Cst(SetOf(btype(INTEGER,?,?)*etype(SEX,?,?)));Type(code_SEX) == Cst(SetOf(etype(SEX,0,1)*btype(INTEGER,0,1)));Type(woman) == Cst(etype(SEX,0,1));Type(man) == Cst(etype(SEX,0,1));Type(decode_STATUS) == Cst(SetOf(btype(INTEGER,?,?)*etype(STATUS,?,?)));Type(code_STATUS) == Cst(SetOf(etype(STATUS,0,1)*btype(INTEGER,0,1)));Type(living) == Cst(etype(STATUS,0,1));Type(dead) == Cst(etype(STATUS,0,1)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(MAIN_INTERFACE_1),main, 1) == (Type(cc) == Lvl(etype(COMMAND,?,?));Type(xx) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(MAIN_INTERFACE_1))==(?)
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
  TypingPredicate(Implementation(MAIN_INTERFACE_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(MAIN_INTERFACE_1),Machine(INNER_INTERFACE))==(?);
  ImportedVisVariablesList(Implementation(MAIN_INTERFACE_1),Machine(INNER_INTERFACE))==(?);
  ImportedVariablesList(Implementation(MAIN_INTERFACE_1),Machine(BASIC_COMMAND))==(?);
  ImportedVisVariablesList(Implementation(MAIN_INTERFACE_1),Machine(BASIC_COMMAND))==(?);
  ImportedVariablesList(Implementation(MAIN_INTERFACE_1),Machine(BASIC_SEX))==(?);
  ImportedVisVariablesList(Implementation(MAIN_INTERFACE_1),Machine(BASIC_SEX))==(?);
  ImportedVariablesList(Implementation(MAIN_INTERFACE_1),Machine(BASIC_STATUS))==(?);
  ImportedVisVariablesList(Implementation(MAIN_INTERFACE_1),Machine(BASIC_STATUS))==(?);
  ImportedVariablesList(Implementation(MAIN_INTERFACE_1),Machine(BASIC_IO))==(?);
  ImportedVisVariablesList(Implementation(MAIN_INTERFACE_1),Machine(BASIC_IO))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
