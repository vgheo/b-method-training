Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(FILE_BUFFER))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(FILE_BUFFER))==(Machine(FILE_BUFFER));
  Level(Machine(FILE_BUFFER))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(FILE_BUFFER)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(FILE_BUFFER))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(FILE_BUFFER))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(FILE_BUFFER))==(?);
  List_Includes(Machine(FILE_BUFFER))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(FILE_BUFFER))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(FILE_BUFFER))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(FILE_BUFFER))==(?);
  Context_List_Variables(Machine(FILE_BUFFER))==(?);
  Abstract_List_Variables(Machine(FILE_BUFFER))==(?);
  Local_List_Variables(Machine(FILE_BUFFER))==(bfile,buffer);
  List_Variables(Machine(FILE_BUFFER))==(bfile,buffer);
  External_List_Variables(Machine(FILE_BUFFER))==(bfile,buffer)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(FILE_BUFFER))==(?);
  Abstract_List_VisibleVariables(Machine(FILE_BUFFER))==(?);
  External_List_VisibleVariables(Machine(FILE_BUFFER))==(?);
  Expanded_List_VisibleVariables(Machine(FILE_BUFFER))==(?);
  List_VisibleVariables(Machine(FILE_BUFFER))==(?);
  Internal_List_VisibleVariables(Machine(FILE_BUFFER))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(FILE_BUFFER))==(btrue);
  Gluing_List_Invariant(Machine(FILE_BUFFER))==(btrue);
  Expanded_List_Invariant(Machine(FILE_BUFFER))==(btrue);
  Abstract_List_Invariant(Machine(FILE_BUFFER))==(btrue);
  Context_List_Invariant(Machine(FILE_BUFFER))==(btrue);
  List_Invariant(Machine(FILE_BUFFER))==(bfile: seq(FIELD --> VALUE) & buffer: dom(bfile) +-> (FIELD --> VALUE))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(FILE_BUFFER))==(btrue);
  Abstract_List_Assertions(Machine(FILE_BUFFER))==(btrue);
  Context_List_Assertions(Machine(FILE_BUFFER))==(btrue);
  List_Assertions(Machine(FILE_BUFFER))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(FILE_BUFFER))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(FILE_BUFFER))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(FILE_BUFFER))==(bfile,buffer:=<>,{});
  Context_List_Initialisation(Machine(FILE_BUFFER))==(skip);
  List_Initialisation(Machine(FILE_BUFFER))==(bfile,buffer:=<>,{})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(FILE_BUFFER))==(max_rec,FIELD,VALUE)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(FILE_BUFFER))==(btrue);
  List_Constraints(Machine(FILE_BUFFER))==(max_rec: NAT1 & FIELD: FIN(INTEGER) & not(FIELD = {}) & VALUE: FIN(INTEGER) & not(VALUE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(FILE_BUFFER))==(create_record,load_buffer,size_file,not_in_buffer,mod_buffer,val_buffer);
  List_Operations(Machine(FILE_BUFFER))==(create_record,load_buffer,size_file,not_in_buffer,mod_buffer,val_buffer)
END
&
THEORY ListInputX IS
  List_Input(Machine(FILE_BUFFER),create_record)==(vv);
  List_Input(Machine(FILE_BUFFER),load_buffer)==(oo);
  List_Input(Machine(FILE_BUFFER),size_file)==(?);
  List_Input(Machine(FILE_BUFFER),not_in_buffer)==(oo);
  List_Input(Machine(FILE_BUFFER),mod_buffer)==(oo,ii,vv);
  List_Input(Machine(FILE_BUFFER),val_buffer)==(oo,ii)
END
&
THEORY ListOutputX IS
  List_Output(Machine(FILE_BUFFER),create_record)==(oo);
  List_Output(Machine(FILE_BUFFER),load_buffer)==(?);
  List_Output(Machine(FILE_BUFFER),size_file)==(vv);
  List_Output(Machine(FILE_BUFFER),not_in_buffer)==(vv);
  List_Output(Machine(FILE_BUFFER),mod_buffer)==(?);
  List_Output(Machine(FILE_BUFFER),val_buffer)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(FILE_BUFFER),create_record)==(oo <-- create_record(vv));
  List_Header(Machine(FILE_BUFFER),load_buffer)==(load_buffer(oo));
  List_Header(Machine(FILE_BUFFER),size_file)==(vv <-- size_file);
  List_Header(Machine(FILE_BUFFER),not_in_buffer)==(vv <-- not_in_buffer(oo));
  List_Header(Machine(FILE_BUFFER),mod_buffer)==(mod_buffer(oo,ii,vv));
  List_Header(Machine(FILE_BUFFER),val_buffer)==(vv <-- val_buffer(oo,ii))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(FILE_BUFFER),create_record)==(vv: VALUE & size(bfile)/=max_rec);
  List_Precondition(Machine(FILE_BUFFER),load_buffer)==(oo: dom(bfile) & oo/:dom(buffer));
  List_Precondition(Machine(FILE_BUFFER),size_file)==(btrue);
  List_Precondition(Machine(FILE_BUFFER),not_in_buffer)==(oo: 1..size(bfile));
  List_Precondition(Machine(FILE_BUFFER),mod_buffer)==(oo: dom(buffer) & ii: FIELD & vv: VALUE);
  List_Precondition(Machine(FILE_BUFFER),val_buffer)==(oo: dom(buffer) & ii: FIELD)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(FILE_BUFFER),val_buffer)==(oo: dom(buffer) & ii: FIELD | vv:=buffer(oo)(ii));
  Expanded_List_Substitution(Machine(FILE_BUFFER),mod_buffer)==(oo: dom(buffer) & ii: FIELD & vv: VALUE | buffer:=buffer<+{oo|->(buffer(oo)<+{ii|->vv})});
  Expanded_List_Substitution(Machine(FILE_BUFFER),not_in_buffer)==(oo: 1..size(bfile) | vv:=bool(oo/:dom(buffer)));
  Expanded_List_Substitution(Machine(FILE_BUFFER),size_file)==(btrue | vv:=size(bfile));
  Expanded_List_Substitution(Machine(FILE_BUFFER),load_buffer)==(oo: dom(bfile) & oo/:dom(buffer) | bfile,buffer:=bfile<+buffer,{oo|->bfile(oo)});
  Expanded_List_Substitution(Machine(FILE_BUFFER),create_record)==(vv: VALUE & size(bfile)/=max_rec | bfile,oo:=bfile<-FIELD*{vv},size(bfile)+1);
  List_Substitution(Machine(FILE_BUFFER),create_record)==(bfile:=bfile<-FIELD*{vv} || oo:=size(bfile)+1);
  List_Substitution(Machine(FILE_BUFFER),load_buffer)==(bfile:=bfile<+buffer || buffer:={oo|->bfile(oo)});
  List_Substitution(Machine(FILE_BUFFER),size_file)==(vv:=size(bfile));
  List_Substitution(Machine(FILE_BUFFER),not_in_buffer)==(vv:=bool(oo/:dom(buffer)));
  List_Substitution(Machine(FILE_BUFFER),mod_buffer)==(buffer(oo)(ii):=vv);
  List_Substitution(Machine(FILE_BUFFER),val_buffer)==(vv:=buffer(oo)(ii))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(FILE_BUFFER))==(?);
  Inherited_List_Constants(Machine(FILE_BUFFER))==(?);
  List_Constants(Machine(FILE_BUFFER))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(FILE_BUFFER))==(?);
  Context_List_Defered(Machine(FILE_BUFFER))==(?);
  Context_List_Sets(Machine(FILE_BUFFER))==(?);
  List_Valuable_Sets(Machine(FILE_BUFFER))==(?);
  Inherited_List_Enumerated(Machine(FILE_BUFFER))==(?);
  Inherited_List_Defered(Machine(FILE_BUFFER))==(?);
  Inherited_List_Sets(Machine(FILE_BUFFER))==(?);
  List_Enumerated(Machine(FILE_BUFFER))==(?);
  List_Defered(Machine(FILE_BUFFER))==(?);
  List_Sets(Machine(FILE_BUFFER))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(FILE_BUFFER))==(?);
  Expanded_List_HiddenConstants(Machine(FILE_BUFFER))==(?);
  List_HiddenConstants(Machine(FILE_BUFFER))==(?);
  External_List_HiddenConstants(Machine(FILE_BUFFER))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(FILE_BUFFER))==(btrue);
  Context_List_Properties(Machine(FILE_BUFFER))==(btrue);
  Inherited_List_Properties(Machine(FILE_BUFFER))==(btrue);
  List_Properties(Machine(FILE_BUFFER))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(FILE_BUFFER),create_record)==(?);
  List_ANY_Var(Machine(FILE_BUFFER),load_buffer)==(?);
  List_ANY_Var(Machine(FILE_BUFFER),size_file)==(?);
  List_ANY_Var(Machine(FILE_BUFFER),not_in_buffer)==(?);
  List_ANY_Var(Machine(FILE_BUFFER),mod_buffer)==(?);
  List_ANY_Var(Machine(FILE_BUFFER),val_buffer)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(FILE_BUFFER)) == (? | ? | bfile,buffer | ? | create_record,load_buffer,size_file,not_in_buffer,mod_buffer,val_buffer | ? | ? | max_rec,FIELD,VALUE | FILE_BUFFER);
  List_Of_HiddenCst_Ids(Machine(FILE_BUFFER)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(FILE_BUFFER)) == (?);
  List_Of_VisibleVar_Ids(Machine(FILE_BUFFER)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(FILE_BUFFER)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(FILE_BUFFER)) == (Type(VALUE) == Prm(SetOf(atype(VALUE,?,?)));Type(FIELD) == Prm(SetOf(atype(FIELD,?,?)));Type(max_rec) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(FILE_BUFFER)) == (Type(bfile) == Mvl(SetOf(btype(INTEGER,?,?)*SetOf(atype(FIELD,?,?)*atype(VALUE,?,?))));Type(buffer) == Mvl(SetOf(btype(INTEGER,?,?)*SetOf(atype(FIELD,?,?)*atype(VALUE,?,?)))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(FILE_BUFFER)) == (Type(val_buffer) == Cst(atype(VALUE,?,?),btype(INTEGER,?,?)*atype(FIELD,?,?));Type(mod_buffer) == Cst(No_type,btype(INTEGER,?,?)*atype(FIELD,?,?)*atype(VALUE,?,?));Type(not_in_buffer) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(size_file) == Cst(btype(INTEGER,?,?),No_type);Type(load_buffer) == Cst(No_type,btype(INTEGER,?,?));Type(create_record) == Cst(btype(INTEGER,?,?),atype(VALUE,?,?)));
  Observers(Machine(FILE_BUFFER)) == (Type(val_buffer) == Cst(atype(VALUE,?,?),btype(INTEGER,?,?)*atype(FIELD,?,?));Type(not_in_buffer) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(size_file) == Cst(btype(INTEGER,?,?),No_type))
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
