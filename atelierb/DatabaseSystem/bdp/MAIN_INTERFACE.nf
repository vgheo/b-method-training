Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(MAIN_INTERFACE))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(MAIN_INTERFACE))==(Machine(MAIN_INTERFACE));
  Level(Machine(MAIN_INTERFACE))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(MAIN_INTERFACE)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(MAIN_INTERFACE))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(MAIN_INTERFACE))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(MAIN_INTERFACE))==(?);
  List_Includes(Machine(MAIN_INTERFACE))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(MAIN_INTERFACE))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(MAIN_INTERFACE))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(MAIN_INTERFACE))==(?);
  Context_List_Variables(Machine(MAIN_INTERFACE))==(?);
  Abstract_List_Variables(Machine(MAIN_INTERFACE))==(?);
  Local_List_Variables(Machine(MAIN_INTERFACE))==(?);
  List_Variables(Machine(MAIN_INTERFACE))==(?);
  External_List_Variables(Machine(MAIN_INTERFACE))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(MAIN_INTERFACE))==(?);
  Abstract_List_VisibleVariables(Machine(MAIN_INTERFACE))==(?);
  External_List_VisibleVariables(Machine(MAIN_INTERFACE))==(?);
  Expanded_List_VisibleVariables(Machine(MAIN_INTERFACE))==(?);
  List_VisibleVariables(Machine(MAIN_INTERFACE))==(?);
  Internal_List_VisibleVariables(Machine(MAIN_INTERFACE))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(MAIN_INTERFACE))==(btrue);
  Gluing_List_Invariant(Machine(MAIN_INTERFACE))==(btrue);
  Expanded_List_Invariant(Machine(MAIN_INTERFACE))==(btrue);
  Abstract_List_Invariant(Machine(MAIN_INTERFACE))==(btrue);
  Context_List_Invariant(Machine(MAIN_INTERFACE))==(btrue);
  List_Invariant(Machine(MAIN_INTERFACE))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(MAIN_INTERFACE))==(btrue);
  Abstract_List_Assertions(Machine(MAIN_INTERFACE))==(btrue);
  Context_List_Assertions(Machine(MAIN_INTERFACE))==(btrue);
  List_Assertions(Machine(MAIN_INTERFACE))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(MAIN_INTERFACE))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(MAIN_INTERFACE))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(MAIN_INTERFACE))==(skip);
  Context_List_Initialisation(Machine(MAIN_INTERFACE))==(skip);
  List_Initialisation(Machine(MAIN_INTERFACE))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(MAIN_INTERFACE))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(MAIN_INTERFACE))==(btrue);
  List_Constraints(Machine(MAIN_INTERFACE))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(MAIN_INTERFACE))==(main);
  List_Operations(Machine(MAIN_INTERFACE))==(main)
END
&
THEORY ListInputX IS
  List_Input(Machine(MAIN_INTERFACE),main)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(MAIN_INTERFACE),main)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(MAIN_INTERFACE),main)==(main)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(MAIN_INTERFACE),main)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(MAIN_INTERFACE),main)==(btrue | skip);
  List_Substitution(Machine(MAIN_INTERFACE),main)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(MAIN_INTERFACE))==(?);
  Inherited_List_Constants(Machine(MAIN_INTERFACE))==(?);
  List_Constants(Machine(MAIN_INTERFACE))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(MAIN_INTERFACE))==(?);
  Context_List_Defered(Machine(MAIN_INTERFACE))==(?);
  Context_List_Sets(Machine(MAIN_INTERFACE))==(?);
  List_Valuable_Sets(Machine(MAIN_INTERFACE))==(?);
  Inherited_List_Enumerated(Machine(MAIN_INTERFACE))==(?);
  Inherited_List_Defered(Machine(MAIN_INTERFACE))==(?);
  Inherited_List_Sets(Machine(MAIN_INTERFACE))==(?);
  List_Enumerated(Machine(MAIN_INTERFACE))==(?);
  List_Defered(Machine(MAIN_INTERFACE))==(?);
  List_Sets(Machine(MAIN_INTERFACE))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(MAIN_INTERFACE))==(?);
  Expanded_List_HiddenConstants(Machine(MAIN_INTERFACE))==(?);
  List_HiddenConstants(Machine(MAIN_INTERFACE))==(?);
  External_List_HiddenConstants(Machine(MAIN_INTERFACE))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(MAIN_INTERFACE))==(btrue);
  Context_List_Properties(Machine(MAIN_INTERFACE))==(btrue);
  Inherited_List_Properties(Machine(MAIN_INTERFACE))==(btrue);
  List_Properties(Machine(MAIN_INTERFACE))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(MAIN_INTERFACE),main)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(MAIN_INTERFACE)) == (? | ? | ? | ? | main | ? | ? | ? | MAIN_INTERFACE);
  List_Of_HiddenCst_Ids(Machine(MAIN_INTERFACE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MAIN_INTERFACE)) == (?);
  List_Of_VisibleVar_Ids(Machine(MAIN_INTERFACE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MAIN_INTERFACE)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(MAIN_INTERFACE)) == (Type(main) == Cst(No_type,No_type));
  Observers(Machine(MAIN_INTERFACE)) == (Type(main) == Cst(No_type,No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == VALIDATION_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
