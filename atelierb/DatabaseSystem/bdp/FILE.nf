Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(FILE))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(FILE))==(Machine(FILE));
  Level(Machine(FILE))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(FILE)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(FILE))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(FILE))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(FILE))==(?);
  List_Includes(Machine(FILE))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(FILE))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(FILE))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(FILE))==(?);
  Context_List_Variables(Machine(FILE))==(?);
  Abstract_List_Variables(Machine(FILE))==(?);
  Local_List_Variables(Machine(FILE))==(file);
  List_Variables(Machine(FILE))==(file);
  External_List_Variables(Machine(FILE))==(file)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(FILE))==(?);
  Abstract_List_VisibleVariables(Machine(FILE))==(?);
  External_List_VisibleVariables(Machine(FILE))==(?);
  Expanded_List_VisibleVariables(Machine(FILE))==(?);
  List_VisibleVariables(Machine(FILE))==(?);
  Internal_List_VisibleVariables(Machine(FILE))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(FILE))==(btrue);
  Gluing_List_Invariant(Machine(FILE))==(btrue);
  Expanded_List_Invariant(Machine(FILE))==(btrue);
  Abstract_List_Invariant(Machine(FILE))==(btrue);
  Context_List_Invariant(Machine(FILE))==(btrue);
  List_Invariant(Machine(FILE))==(file: seq(FIELD --> VALUE) & size(file)<=max_rec)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(FILE))==(btrue);
  Abstract_List_Assertions(Machine(FILE))==(btrue);
  Context_List_Assertions(Machine(FILE))==(btrue);
  List_Assertions(Machine(FILE))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(FILE))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(FILE))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(FILE))==(file:=<>);
  Context_List_Initialisation(Machine(FILE))==(skip);
  List_Initialisation(Machine(FILE))==(file:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(FILE))==(max_rec,FIELD,VALUE)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(FILE))==(btrue);
  List_Constraints(Machine(FILE))==(max_rec: NAT1 & FIELD: FIN(INTEGER) & not(FIELD = {}) & VALUE: FIN(INTEGER) & not(VALUE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(FILE))==(val_file,mod_file,create_record,size_file);
  List_Operations(Machine(FILE))==(val_file,mod_file,create_record,size_file)
END
&
THEORY ListInputX IS
  List_Input(Machine(FILE),val_file)==(oo,ii);
  List_Input(Machine(FILE),mod_file)==(oo,ii,vv);
  List_Input(Machine(FILE),create_record)==(vv);
  List_Input(Machine(FILE),size_file)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(FILE),val_file)==(vv);
  List_Output(Machine(FILE),mod_file)==(?);
  List_Output(Machine(FILE),create_record)==(oo);
  List_Output(Machine(FILE),size_file)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(FILE),val_file)==(vv <-- val_file(oo,ii));
  List_Header(Machine(FILE),mod_file)==(mod_file(oo,ii,vv));
  List_Header(Machine(FILE),create_record)==(oo <-- create_record(vv));
  List_Header(Machine(FILE),size_file)==(vv <-- size_file)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(FILE),val_file)==(oo: dom(file) & ii: FIELD);
  List_Precondition(Machine(FILE),mod_file)==(oo: dom(file) & ii: FIELD & vv: VALUE);
  List_Precondition(Machine(FILE),create_record)==(vv: VALUE & size(file)<max_rec);
  List_Precondition(Machine(FILE),size_file)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(FILE),size_file)==(btrue | vv:=size(file));
  Expanded_List_Substitution(Machine(FILE),create_record)==(vv: VALUE & size(file)<max_rec | file,oo:=file<-FIELD*{vv},size(file)+1);
  Expanded_List_Substitution(Machine(FILE),mod_file)==(oo: dom(file) & ii: FIELD & vv: VALUE | file:=file<+{oo|->(file(oo)<+{ii|->vv})});
  Expanded_List_Substitution(Machine(FILE),val_file)==(oo: dom(file) & ii: FIELD | vv:=file(oo)(ii));
  List_Substitution(Machine(FILE),val_file)==(vv:=file(oo)(ii));
  List_Substitution(Machine(FILE),mod_file)==(file(oo)(ii):=vv);
  List_Substitution(Machine(FILE),create_record)==(file:=file<-FIELD*{vv} || oo:=size(file)+1);
  List_Substitution(Machine(FILE),size_file)==(vv:=size(file))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(FILE))==(?);
  Inherited_List_Constants(Machine(FILE))==(?);
  List_Constants(Machine(FILE))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(FILE))==(?);
  Context_List_Defered(Machine(FILE))==(?);
  Context_List_Sets(Machine(FILE))==(?);
  List_Valuable_Sets(Machine(FILE))==(?);
  Inherited_List_Enumerated(Machine(FILE))==(?);
  Inherited_List_Defered(Machine(FILE))==(?);
  Inherited_List_Sets(Machine(FILE))==(?);
  List_Enumerated(Machine(FILE))==(?);
  List_Defered(Machine(FILE))==(?);
  List_Sets(Machine(FILE))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(FILE))==(?);
  Expanded_List_HiddenConstants(Machine(FILE))==(?);
  List_HiddenConstants(Machine(FILE))==(?);
  External_List_HiddenConstants(Machine(FILE))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(FILE))==(btrue);
  Context_List_Properties(Machine(FILE))==(btrue);
  Inherited_List_Properties(Machine(FILE))==(btrue);
  List_Properties(Machine(FILE))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(FILE),val_file)==(?);
  List_ANY_Var(Machine(FILE),mod_file)==(?);
  List_ANY_Var(Machine(FILE),create_record)==(?);
  List_ANY_Var(Machine(FILE),size_file)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(FILE)) == (? | ? | file | ? | val_file,mod_file,create_record,size_file | ? | ? | max_rec,FIELD,VALUE | FILE);
  List_Of_HiddenCst_Ids(Machine(FILE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(FILE)) == (?);
  List_Of_VisibleVar_Ids(Machine(FILE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(FILE)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(FILE)) == (Type(VALUE) == Prm(SetOf(atype(VALUE,?,?)));Type(FIELD) == Prm(SetOf(atype(FIELD,?,?)));Type(max_rec) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(FILE)) == (Type(file) == Mvl(SetOf(btype(INTEGER,?,?)*SetOf(atype(FIELD,?,?)*atype(VALUE,?,?)))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(FILE)) == (Type(size_file) == Cst(btype(INTEGER,?,?),No_type);Type(create_record) == Cst(btype(INTEGER,?,?),atype(VALUE,?,?));Type(mod_file) == Cst(No_type,btype(INTEGER,?,?)*atype(FIELD,?,?)*atype(VALUE,?,?));Type(val_file) == Cst(atype(VALUE,?,?),btype(INTEGER,?,?)*atype(FIELD,?,?)));
  Observers(Machine(FILE)) == (Type(size_file) == Cst(btype(INTEGER,?,?),No_type);Type(val_file) == Cst(atype(VALUE,?,?),btype(INTEGER,?,?)*atype(FIELD,?,?)))
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
