Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(M2))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(M2))==(Machine(M2));
  Level(Machine(M2))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(M2)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(M2))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(M2))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(M2))==(?);
  List_Includes(Machine(M2))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(M2))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(M2))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(M2))==(?);
  Context_List_Variables(Machine(M2))==(?);
  Abstract_List_Variables(Machine(M2))==(?);
  Local_List_Variables(Machine(M2))==(vv);
  List_Variables(Machine(M2))==(vv);
  External_List_Variables(Machine(M2))==(vv)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(M2))==(?);
  Abstract_List_VisibleVariables(Machine(M2))==(?);
  External_List_VisibleVariables(Machine(M2))==(?);
  Expanded_List_VisibleVariables(Machine(M2))==(?);
  List_VisibleVariables(Machine(M2))==(?);
  Internal_List_VisibleVariables(Machine(M2))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(M2))==(btrue);
  Gluing_List_Invariant(Machine(M2))==(btrue);
  Expanded_List_Invariant(Machine(M2))==(btrue);
  Abstract_List_Invariant(Machine(M2))==(btrue);
  Context_List_Invariant(Machine(M2))==(btrue);
  List_Invariant(Machine(M2))==(vv: BOOL)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(M2))==(btrue);
  Abstract_List_Assertions(Machine(M2))==(btrue);
  Context_List_Assertions(Machine(M2))==(btrue);
  List_Assertions(Machine(M2))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(M2))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(M2))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(M2))==(vv:=FALSE);
  Context_List_Initialisation(Machine(M2))==(skip);
  List_Initialisation(Machine(M2))==(vv:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(M2))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(M2))==(btrue);
  List_Constraints(Machine(M2))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(M2))==(set);
  List_Operations(Machine(M2))==(set)
END
&
THEORY ListInputX IS
  List_Input(Machine(M2),set)==(xx)
END
&
THEORY ListOutputX IS
  List_Output(Machine(M2),set)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(M2),set)==(set(xx))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(M2),set)==(xx: BOOL & xx/=vv)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(M2),set)==(xx: BOOL & xx/=vv | vv:=xx);
  List_Substitution(Machine(M2),set)==(vv:=xx)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(M2))==(?);
  Inherited_List_Constants(Machine(M2))==(?);
  List_Constants(Machine(M2))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(M2))==(?);
  Context_List_Defered(Machine(M2))==(?);
  Context_List_Sets(Machine(M2))==(?);
  List_Valuable_Sets(Machine(M2))==(?);
  Inherited_List_Enumerated(Machine(M2))==(?);
  Inherited_List_Defered(Machine(M2))==(?);
  Inherited_List_Sets(Machine(M2))==(?);
  List_Enumerated(Machine(M2))==(?);
  List_Defered(Machine(M2))==(?);
  List_Sets(Machine(M2))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(M2))==(?);
  Expanded_List_HiddenConstants(Machine(M2))==(?);
  List_HiddenConstants(Machine(M2))==(?);
  External_List_HiddenConstants(Machine(M2))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(M2))==(btrue);
  Context_List_Properties(Machine(M2))==(btrue);
  Inherited_List_Properties(Machine(M2))==(btrue);
  List_Properties(Machine(M2))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(M2),set)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(M2)) == (? | ? | vv | ? | set | ? | ? | ? | M2);
  List_Of_HiddenCst_Ids(Machine(M2)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(M2)) == (?);
  List_Of_VisibleVar_Ids(Machine(M2)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(M2)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(M2)) == (Type(vv) == Mvl(btype(BOOL,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(M2)) == (Type(set) == Cst(No_type,btype(BOOL,?,?)))
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
