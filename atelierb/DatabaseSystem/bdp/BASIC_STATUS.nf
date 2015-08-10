Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(BASIC_STATUS))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(BASIC_STATUS))==(Machine(BASIC_STATUS));
  Level(Machine(BASIC_STATUS))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(BASIC_STATUS)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(BASIC_STATUS))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(BASIC_STATUS))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(BASIC_STATUS))==(?);
  List_Includes(Machine(BASIC_STATUS))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(BASIC_STATUS))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(BASIC_STATUS))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(BASIC_STATUS))==(?);
  Context_List_Variables(Machine(BASIC_STATUS))==(?);
  Abstract_List_Variables(Machine(BASIC_STATUS))==(?);
  Local_List_Variables(Machine(BASIC_STATUS))==(?);
  List_Variables(Machine(BASIC_STATUS))==(?);
  External_List_Variables(Machine(BASIC_STATUS))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(BASIC_STATUS))==(?);
  Abstract_List_VisibleVariables(Machine(BASIC_STATUS))==(?);
  External_List_VisibleVariables(Machine(BASIC_STATUS))==(?);
  Expanded_List_VisibleVariables(Machine(BASIC_STATUS))==(?);
  List_VisibleVariables(Machine(BASIC_STATUS))==(?);
  Internal_List_VisibleVariables(Machine(BASIC_STATUS))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(BASIC_STATUS))==(btrue);
  Gluing_List_Invariant(Machine(BASIC_STATUS))==(btrue);
  Expanded_List_Invariant(Machine(BASIC_STATUS))==(btrue);
  Abstract_List_Invariant(Machine(BASIC_STATUS))==(btrue);
  Context_List_Invariant(Machine(BASIC_STATUS))==(btrue);
  List_Invariant(Machine(BASIC_STATUS))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(BASIC_STATUS))==(btrue);
  Abstract_List_Assertions(Machine(BASIC_STATUS))==(btrue);
  Context_List_Assertions(Machine(BASIC_STATUS))==(btrue);
  List_Assertions(Machine(BASIC_STATUS))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(BASIC_STATUS))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(BASIC_STATUS))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(BASIC_STATUS))==(skip);
  Context_List_Initialisation(Machine(BASIC_STATUS))==(skip);
  List_Initialisation(Machine(BASIC_STATUS))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(BASIC_STATUS))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(BASIC_STATUS))==(btrue);
  List_Constraints(Machine(BASIC_STATUS))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(BASIC_STATUS))==(STATUS_READ,STATUS_WRITE);
  List_Operations(Machine(BASIC_STATUS))==(STATUS_READ,STATUS_WRITE)
END
&
THEORY ListInputX IS
  List_Input(Machine(BASIC_STATUS),STATUS_READ)==(?);
  List_Input(Machine(BASIC_STATUS),STATUS_WRITE)==(ii)
END
&
THEORY ListOutputX IS
  List_Output(Machine(BASIC_STATUS),STATUS_READ)==(rr);
  List_Output(Machine(BASIC_STATUS),STATUS_WRITE)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(BASIC_STATUS),STATUS_READ)==(rr <-- STATUS_READ);
  List_Header(Machine(BASIC_STATUS),STATUS_WRITE)==(STATUS_WRITE(ii))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(BASIC_STATUS),STATUS_READ)==(btrue);
  List_Precondition(Machine(BASIC_STATUS),STATUS_WRITE)==(ii: STATUS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(BASIC_STATUS),STATUS_WRITE)==(ii: STATUS | skip);
  Expanded_List_Substitution(Machine(BASIC_STATUS),STATUS_READ)==(btrue | @(rr$0).(rr$0: STATUS ==> rr:=rr$0));
  List_Substitution(Machine(BASIC_STATUS),STATUS_READ)==(rr:: STATUS);
  List_Substitution(Machine(BASIC_STATUS),STATUS_WRITE)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(BASIC_STATUS))==(code_STATUS,decode_STATUS);
  Inherited_List_Constants(Machine(BASIC_STATUS))==(?);
  List_Constants(Machine(BASIC_STATUS))==(code_STATUS,decode_STATUS)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(BASIC_STATUS),STATUS)==({dead,living});
  Context_List_Enumerated(Machine(BASIC_STATUS))==(?);
  Context_List_Defered(Machine(BASIC_STATUS))==(?);
  Context_List_Sets(Machine(BASIC_STATUS))==(?);
  List_Valuable_Sets(Machine(BASIC_STATUS))==(?);
  Inherited_List_Enumerated(Machine(BASIC_STATUS))==(?);
  Inherited_List_Defered(Machine(BASIC_STATUS))==(?);
  Inherited_List_Sets(Machine(BASIC_STATUS))==(?);
  List_Enumerated(Machine(BASIC_STATUS))==(STATUS);
  List_Defered(Machine(BASIC_STATUS))==(?);
  List_Sets(Machine(BASIC_STATUS))==(STATUS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(BASIC_STATUS))==(?);
  Expanded_List_HiddenConstants(Machine(BASIC_STATUS))==(?);
  List_HiddenConstants(Machine(BASIC_STATUS))==(?);
  External_List_HiddenConstants(Machine(BASIC_STATUS))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(BASIC_STATUS))==(btrue);
  Context_List_Properties(Machine(BASIC_STATUS))==(btrue);
  Inherited_List_Properties(Machine(BASIC_STATUS))==(btrue);
  List_Properties(Machine(BASIC_STATUS))==(code_STATUS: STATUS >->> {0,1} & decode_STATUS = code_STATUS~ & STATUS: FIN(INTEGER) & not(STATUS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(BASIC_STATUS),STATUS_READ)==(?);
  List_ANY_Var(Machine(BASIC_STATUS),STATUS_WRITE)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(BASIC_STATUS)) == (code_STATUS,decode_STATUS,STATUS,dead,living | ? | ? | ? | STATUS_READ,STATUS_WRITE | ? | ? | ? | BASIC_STATUS);
  List_Of_HiddenCst_Ids(Machine(BASIC_STATUS)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_STATUS)) == (code_STATUS,decode_STATUS);
  List_Of_VisibleVar_Ids(Machine(BASIC_STATUS)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_STATUS)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(BASIC_STATUS)) == (Type(STATUS) == Cst(SetOf(etype(STATUS,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(BASIC_STATUS)) == (Type(dead) == Cst(etype(STATUS,0,1));Type(living) == Cst(etype(STATUS,0,1));Type(code_STATUS) == Cst(SetOf(etype(STATUS,0,1)*btype(INTEGER,0,1)));Type(decode_STATUS) == Cst(SetOf(btype(INTEGER,?,?)*etype(STATUS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(BASIC_STATUS)) == (Type(STATUS_WRITE) == Cst(No_type,etype(STATUS,?,?));Type(STATUS_READ) == Cst(etype(STATUS,?,?),No_type));
  Observers(Machine(BASIC_STATUS)) == (Type(STATUS_WRITE) == Cst(No_type,etype(STATUS,?,?));Type(STATUS_READ) == Cst(etype(STATUS,?,?),No_type))
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
