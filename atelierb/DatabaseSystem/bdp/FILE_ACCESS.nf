Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(FILE_ACCESS))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(FILE_ACCESS))==(Machine(FILE_ACCESS));
  Level(Machine(FILE_ACCESS))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(FILE_ACCESS)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(FILE_ACCESS))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(FILE_ACCESS))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(FILE_ACCESS))==(?);
  List_Includes(Machine(FILE_ACCESS))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(FILE_ACCESS))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(FILE_ACCESS))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(FILE_ACCESS))==(?);
  Context_List_Variables(Machine(FILE_ACCESS))==(?);
  Abstract_List_Variables(Machine(FILE_ACCESS))==(?);
  Local_List_Variables(Machine(FILE_ACCESS))==(?);
  List_Variables(Machine(FILE_ACCESS))==(?);
  External_List_Variables(Machine(FILE_ACCESS))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(FILE_ACCESS))==(?);
  Abstract_List_VisibleVariables(Machine(FILE_ACCESS))==(?);
  External_List_VisibleVariables(Machine(FILE_ACCESS))==(?);
  Expanded_List_VisibleVariables(Machine(FILE_ACCESS))==(?);
  List_VisibleVariables(Machine(FILE_ACCESS))==(updated,buffer,bfile);
  Internal_List_VisibleVariables(Machine(FILE_ACCESS))==(updated,buffer,bfile)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(FILE_ACCESS))==(btrue);
  Gluing_List_Invariant(Machine(FILE_ACCESS))==(btrue);
  Expanded_List_Invariant(Machine(FILE_ACCESS))==(btrue);
  Abstract_List_Invariant(Machine(FILE_ACCESS))==(btrue);
  Context_List_Invariant(Machine(FILE_ACCESS))==(btrue);
  List_Invariant(Machine(FILE_ACCESS))==(bfile: NAT1 --> (FIELD --> VALUE) & bfile: seq(FIELD --> VALUE) & buffer: NAT1 --> (FIELD --> VALUE) & buffer: dom(bfile) +-> (FIELD --> VALUE) & updated: BOOL & (updated = FALSE => buffer <: bfile) & (updated = TRUE => buffer/={}))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(FILE_ACCESS))==(btrue);
  Abstract_List_Assertions(Machine(FILE_ACCESS))==(btrue);
  Context_List_Assertions(Machine(FILE_ACCESS))==(btrue);
  List_Assertions(Machine(FILE_ACCESS))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(FILE_ACCESS))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(FILE_ACCESS))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(FILE_ACCESS))==(bfile,buffer,updated:=<>,{},FALSE);
  Context_List_Initialisation(Machine(FILE_ACCESS))==(skip);
  List_Initialisation(Machine(FILE_ACCESS))==(bfile,buffer,updated:=<>,{},FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(FILE_ACCESS))==(max_rec,FIELD,VALUE)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(FILE_ACCESS))==(btrue);
  List_Constraints(Machine(FILE_ACCESS))==(max_rec: NAT1 & FIELD: FIN(INTEGER) & not(FIELD = {}) & VALUE: FIN(INTEGER) & not(VALUE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(FILE_ACCESS))==(get_record,put_buffer,create_record,not_in_buffer,mod_buffer,size_file,val_buffer);
  List_Operations(Machine(FILE_ACCESS))==(get_record,put_buffer,create_record,not_in_buffer,mod_buffer,size_file,val_buffer)
END
&
THEORY ListInputX IS
  List_Input(Machine(FILE_ACCESS),get_record)==(oo);
  List_Input(Machine(FILE_ACCESS),put_buffer)==(?);
  List_Input(Machine(FILE_ACCESS),create_record)==(vv);
  List_Input(Machine(FILE_ACCESS),not_in_buffer)==(oo);
  List_Input(Machine(FILE_ACCESS),mod_buffer)==(oo,ii,vv);
  List_Input(Machine(FILE_ACCESS),size_file)==(?);
  List_Input(Machine(FILE_ACCESS),val_buffer)==(oo,ii)
END
&
THEORY ListOutputX IS
  List_Output(Machine(FILE_ACCESS),get_record)==(?);
  List_Output(Machine(FILE_ACCESS),put_buffer)==(?);
  List_Output(Machine(FILE_ACCESS),create_record)==(oo);
  List_Output(Machine(FILE_ACCESS),not_in_buffer)==(vv);
  List_Output(Machine(FILE_ACCESS),mod_buffer)==(?);
  List_Output(Machine(FILE_ACCESS),size_file)==(vv);
  List_Output(Machine(FILE_ACCESS),val_buffer)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(FILE_ACCESS),get_record)==(get_record(oo));
  List_Header(Machine(FILE_ACCESS),put_buffer)==(put_buffer);
  List_Header(Machine(FILE_ACCESS),create_record)==(oo <-- create_record(vv));
  List_Header(Machine(FILE_ACCESS),not_in_buffer)==(vv <-- not_in_buffer(oo));
  List_Header(Machine(FILE_ACCESS),mod_buffer)==(mod_buffer(oo,ii,vv));
  List_Header(Machine(FILE_ACCESS),size_file)==(vv <-- size_file);
  List_Header(Machine(FILE_ACCESS),val_buffer)==(vv <-- val_buffer(oo,ii))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(FILE_ACCESS),get_record)==(oo: NAT & oo: dom(bfile));
  List_Precondition(Machine(FILE_ACCESS),put_buffer)==(updated = TRUE);
  List_Precondition(Machine(FILE_ACCESS),create_record)==(vv: VALUE & size(bfile)/=max_rec);
  List_Precondition(Machine(FILE_ACCESS),not_in_buffer)==(oo: NAT1 & oo: 1..size(bfile));
  List_Precondition(Machine(FILE_ACCESS),mod_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD & vv: VALUE);
  List_Precondition(Machine(FILE_ACCESS),size_file)==(btrue);
  List_Precondition(Machine(FILE_ACCESS),val_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(FILE_ACCESS),val_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD | vv:=buffer(oo)(ii));
  Expanded_List_Substitution(Machine(FILE_ACCESS),size_file)==(btrue | vv:=size(bfile));
  Expanded_List_Substitution(Machine(FILE_ACCESS),mod_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD & vv: VALUE | buffer,updated:=buffer<+{oo|->(buffer(oo)<+{ii|->vv})},TRUE);
  Expanded_List_Substitution(Machine(FILE_ACCESS),not_in_buffer)==(oo: NAT1 & oo: 1..size(bfile) | vv:=bool(oo/:dom(buffer)));
  Expanded_List_Substitution(Machine(FILE_ACCESS),create_record)==(vv: VALUE & size(bfile)/=max_rec | bfile,oo:=bfile<-FIELD*{vv},size(bfile)+1);
  Expanded_List_Substitution(Machine(FILE_ACCESS),put_buffer)==(updated = TRUE | bfile:=bfile<+buffer);
  Expanded_List_Substitution(Machine(FILE_ACCESS),get_record)==(oo: NAT & oo: dom(bfile) | buffer,updated:={oo|->bfile(oo)},FALSE);
  List_Substitution(Machine(FILE_ACCESS),get_record)==(buffer:={oo|->bfile(oo)} || updated:=FALSE);
  List_Substitution(Machine(FILE_ACCESS),put_buffer)==(bfile:=bfile<+buffer);
  List_Substitution(Machine(FILE_ACCESS),create_record)==(bfile:=bfile<-FIELD*{vv} || oo:=size(bfile)+1);
  List_Substitution(Machine(FILE_ACCESS),not_in_buffer)==(vv:=bool(oo/:dom(buffer)));
  List_Substitution(Machine(FILE_ACCESS),mod_buffer)==(buffer(oo)(ii):=vv || updated:=TRUE);
  List_Substitution(Machine(FILE_ACCESS),size_file)==(vv:=size(bfile));
  List_Substitution(Machine(FILE_ACCESS),val_buffer)==(vv:=buffer(oo)(ii))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(FILE_ACCESS))==(?);
  Inherited_List_Constants(Machine(FILE_ACCESS))==(?);
  List_Constants(Machine(FILE_ACCESS))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(FILE_ACCESS))==(?);
  Context_List_Defered(Machine(FILE_ACCESS))==(?);
  Context_List_Sets(Machine(FILE_ACCESS))==(?);
  List_Valuable_Sets(Machine(FILE_ACCESS))==(?);
  Inherited_List_Enumerated(Machine(FILE_ACCESS))==(?);
  Inherited_List_Defered(Machine(FILE_ACCESS))==(?);
  Inherited_List_Sets(Machine(FILE_ACCESS))==(?);
  List_Enumerated(Machine(FILE_ACCESS))==(?);
  List_Defered(Machine(FILE_ACCESS))==(?);
  List_Sets(Machine(FILE_ACCESS))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(FILE_ACCESS))==(?);
  Expanded_List_HiddenConstants(Machine(FILE_ACCESS))==(?);
  List_HiddenConstants(Machine(FILE_ACCESS))==(?);
  External_List_HiddenConstants(Machine(FILE_ACCESS))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(FILE_ACCESS))==(btrue);
  Context_List_Properties(Machine(FILE_ACCESS))==(btrue);
  Inherited_List_Properties(Machine(FILE_ACCESS))==(btrue);
  List_Properties(Machine(FILE_ACCESS))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(FILE_ACCESS),get_record)==(?);
  List_ANY_Var(Machine(FILE_ACCESS),put_buffer)==(?);
  List_ANY_Var(Machine(FILE_ACCESS),create_record)==(?);
  List_ANY_Var(Machine(FILE_ACCESS),not_in_buffer)==(?);
  List_ANY_Var(Machine(FILE_ACCESS),mod_buffer)==(?);
  List_ANY_Var(Machine(FILE_ACCESS),size_file)==(?);
  List_ANY_Var(Machine(FILE_ACCESS),val_buffer)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(FILE_ACCESS)) == (? | ? | ? | ? | get_record,put_buffer,create_record,not_in_buffer,mod_buffer,size_file,val_buffer | ? | ? | max_rec,FIELD,VALUE | FILE_ACCESS);
  List_Of_HiddenCst_Ids(Machine(FILE_ACCESS)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(FILE_ACCESS)) == (?);
  List_Of_VisibleVar_Ids(Machine(FILE_ACCESS)) == (updated,buffer,bfile | ?);
  List_Of_Ids_SeenBNU(Machine(FILE_ACCESS)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(FILE_ACCESS)) == (Type(VALUE) == Prm(SetOf(atype(VALUE,?,?)));Type(FIELD) == Prm(SetOf(atype(FIELD,?,?)));Type(max_rec) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Machine(FILE_ACCESS)) == (Type(updated) == Mvv(btype(BOOL,?,?));Type(buffer) == Mvv(SetOf(btype(INTEGER,1,MAXINT)*SetOf(atype(FIELD,?,?)*atype(VALUE,?,?))));Type(bfile) == Mvv(SetOf(btype(INTEGER,1,MAXINT)*SetOf(atype(FIELD,?,?)*atype(VALUE,?,?)))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(FILE_ACCESS)) == (Type(val_buffer) == Cst(atype(VALUE,?,?),btype(INTEGER,?,?)*atype(FIELD,?,?));Type(size_file) == Cst(btype(INTEGER,?,?),No_type);Type(mod_buffer) == Cst(No_type,btype(INTEGER,?,?)*atype(FIELD,?,?)*atype(VALUE,?,?));Type(not_in_buffer) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(create_record) == Cst(btype(INTEGER,?,?),atype(VALUE,?,?));Type(put_buffer) == Cst(No_type,No_type);Type(get_record) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(FILE_ACCESS)) == (Type(val_buffer) == Cst(atype(VALUE,?,?),btype(INTEGER,?,?)*atype(FIELD,?,?));Type(size_file) == Cst(btype(INTEGER,?,?),No_type);Type(not_in_buffer) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)))
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
