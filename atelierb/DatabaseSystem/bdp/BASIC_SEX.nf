Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(BASIC_SEX))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(BASIC_SEX))==(Machine(BASIC_SEX));
  Level(Machine(BASIC_SEX))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(BASIC_SEX)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(BASIC_SEX))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(BASIC_SEX))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(BASIC_SEX))==(?);
  List_Includes(Machine(BASIC_SEX))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(BASIC_SEX))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(BASIC_SEX))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(BASIC_SEX))==(?);
  Context_List_Variables(Machine(BASIC_SEX))==(?);
  Abstract_List_Variables(Machine(BASIC_SEX))==(?);
  Local_List_Variables(Machine(BASIC_SEX))==(?);
  List_Variables(Machine(BASIC_SEX))==(?);
  External_List_Variables(Machine(BASIC_SEX))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(BASIC_SEX))==(?);
  Abstract_List_VisibleVariables(Machine(BASIC_SEX))==(?);
  External_List_VisibleVariables(Machine(BASIC_SEX))==(?);
  Expanded_List_VisibleVariables(Machine(BASIC_SEX))==(?);
  List_VisibleVariables(Machine(BASIC_SEX))==(?);
  Internal_List_VisibleVariables(Machine(BASIC_SEX))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(BASIC_SEX))==(btrue);
  Gluing_List_Invariant(Machine(BASIC_SEX))==(btrue);
  Expanded_List_Invariant(Machine(BASIC_SEX))==(btrue);
  Abstract_List_Invariant(Machine(BASIC_SEX))==(btrue);
  Context_List_Invariant(Machine(BASIC_SEX))==(btrue);
  List_Invariant(Machine(BASIC_SEX))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(BASIC_SEX))==(btrue);
  Abstract_List_Assertions(Machine(BASIC_SEX))==(btrue);
  Context_List_Assertions(Machine(BASIC_SEX))==(btrue);
  List_Assertions(Machine(BASIC_SEX))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(BASIC_SEX))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(BASIC_SEX))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(BASIC_SEX))==(skip);
  Context_List_Initialisation(Machine(BASIC_SEX))==(skip);
  List_Initialisation(Machine(BASIC_SEX))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(BASIC_SEX))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(BASIC_SEX))==(btrue);
  List_Constraints(Machine(BASIC_SEX))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(BASIC_SEX))==(SEX_READ,SEX_WRITE);
  List_Operations(Machine(BASIC_SEX))==(SEX_READ,SEX_WRITE)
END
&
THEORY ListInputX IS
  List_Input(Machine(BASIC_SEX),SEX_READ)==(?);
  List_Input(Machine(BASIC_SEX),SEX_WRITE)==(ii)
END
&
THEORY ListOutputX IS
  List_Output(Machine(BASIC_SEX),SEX_READ)==(rr);
  List_Output(Machine(BASIC_SEX),SEX_WRITE)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(BASIC_SEX),SEX_READ)==(rr <-- SEX_READ);
  List_Header(Machine(BASIC_SEX),SEX_WRITE)==(SEX_WRITE(ii))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(BASIC_SEX),SEX_READ)==(btrue);
  List_Precondition(Machine(BASIC_SEX),SEX_WRITE)==(ii: SEX)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(BASIC_SEX),SEX_WRITE)==(ii: SEX | skip);
  Expanded_List_Substitution(Machine(BASIC_SEX),SEX_READ)==(btrue | @(rr$0).(rr$0: SEX ==> rr:=rr$0));
  List_Substitution(Machine(BASIC_SEX),SEX_READ)==(rr:: SEX);
  List_Substitution(Machine(BASIC_SEX),SEX_WRITE)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(BASIC_SEX))==(?);
  Inherited_List_Constants(Machine(BASIC_SEX))==(?);
  List_Constants(Machine(BASIC_SEX))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(BASIC_SEX),SEX)==({man,woman});
  Context_List_Enumerated(Machine(BASIC_SEX))==(?);
  Context_List_Defered(Machine(BASIC_SEX))==(?);
  Context_List_Sets(Machine(BASIC_SEX))==(?);
  List_Valuable_Sets(Machine(BASIC_SEX))==(?);
  Inherited_List_Enumerated(Machine(BASIC_SEX))==(?);
  Inherited_List_Defered(Machine(BASIC_SEX))==(?);
  Inherited_List_Sets(Machine(BASIC_SEX))==(?);
  List_Enumerated(Machine(BASIC_SEX))==(SEX);
  List_Defered(Machine(BASIC_SEX))==(?);
  List_Sets(Machine(BASIC_SEX))==(SEX)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(BASIC_SEX))==(?);
  Expanded_List_HiddenConstants(Machine(BASIC_SEX))==(?);
  List_HiddenConstants(Machine(BASIC_SEX))==(decode_SEX,code_SEX);
  External_List_HiddenConstants(Machine(BASIC_SEX))==(decode_SEX,code_SEX)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(BASIC_SEX))==(btrue);
  Context_List_Properties(Machine(BASIC_SEX))==(btrue);
  Inherited_List_Properties(Machine(BASIC_SEX))==(btrue);
  List_Properties(Machine(BASIC_SEX))==(code_SEX: SEX >->> {0,1} & decode_SEX = code_SEX~ & SEX: FIN(INTEGER) & not(SEX = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(BASIC_SEX),SEX_READ)==(?);
  List_ANY_Var(Machine(BASIC_SEX),SEX_WRITE)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(BASIC_SEX)) == (SEX,man,woman | ? | ? | ? | SEX_READ,SEX_WRITE | ? | ? | ? | BASIC_SEX);
  List_Of_HiddenCst_Ids(Machine(BASIC_SEX)) == (decode_SEX,code_SEX | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_SEX)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_SEX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_SEX)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(BASIC_SEX)) == (Type(SEX) == Cst(SetOf(etype(SEX,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(BASIC_SEX)) == (Type(man) == Cst(etype(SEX,0,1));Type(woman) == Cst(etype(SEX,0,1)))
END
&
THEORY HiddenConstantsEnvX IS
  HiddenConstants(Machine(BASIC_SEX)) == (Type(decode_SEX) == HCst(SetOf(btype(INTEGER,?,?)*etype(SEX,?,?)));Type(code_SEX) == HCst(SetOf(etype(SEX,0,1)*btype(INTEGER,0,1))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(BASIC_SEX)) == (Type(SEX_WRITE) == Cst(No_type,etype(SEX,?,?));Type(SEX_READ) == Cst(etype(SEX,?,?),No_type));
  Observers(Machine(BASIC_SEX)) == (Type(SEX_WRITE) == Cst(No_type,etype(SEX,?,?));Type(SEX_READ) == Cst(etype(SEX,?,?),No_type))
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
