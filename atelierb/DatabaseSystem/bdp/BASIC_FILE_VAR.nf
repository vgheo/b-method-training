Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(BASIC_FILE_VAR))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(BASIC_FILE_VAR))==(Machine(BASIC_FILE_VAR));
  Level(Machine(BASIC_FILE_VAR))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(BASIC_FILE_VAR)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(BASIC_FILE_VAR))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(BASIC_FILE_VAR))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(BASIC_FILE_VAR))==(?);
  List_Includes(Machine(BASIC_FILE_VAR))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(BASIC_FILE_VAR))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(BASIC_FILE_VAR))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(BASIC_FILE_VAR))==(?);
  Context_List_Variables(Machine(BASIC_FILE_VAR))==(?);
  Abstract_List_Variables(Machine(BASIC_FILE_VAR))==(?);
  Local_List_Variables(Machine(BASIC_FILE_VAR))==(file_vrb);
  List_Variables(Machine(BASIC_FILE_VAR))==(file_vrb);
  External_List_Variables(Machine(BASIC_FILE_VAR))==(file_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(BASIC_FILE_VAR))==(?);
  Abstract_List_VisibleVariables(Machine(BASIC_FILE_VAR))==(?);
  External_List_VisibleVariables(Machine(BASIC_FILE_VAR))==(?);
  Expanded_List_VisibleVariables(Machine(BASIC_FILE_VAR))==(?);
  List_VisibleVariables(Machine(BASIC_FILE_VAR))==(buf_vrb);
  Internal_List_VisibleVariables(Machine(BASIC_FILE_VAR))==(buf_vrb)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(BASIC_FILE_VAR))==(btrue);
  Gluing_List_Invariant(Machine(BASIC_FILE_VAR))==(btrue);
  Expanded_List_Invariant(Machine(BASIC_FILE_VAR))==(btrue);
  Abstract_List_Invariant(Machine(BASIC_FILE_VAR))==(btrue);
  Context_List_Invariant(Machine(BASIC_FILE_VAR))==(btrue);
  List_Invariant(Machine(BASIC_FILE_VAR))==(buf_vrb: INDEX --> VALUE & file_vrb: seq(INDEX --> VALUE) & size(file_vrb)<max_rec)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(BASIC_FILE_VAR))==(btrue);
  Abstract_List_Assertions(Machine(BASIC_FILE_VAR))==(btrue);
  Context_List_Assertions(Machine(BASIC_FILE_VAR))==(btrue);
  List_Assertions(Machine(BASIC_FILE_VAR))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(BASIC_FILE_VAR))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(BASIC_FILE_VAR))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(BASIC_FILE_VAR))==(@(buf_vrb$0).(buf_vrb$0: INDEX --> VALUE ==> buf_vrb:=buf_vrb$0) || file_vrb:=<>);
  Context_List_Initialisation(Machine(BASIC_FILE_VAR))==(skip);
  List_Initialisation(Machine(BASIC_FILE_VAR))==(buf_vrb:: INDEX --> VALUE || file_vrb:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(BASIC_FILE_VAR))==(max_rec,INDEX,VALUE)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(BASIC_FILE_VAR))==(btrue);
  List_Constraints(Machine(BASIC_FILE_VAR))==(max_rec: NAT1 & INDEX: FIN(INTEGER) & not(INDEX = {}) & VALUE: FIN(INTEGER) & not(VALUE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(BASIC_FILE_VAR))==(READ_FILE,WRITE_FILE,NEW_RECORD,SIZE_FILE,RESET_FILE);
  List_Operations(Machine(BASIC_FILE_VAR))==(READ_FILE,WRITE_FILE,NEW_RECORD,SIZE_FILE,RESET_FILE)
END
&
THEORY ListInputX IS
  List_Input(Machine(BASIC_FILE_VAR),READ_FILE)==(ii);
  List_Input(Machine(BASIC_FILE_VAR),WRITE_FILE)==(ii);
  List_Input(Machine(BASIC_FILE_VAR),NEW_RECORD)==(vv);
  List_Input(Machine(BASIC_FILE_VAR),SIZE_FILE)==(?);
  List_Input(Machine(BASIC_FILE_VAR),RESET_FILE)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(BASIC_FILE_VAR),READ_FILE)==(?);
  List_Output(Machine(BASIC_FILE_VAR),WRITE_FILE)==(?);
  List_Output(Machine(BASIC_FILE_VAR),NEW_RECORD)==(?);
  List_Output(Machine(BASIC_FILE_VAR),SIZE_FILE)==(vv);
  List_Output(Machine(BASIC_FILE_VAR),RESET_FILE)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(BASIC_FILE_VAR),READ_FILE)==(READ_FILE(ii));
  List_Header(Machine(BASIC_FILE_VAR),WRITE_FILE)==(WRITE_FILE(ii));
  List_Header(Machine(BASIC_FILE_VAR),NEW_RECORD)==(NEW_RECORD(vv));
  List_Header(Machine(BASIC_FILE_VAR),SIZE_FILE)==(vv <-- SIZE_FILE);
  List_Header(Machine(BASIC_FILE_VAR),RESET_FILE)==(RESET_FILE)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(BASIC_FILE_VAR),READ_FILE)==(ii: NAT & ii: dom(file_vrb));
  List_Precondition(Machine(BASIC_FILE_VAR),WRITE_FILE)==(ii: NAT & ii: dom(file_vrb));
  List_Precondition(Machine(BASIC_FILE_VAR),NEW_RECORD)==(vv: VALUE & size(file_vrb)/=max_rec);
  List_Precondition(Machine(BASIC_FILE_VAR),SIZE_FILE)==(btrue);
  List_Precondition(Machine(BASIC_FILE_VAR),RESET_FILE)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(BASIC_FILE_VAR),RESET_FILE)==(btrue | file_vrb:=<>);
  Expanded_List_Substitution(Machine(BASIC_FILE_VAR),SIZE_FILE)==(btrue | vv:=size(file_vrb));
  Expanded_List_Substitution(Machine(BASIC_FILE_VAR),NEW_RECORD)==(vv: VALUE & size(file_vrb)/=max_rec | file_vrb:=file_vrb<-INDEX*{vv});
  Expanded_List_Substitution(Machine(BASIC_FILE_VAR),WRITE_FILE)==(ii: NAT & ii: dom(file_vrb) | file_vrb:=file_vrb<+{ii|->buf_vrb});
  Expanded_List_Substitution(Machine(BASIC_FILE_VAR),READ_FILE)==(ii: NAT & ii: dom(file_vrb) | buf_vrb:=file_vrb(ii));
  List_Substitution(Machine(BASIC_FILE_VAR),READ_FILE)==(buf_vrb:=file_vrb(ii));
  List_Substitution(Machine(BASIC_FILE_VAR),WRITE_FILE)==(file_vrb(ii):=buf_vrb);
  List_Substitution(Machine(BASIC_FILE_VAR),NEW_RECORD)==(file_vrb:=file_vrb<-INDEX*{vv});
  List_Substitution(Machine(BASIC_FILE_VAR),SIZE_FILE)==(vv:=size(file_vrb));
  List_Substitution(Machine(BASIC_FILE_VAR),RESET_FILE)==(file_vrb:=<>)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(BASIC_FILE_VAR))==(?);
  Inherited_List_Constants(Machine(BASIC_FILE_VAR))==(?);
  List_Constants(Machine(BASIC_FILE_VAR))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(BASIC_FILE_VAR))==(?);
  Context_List_Defered(Machine(BASIC_FILE_VAR))==(?);
  Context_List_Sets(Machine(BASIC_FILE_VAR))==(?);
  List_Valuable_Sets(Machine(BASIC_FILE_VAR))==(?);
  Inherited_List_Enumerated(Machine(BASIC_FILE_VAR))==(?);
  Inherited_List_Defered(Machine(BASIC_FILE_VAR))==(?);
  Inherited_List_Sets(Machine(BASIC_FILE_VAR))==(?);
  List_Enumerated(Machine(BASIC_FILE_VAR))==(?);
  List_Defered(Machine(BASIC_FILE_VAR))==(?);
  List_Sets(Machine(BASIC_FILE_VAR))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(BASIC_FILE_VAR))==(?);
  Expanded_List_HiddenConstants(Machine(BASIC_FILE_VAR))==(?);
  List_HiddenConstants(Machine(BASIC_FILE_VAR))==(?);
  External_List_HiddenConstants(Machine(BASIC_FILE_VAR))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(BASIC_FILE_VAR))==(btrue);
  Context_List_Properties(Machine(BASIC_FILE_VAR))==(btrue);
  Inherited_List_Properties(Machine(BASIC_FILE_VAR))==(btrue);
  List_Properties(Machine(BASIC_FILE_VAR))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(BASIC_FILE_VAR),READ_FILE)==(?);
  List_ANY_Var(Machine(BASIC_FILE_VAR),WRITE_FILE)==(?);
  List_ANY_Var(Machine(BASIC_FILE_VAR),NEW_RECORD)==(?);
  List_ANY_Var(Machine(BASIC_FILE_VAR),SIZE_FILE)==(?);
  List_ANY_Var(Machine(BASIC_FILE_VAR),RESET_FILE)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(BASIC_FILE_VAR)) == (? | ? | file_vrb | ? | READ_FILE,WRITE_FILE,NEW_RECORD,SIZE_FILE,RESET_FILE | ? | ? | max_rec,INDEX,VALUE | BASIC_FILE_VAR);
  List_Of_HiddenCst_Ids(Machine(BASIC_FILE_VAR)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_FILE_VAR)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_FILE_VAR)) == (buf_vrb | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_FILE_VAR)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(BASIC_FILE_VAR)) == (Type(VALUE) == Prm(SetOf(atype(VALUE,?,?)));Type(INDEX) == Prm(SetOf(atype(INDEX,?,?)));Type(max_rec) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(BASIC_FILE_VAR)) == (Type(file_vrb) == Mvl(SetOf(btype(INTEGER,?,?)*SetOf(atype(INDEX,?,?)*atype(VALUE,?,?)))))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Machine(BASIC_FILE_VAR)) == (Type(buf_vrb) == Mvv(SetOf(atype(INDEX,?,?)*atype(VALUE,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(BASIC_FILE_VAR)) == (Type(RESET_FILE) == Cst(No_type,No_type);Type(SIZE_FILE) == Cst(btype(INTEGER,?,?),No_type);Type(NEW_RECORD) == Cst(No_type,atype(VALUE,?,?));Type(WRITE_FILE) == Cst(No_type,btype(INTEGER,?,?));Type(READ_FILE) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(BASIC_FILE_VAR)) == (Type(SIZE_FILE) == Cst(btype(INTEGER,?,?),No_type))
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
