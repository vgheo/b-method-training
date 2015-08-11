Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(M3))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(M3))==(Machine(M3));
  Level(Machine(M3))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(M3)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(M3))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(M3))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(M3))==(?);
  List_Includes(Machine(M3))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(M3))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(M3))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(M3))==(?);
  Context_List_Variables(Machine(M3))==(?);
  Abstract_List_Variables(Machine(M3))==(?);
  Local_List_Variables(Machine(M3))==(vv);
  List_Variables(Machine(M3))==(vv);
  External_List_Variables(Machine(M3))==(vv)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(M3))==(?);
  Abstract_List_VisibleVariables(Machine(M3))==(?);
  External_List_VisibleVariables(Machine(M3))==(?);
  Expanded_List_VisibleVariables(Machine(M3))==(?);
  List_VisibleVariables(Machine(M3))==(?);
  Internal_List_VisibleVariables(Machine(M3))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(M3))==(btrue);
  Gluing_List_Invariant(Machine(M3))==(btrue);
  Expanded_List_Invariant(Machine(M3))==(btrue);
  Abstract_List_Invariant(Machine(M3))==(btrue);
  Context_List_Invariant(Machine(M3))==(btrue);
  List_Invariant(Machine(M3))==(vv: BOOL)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(M3))==(btrue);
  Abstract_List_Assertions(Machine(M3))==(btrue);
  Context_List_Assertions(Machine(M3))==(btrue);
  List_Assertions(Machine(M3))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(M3))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(M3))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(M3))==(vv:=FALSE);
  Context_List_Initialisation(Machine(M3))==(skip);
  List_Initialisation(Machine(M3))==(vv:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(M3))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(M3))==(btrue);
  List_Constraints(Machine(M3))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(M3))==(set);
  List_Operations(Machine(M3))==(set)
END
&
THEORY ListInputX IS
  List_Input(Machine(M3),set)==(xx)
END
&
THEORY ListOutputX IS
  List_Output(Machine(M3),set)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(M3),set)==(set(xx))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(M3),set)==(xx: BOOL & xx/=vv)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(M3),set)==(xx: BOOL & xx/=vv | vv:=xx);
  List_Substitution(Machine(M3),set)==(vv:=xx)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(M3))==(?);
  Inherited_List_Constants(Machine(M3))==(?);
  List_Constants(Machine(M3))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(M3))==(?);
  Context_List_Defered(Machine(M3))==(?);
  Context_List_Sets(Machine(M3))==(?);
  List_Valuable_Sets(Machine(M3))==(?);
  Inherited_List_Enumerated(Machine(M3))==(?);
  Inherited_List_Defered(Machine(M3))==(?);
  Inherited_List_Sets(Machine(M3))==(?);
  List_Enumerated(Machine(M3))==(?);
  List_Defered(Machine(M3))==(?);
  List_Sets(Machine(M3))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(M3))==(?);
  Expanded_List_HiddenConstants(Machine(M3))==(?);
  List_HiddenConstants(Machine(M3))==(?);
  External_List_HiddenConstants(Machine(M3))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(M3))==(btrue);
  Context_List_Properties(Machine(M3))==(btrue);
  Inherited_List_Properties(Machine(M3))==(btrue);
  List_Properties(Machine(M3))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(M3),set)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(M3)) == (? | ? | vv | ? | set | ? | ? | ? | M3);
  List_Of_HiddenCst_Ids(Machine(M3)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(M3)) == (?);
  List_Of_VisibleVar_Ids(Machine(M3)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(M3)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(M3)) == (Type(vv) == Mvl(btype(BOOL,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(M3)) == (Type(set) == Cst(No_type,btype(BOOL,?,?)))
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
