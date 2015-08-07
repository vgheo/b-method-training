Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(INNER_INTERFACE))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(INNER_INTERFACE))==(Machine(INNER_INTERFACE));
  Level(Machine(INNER_INTERFACE))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(INNER_INTERFACE)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(INNER_INTERFACE))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(INNER_INTERFACE))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(INNER_INTERFACE))==(?);
  List_Includes(Machine(INNER_INTERFACE))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(INNER_INTERFACE))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(INNER_INTERFACE))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(INNER_INTERFACE))==(?);
  Context_List_Variables(Machine(INNER_INTERFACE))==(?);
  Abstract_List_Variables(Machine(INNER_INTERFACE))==(?);
  Local_List_Variables(Machine(INNER_INTERFACE))==(?);
  List_Variables(Machine(INNER_INTERFACE))==(?);
  External_List_Variables(Machine(INNER_INTERFACE))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(INNER_INTERFACE))==(?);
  Abstract_List_VisibleVariables(Machine(INNER_INTERFACE))==(?);
  External_List_VisibleVariables(Machine(INNER_INTERFACE))==(?);
  Expanded_List_VisibleVariables(Machine(INNER_INTERFACE))==(?);
  List_VisibleVariables(Machine(INNER_INTERFACE))==(?);
  Internal_List_VisibleVariables(Machine(INNER_INTERFACE))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(INNER_INTERFACE))==(btrue);
  Gluing_List_Invariant(Machine(INNER_INTERFACE))==(btrue);
  Expanded_List_Invariant(Machine(INNER_INTERFACE))==(btrue);
  Abstract_List_Invariant(Machine(INNER_INTERFACE))==(btrue);
  Context_List_Invariant(Machine(INNER_INTERFACE))==(btrue);
  List_Invariant(Machine(INNER_INTERFACE))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(INNER_INTERFACE))==(btrue);
  Abstract_List_Assertions(Machine(INNER_INTERFACE))==(btrue);
  Context_List_Assertions(Machine(INNER_INTERFACE))==(btrue);
  List_Assertions(Machine(INNER_INTERFACE))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(INNER_INTERFACE))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(INNER_INTERFACE))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(INNER_INTERFACE))==(skip);
  Context_List_Initialisation(Machine(INNER_INTERFACE))==(skip);
  List_Initialisation(Machine(INNER_INTERFACE))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(INNER_INTERFACE))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(INNER_INTERFACE))==(btrue);
  List_Constraints(Machine(INNER_INTERFACE))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(INNER_INTERFACE))==(death_operation,marriage_operation,first_operation,birth_operation,print_operation);
  List_Operations(Machine(INNER_INTERFACE))==(death_operation,marriage_operation,first_operation,birth_operation,print_operation)
END
&
THEORY ListInputX IS
  List_Input(Machine(INNER_INTERFACE),death_operation)==(?);
  List_Input(Machine(INNER_INTERFACE),marriage_operation)==(?);
  List_Input(Machine(INNER_INTERFACE),first_operation)==(?);
  List_Input(Machine(INNER_INTERFACE),birth_operation)==(?);
  List_Input(Machine(INNER_INTERFACE),print_operation)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(INNER_INTERFACE),death_operation)==(?);
  List_Output(Machine(INNER_INTERFACE),marriage_operation)==(?);
  List_Output(Machine(INNER_INTERFACE),first_operation)==(?);
  List_Output(Machine(INNER_INTERFACE),birth_operation)==(?);
  List_Output(Machine(INNER_INTERFACE),print_operation)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(INNER_INTERFACE),death_operation)==(death_operation);
  List_Header(Machine(INNER_INTERFACE),marriage_operation)==(marriage_operation);
  List_Header(Machine(INNER_INTERFACE),first_operation)==(first_operation);
  List_Header(Machine(INNER_INTERFACE),birth_operation)==(birth_operation);
  List_Header(Machine(INNER_INTERFACE),print_operation)==(print_operation)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(INNER_INTERFACE),death_operation)==(btrue);
  List_Precondition(Machine(INNER_INTERFACE),marriage_operation)==(btrue);
  List_Precondition(Machine(INNER_INTERFACE),first_operation)==(btrue);
  List_Precondition(Machine(INNER_INTERFACE),birth_operation)==(btrue);
  List_Precondition(Machine(INNER_INTERFACE),print_operation)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(INNER_INTERFACE),print_operation)==(btrue | skip);
  Expanded_List_Substitution(Machine(INNER_INTERFACE),birth_operation)==(btrue | skip);
  Expanded_List_Substitution(Machine(INNER_INTERFACE),first_operation)==(btrue | skip);
  Expanded_List_Substitution(Machine(INNER_INTERFACE),marriage_operation)==(btrue | skip);
  Expanded_List_Substitution(Machine(INNER_INTERFACE),death_operation)==(btrue | skip);
  List_Substitution(Machine(INNER_INTERFACE),death_operation)==(skip);
  List_Substitution(Machine(INNER_INTERFACE),marriage_operation)==(skip);
  List_Substitution(Machine(INNER_INTERFACE),first_operation)==(skip);
  List_Substitution(Machine(INNER_INTERFACE),birth_operation)==(skip);
  List_Substitution(Machine(INNER_INTERFACE),print_operation)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(INNER_INTERFACE))==(?);
  Inherited_List_Constants(Machine(INNER_INTERFACE))==(?);
  List_Constants(Machine(INNER_INTERFACE))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(INNER_INTERFACE))==(?);
  Context_List_Defered(Machine(INNER_INTERFACE))==(?);
  Context_List_Sets(Machine(INNER_INTERFACE))==(?);
  List_Valuable_Sets(Machine(INNER_INTERFACE))==(?);
  Inherited_List_Enumerated(Machine(INNER_INTERFACE))==(?);
  Inherited_List_Defered(Machine(INNER_INTERFACE))==(?);
  Inherited_List_Sets(Machine(INNER_INTERFACE))==(?);
  List_Enumerated(Machine(INNER_INTERFACE))==(?);
  List_Defered(Machine(INNER_INTERFACE))==(?);
  List_Sets(Machine(INNER_INTERFACE))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(INNER_INTERFACE))==(?);
  Expanded_List_HiddenConstants(Machine(INNER_INTERFACE))==(?);
  List_HiddenConstants(Machine(INNER_INTERFACE))==(?);
  External_List_HiddenConstants(Machine(INNER_INTERFACE))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(INNER_INTERFACE))==(btrue);
  Context_List_Properties(Machine(INNER_INTERFACE))==(btrue);
  Inherited_List_Properties(Machine(INNER_INTERFACE))==(btrue);
  List_Properties(Machine(INNER_INTERFACE))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(INNER_INTERFACE),death_operation)==(?);
  List_ANY_Var(Machine(INNER_INTERFACE),marriage_operation)==(?);
  List_ANY_Var(Machine(INNER_INTERFACE),first_operation)==(?);
  List_ANY_Var(Machine(INNER_INTERFACE),birth_operation)==(?);
  List_ANY_Var(Machine(INNER_INTERFACE),print_operation)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(INNER_INTERFACE)) == (? | ? | ? | ? | death_operation,marriage_operation,first_operation,birth_operation,print_operation | ? | ? | ? | INNER_INTERFACE);
  List_Of_HiddenCst_Ids(Machine(INNER_INTERFACE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(INNER_INTERFACE)) == (?);
  List_Of_VisibleVar_Ids(Machine(INNER_INTERFACE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(INNER_INTERFACE)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(INNER_INTERFACE)) == (Type(print_operation) == Cst(No_type,No_type);Type(birth_operation) == Cst(No_type,No_type);Type(first_operation) == Cst(No_type,No_type);Type(marriage_operation) == Cst(No_type,No_type);Type(death_operation) == Cst(No_type,No_type));
  Observers(Machine(INNER_INTERFACE)) == (Type(print_operation) == Cst(No_type,No_type);Type(birth_operation) == Cst(No_type,No_type);Type(first_operation) == Cst(No_type,No_type);Type(marriage_operation) == Cst(No_type,No_type);Type(death_operation) == Cst(No_type,No_type))
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
