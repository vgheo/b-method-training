Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(M1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(M1))==(Machine(M1));
  Level(Machine(M1))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(M1)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(M1))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(M1))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(M1))==(M3,MB.M2,MA.M2);
  List_Includes(Machine(M1))==(MA.M2,MB.M2,M3)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(M1))==(MA.set,MB.set)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(M1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(M1))==(?);
  Context_List_Variables(Machine(M1))==(?);
  Abstract_List_Variables(Machine(M1))==(?);
  Local_List_Variables(Machine(M1))==(v1);
  List_Variables(Machine(M1))==(v1,MAvv,MBvv,vv);
  External_List_Variables(Machine(M1))==(v1,MA.vv,MB.vv,vv)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(M1))==(?);
  Abstract_List_VisibleVariables(Machine(M1))==(?);
  External_List_VisibleVariables(Machine(M1))==(?);
  Expanded_List_VisibleVariables(Machine(M1))==(?);
  List_VisibleVariables(Machine(M1))==(?);
  Internal_List_VisibleVariables(Machine(M1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(M1))==(btrue);
  Gluing_List_Invariant(Machine(M1))==(btrue);
  Abstract_List_Invariant(Machine(M1))==(btrue);
  Expanded_List_Invariant(Machine(M1))==(MAvv: BOOL & MBvv: BOOL & vv: BOOL);
  Context_List_Invariant(Machine(M1))==(btrue);
  List_Invariant(Machine(M1))==(v1: BOOL)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(M1))==(btrue);
  Expanded_List_Assertions(Machine(M1))==(btrue);
  Context_List_Assertions(Machine(M1))==(btrue);
  List_Assertions(Machine(M1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(M1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(M1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(M1))==(MAvv:=FALSE;MBvv:=FALSE;vv:=FALSE;v1:=FALSE);
  Context_List_Initialisation(Machine(M1))==(skip);
  List_Initialisation(Machine(M1))==(v1:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(M1))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(M1),Machine(MA.M2))==(?);
  List_Instanciated_Parameters(Machine(M1),Machine(MB.M2))==(?);
  List_Instanciated_Parameters(Machine(M1),Machine(M3))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(M1),Machine(M3))==(btrue);
  List_Context_Constraints(Machine(M1))==(btrue);
  List_Constraints(Machine(M1))==(btrue);
  List_Constraints(Machine(M1),Machine(MB.M2))==(btrue);
  List_Constraints(Machine(M1),Machine(MA.M2))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(M1))==(set_v1,MAset,MBset);
  List_Operations(Machine(M1))==(set_v1,MA.set,MB.set)
END
&
THEORY ListInputX IS
  List_Input(Machine(M1),MB.set)==(xx);
  List_Input(Machine(M1),MA.set)==(xx);
  List_Input(Machine(M1),set_v1)==(xx)
END
&
THEORY ListOutputX IS
  List_Output(Machine(M1),MB.set)==(?);
  List_Output(Machine(M1),MA.set)==(?);
  List_Output(Machine(M1),set_v1)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(M1),MB.set)==((MB.set)(xx));
  List_Header(Machine(M1),MA.set)==((MA.set)(xx));
  List_Header(Machine(M1),set_v1)==(set_v1(xx))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(M1),MB.set)==(xx: BOOL & xx/=MBvv);
  List_Precondition(Machine(M1),MB.set)==(xx: BOOL & xx/=MBvv);
  Own_Precondition(Machine(M1),MA.set)==(xx: BOOL & xx/=MAvv);
  List_Precondition(Machine(M1),MA.set)==(xx: BOOL & xx/=MAvv);
  List_Precondition(Machine(M1),set_v1)==(xx: BOOL & xx/=v1)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(M1),set_v1)==(xx: BOOL & xx/=v1 | v1:=xx);
  List_Substitution(Machine(M1),MB.set)==(MB.vv:=xx);
  Expanded_List_Substitution(Machine(M1),MB.set)==(xx: BOOL & xx/=MBvv | MBvv:=xx);
  List_Substitution(Machine(M1),MA.set)==(MA.vv:=xx);
  Expanded_List_Substitution(Machine(M1),MA.set)==(xx: BOOL & xx/=MAvv | MAvv:=xx);
  List_Substitution(Machine(M1),set_v1)==(v1:=xx)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(M1))==(?);
  Inherited_List_Constants(Machine(M1))==(?);
  List_Constants(Machine(M1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(M1))==(?);
  Context_List_Defered(Machine(M1))==(?);
  Context_List_Sets(Machine(M1))==(?);
  List_Valuable_Sets(Machine(M1))==(?);
  Inherited_List_Enumerated(Machine(M1))==(?);
  Inherited_List_Defered(Machine(M1))==(?);
  Inherited_List_Sets(Machine(M1))==(?);
  List_Enumerated(Machine(M1))==(?);
  List_Defered(Machine(M1))==(?);
  List_Sets(Machine(M1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(M1))==(?);
  Expanded_List_HiddenConstants(Machine(M1))==(?);
  List_HiddenConstants(Machine(M1))==(?);
  External_List_HiddenConstants(Machine(M1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(M1))==(btrue);
  Context_List_Properties(Machine(M1))==(btrue);
  Inherited_List_Properties(Machine(M1))==(btrue);
  List_Properties(Machine(M1))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(M1),MB.set)==(?);
  List_ANY_Var(Machine(M1),MA.set)==(?);
  List_ANY_Var(Machine(M1),set_v1)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(M1)) == (? | ? | v1 | V,vv,MBvv,MAvv | set_v1 | MAset,MBset | included(Machine(MA.M2)),included(Machine(MB.M2)),included(Machine(M3)) | ? | M1);
  List_Of_HiddenCst_Ids(Machine(M1)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(M1)) == (?);
  List_Of_VisibleVar_Ids(Machine(M1)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(M1)) == (?: ?);
  List_Of_Ids(Machine(M3)) == (? | ? | vv | ? | set | ? | ? | ? | M3);
  List_Of_HiddenCst_Ids(Machine(M3)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(M3)) == (?);
  List_Of_VisibleVar_Ids(Machine(M3)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(M3)) == (?: ?);
  List_Of_Ids(Machine(M2)) == (? | ? | vv | ? | set | ? | ? | ? | M2);
  List_Of_HiddenCst_Ids(Machine(M2)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(M2)) == (?);
  List_Of_VisibleVar_Ids(Machine(M2)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(M2)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(M1)) == (Type(MA.vv) == Mvl(btype(BOOL,?,?));Type(MB.vv) == Mvl(btype(BOOL,?,?));Type(vv) == Mvl(btype(BOOL,?,?));Type(v1) == Mvl(btype(BOOL,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(M1)) == (Type(MA.set) == Cst(No_type,btype(BOOL,?,?));Type(MB.set) == Cst(No_type,btype(BOOL,?,?));Type(set_v1) == Cst(No_type,btype(BOOL,?,?)))
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
