Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(BASIC_COMMAND))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(BASIC_COMMAND))==(Machine(BASIC_COMMAND));
  Level(Machine(BASIC_COMMAND))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(BASIC_COMMAND)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(BASIC_COMMAND))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(BASIC_COMMAND))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(BASIC_COMMAND))==(?);
  List_Includes(Machine(BASIC_COMMAND))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(BASIC_COMMAND))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(BASIC_COMMAND))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(BASIC_COMMAND))==(?);
  Context_List_Variables(Machine(BASIC_COMMAND))==(?);
  Abstract_List_Variables(Machine(BASIC_COMMAND))==(?);
  Local_List_Variables(Machine(BASIC_COMMAND))==(?);
  List_Variables(Machine(BASIC_COMMAND))==(?);
  External_List_Variables(Machine(BASIC_COMMAND))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(BASIC_COMMAND))==(?);
  Abstract_List_VisibleVariables(Machine(BASIC_COMMAND))==(?);
  External_List_VisibleVariables(Machine(BASIC_COMMAND))==(?);
  Expanded_List_VisibleVariables(Machine(BASIC_COMMAND))==(?);
  List_VisibleVariables(Machine(BASIC_COMMAND))==(?);
  Internal_List_VisibleVariables(Machine(BASIC_COMMAND))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(BASIC_COMMAND))==(btrue);
  Gluing_List_Invariant(Machine(BASIC_COMMAND))==(btrue);
  Expanded_List_Invariant(Machine(BASIC_COMMAND))==(btrue);
  Abstract_List_Invariant(Machine(BASIC_COMMAND))==(btrue);
  Context_List_Invariant(Machine(BASIC_COMMAND))==(btrue);
  List_Invariant(Machine(BASIC_COMMAND))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(BASIC_COMMAND))==(btrue);
  Abstract_List_Assertions(Machine(BASIC_COMMAND))==(btrue);
  Context_List_Assertions(Machine(BASIC_COMMAND))==(btrue);
  List_Assertions(Machine(BASIC_COMMAND))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(BASIC_COMMAND))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(BASIC_COMMAND))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(BASIC_COMMAND))==(skip);
  Context_List_Initialisation(Machine(BASIC_COMMAND))==(skip);
  List_Initialisation(Machine(BASIC_COMMAND))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(BASIC_COMMAND))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(BASIC_COMMAND))==(btrue);
  List_Constraints(Machine(BASIC_COMMAND))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(BASIC_COMMAND))==(COMMAND_READ,COMMAND_WRITE);
  List_Operations(Machine(BASIC_COMMAND))==(COMMAND_READ,COMMAND_WRITE)
END
&
THEORY ListInputX IS
  List_Input(Machine(BASIC_COMMAND),COMMAND_READ)==(?);
  List_Input(Machine(BASIC_COMMAND),COMMAND_WRITE)==(ii)
END
&
THEORY ListOutputX IS
  List_Output(Machine(BASIC_COMMAND),COMMAND_READ)==(rr);
  List_Output(Machine(BASIC_COMMAND),COMMAND_WRITE)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(BASIC_COMMAND),COMMAND_READ)==(rr <-- COMMAND_READ);
  List_Header(Machine(BASIC_COMMAND),COMMAND_WRITE)==(COMMAND_WRITE(ii))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(BASIC_COMMAND),COMMAND_READ)==(btrue);
  List_Precondition(Machine(BASIC_COMMAND),COMMAND_WRITE)==(ii: COMMAND)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(BASIC_COMMAND),COMMAND_WRITE)==(ii: COMMAND | skip);
  Expanded_List_Substitution(Machine(BASIC_COMMAND),COMMAND_READ)==(btrue | @(rr$0).(rr$0: COMMAND ==> rr:=rr$0));
  List_Substitution(Machine(BASIC_COMMAND),COMMAND_READ)==(rr:: COMMAND);
  List_Substitution(Machine(BASIC_COMMAND),COMMAND_WRITE)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(BASIC_COMMAND))==(?);
  Inherited_List_Constants(Machine(BASIC_COMMAND))==(?);
  List_Constants(Machine(BASIC_COMMAND))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(BASIC_COMMAND),COMMAND)==({new,birth,marriage,death,print,quit});
  Context_List_Enumerated(Machine(BASIC_COMMAND))==(?);
  Context_List_Defered(Machine(BASIC_COMMAND))==(?);
  Context_List_Sets(Machine(BASIC_COMMAND))==(?);
  List_Valuable_Sets(Machine(BASIC_COMMAND))==(?);
  Inherited_List_Enumerated(Machine(BASIC_COMMAND))==(?);
  Inherited_List_Defered(Machine(BASIC_COMMAND))==(?);
  Inherited_List_Sets(Machine(BASIC_COMMAND))==(?);
  List_Enumerated(Machine(BASIC_COMMAND))==(COMMAND);
  List_Defered(Machine(BASIC_COMMAND))==(?);
  List_Sets(Machine(BASIC_COMMAND))==(COMMAND)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(BASIC_COMMAND))==(?);
  Expanded_List_HiddenConstants(Machine(BASIC_COMMAND))==(?);
  List_HiddenConstants(Machine(BASIC_COMMAND))==(decode_COMMAND,code_COMMAND);
  External_List_HiddenConstants(Machine(BASIC_COMMAND))==(decode_COMMAND,code_COMMAND)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(BASIC_COMMAND))==(btrue);
  Context_List_Properties(Machine(BASIC_COMMAND))==(btrue);
  Inherited_List_Properties(Machine(BASIC_COMMAND))==(btrue);
  List_Properties(Machine(BASIC_COMMAND))==(code_COMMAND: COMMAND >->> {0,1,2,3,4,5} & decode_COMMAND = code_COMMAND~ & COMMAND: FIN(INTEGER) & not(COMMAND = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(BASIC_COMMAND),COMMAND_READ)==(?);
  List_ANY_Var(Machine(BASIC_COMMAND),COMMAND_WRITE)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(BASIC_COMMAND)) == (COMMAND,new,birth,marriage,death,print,quit | ? | ? | ? | COMMAND_READ,COMMAND_WRITE | ? | ? | ? | BASIC_COMMAND);
  List_Of_HiddenCst_Ids(Machine(BASIC_COMMAND)) == (decode_COMMAND,code_COMMAND | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_COMMAND)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_COMMAND)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_COMMAND)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(BASIC_COMMAND)) == (Type(COMMAND) == Cst(SetOf(etype(COMMAND,0,5))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(BASIC_COMMAND)) == (Type(new) == Cst(etype(COMMAND,0,5));Type(birth) == Cst(etype(COMMAND,0,5));Type(marriage) == Cst(etype(COMMAND,0,5));Type(death) == Cst(etype(COMMAND,0,5));Type(print) == Cst(etype(COMMAND,0,5));Type(quit) == Cst(etype(COMMAND,0,5)))
END
&
THEORY HiddenConstantsEnvX IS
  HiddenConstants(Machine(BASIC_COMMAND)) == (Type(decode_COMMAND) == HCst(SetOf(btype(INTEGER,?,?)*etype(COMMAND,?,?)));Type(code_COMMAND) == HCst(SetOf(etype(COMMAND,0,5)*btype(INTEGER,0,5))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(BASIC_COMMAND)) == (Type(COMMAND_WRITE) == Cst(No_type,etype(COMMAND,?,?));Type(COMMAND_READ) == Cst(etype(COMMAND,?,?),No_type));
  Observers(Machine(BASIC_COMMAND)) == (Type(COMMAND_WRITE) == Cst(No_type,etype(COMMAND,?,?));Type(COMMAND_READ) == Cst(etype(COMMAND,?,?),No_type))
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
