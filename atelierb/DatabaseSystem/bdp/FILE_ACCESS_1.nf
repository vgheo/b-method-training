Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(FILE_ACCESS_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(FILE_ACCESS_1))==(Machine(FILE_ACCESS));
  Level(Refinement(FILE_ACCESS_1))==(1);
  Upper_Level(Refinement(FILE_ACCESS_1))==(Machine(FILE_ACCESS))
END
&
THEORY LoadedStructureX IS
  Refinement(FILE_ACCESS_1)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(FILE_ACCESS_1))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(FILE_ACCESS_1))==(?);
  List_Includes(Refinement(FILE_ACCESS_1))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(FILE_ACCESS_1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(FILE_ACCESS_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(FILE_ACCESS_1))==(?);
  Context_List_Variables(Refinement(FILE_ACCESS_1))==(?);
  Abstract_List_Variables(Refinement(FILE_ACCESS_1))==(?);
  Local_List_Variables(Refinement(FILE_ACCESS_1))==(?);
  List_Variables(Refinement(FILE_ACCESS_1))==(?);
  External_List_Variables(Refinement(FILE_ACCESS_1))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(FILE_ACCESS_1))==(updated,buffer,bfile);
  Abstract_List_VisibleVariables(Refinement(FILE_ACCESS_1))==(updated,buffer,bfile);
  External_List_VisibleVariables(Refinement(FILE_ACCESS_1))==(?);
  Expanded_List_VisibleVariables(Refinement(FILE_ACCESS_1))==(?);
  List_VisibleVariables(Refinement(FILE_ACCESS_1))==(record,name);
  Internal_List_VisibleVariables(Refinement(FILE_ACCESS_1))==(record,name)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(FILE_ACCESS_1))==(record,name)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(FILE_ACCESS_1))==(btrue);
  Expanded_List_Invariant(Refinement(FILE_ACCESS_1))==(btrue);
  Abstract_List_Invariant(Refinement(FILE_ACCESS_1))==(bfile: NAT --> (FIELD --> VALUE) & bfile: seq(FIELD --> VALUE) & buffer: NAT --> (FIELD --> VALUE) & buffer: dom(bfile) +-> (FIELD --> VALUE) & updated: BOOL & (updated = FALSE => buffer <: bfile) & (updated = TRUE => buffer/={}));
  Context_List_Invariant(Refinement(FILE_ACCESS_1))==(btrue);
  List_Invariant(Refinement(FILE_ACCESS_1))==(name: NAT & name: 0..size(bfile) & record: FIELD --> VALUE & buffer = {0}<<|{name|->record})
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(FILE_ACCESS_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(FILE_ACCESS_1))==(btrue);
  Abstract_List_Assertions(Refinement(FILE_ACCESS_1))==(btrue);
  Context_List_Assertions(Refinement(FILE_ACCESS_1))==(btrue);
  List_Assertions(Refinement(FILE_ACCESS_1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(FILE_ACCESS_1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(FILE_ACCESS_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(FILE_ACCESS_1))==(name:=0 || @(record$0).(record$0: FIELD --> VALUE ==> record:=record$0) || buffer,bfile,updated:={},<>,FALSE);
  Context_List_Initialisation(Refinement(FILE_ACCESS_1))==(skip);
  List_Initialisation(Refinement(FILE_ACCESS_1))==(name:=0 || record:: FIELD --> VALUE || buffer,bfile,updated:={},<>,FALSE)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(FILE_ACCESS_1))==(get_record,put_buffer,create_record,not_in_buffer,mod_buffer,size_file,val_buffer);
  List_Operations(Refinement(FILE_ACCESS_1))==(get_record,put_buffer,create_record,not_in_buffer,mod_buffer,size_file,val_buffer)
END
&
THEORY ListInputX IS
  List_Input(Refinement(FILE_ACCESS_1),val_buffer)==(oo,ii);
  List_Input(Refinement(FILE_ACCESS_1),get_record)==(oo);
  List_Input(Refinement(FILE_ACCESS_1),put_buffer)==(?);
  List_Input(Refinement(FILE_ACCESS_1),create_record)==(vv);
  List_Input(Refinement(FILE_ACCESS_1),not_in_buffer)==(oo);
  List_Input(Refinement(FILE_ACCESS_1),mod_buffer)==(oo,ii,vv);
  List_Input(Refinement(FILE_ACCESS_1),size_file)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(FILE_ACCESS_1),val_buffer)==(vv);
  List_Output(Refinement(FILE_ACCESS_1),get_record)==(?);
  List_Output(Refinement(FILE_ACCESS_1),put_buffer)==(?);
  List_Output(Refinement(FILE_ACCESS_1),create_record)==(oo);
  List_Output(Refinement(FILE_ACCESS_1),not_in_buffer)==(vv);
  List_Output(Refinement(FILE_ACCESS_1),mod_buffer)==(?);
  List_Output(Refinement(FILE_ACCESS_1),size_file)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(FILE_ACCESS_1),val_buffer)==(vv <-- val_buffer(oo,ii));
  List_Header(Refinement(FILE_ACCESS_1),get_record)==(get_record(oo));
  List_Header(Refinement(FILE_ACCESS_1),put_buffer)==(put_buffer);
  List_Header(Refinement(FILE_ACCESS_1),create_record)==(oo <-- create_record(vv));
  List_Header(Refinement(FILE_ACCESS_1),not_in_buffer)==(vv <-- not_in_buffer(oo));
  List_Header(Refinement(FILE_ACCESS_1),mod_buffer)==(mod_buffer(oo,ii,vv));
  List_Header(Refinement(FILE_ACCESS_1),size_file)==(vv <-- size_file)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(FILE_ACCESS_1),val_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD);
  List_Precondition(Refinement(FILE_ACCESS_1),val_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD);
  Own_Precondition(Refinement(FILE_ACCESS_1),get_record)==(btrue);
  List_Precondition(Refinement(FILE_ACCESS_1),get_record)==(oo: NAT & oo: dom(bfile));
  Own_Precondition(Refinement(FILE_ACCESS_1),put_buffer)==(btrue);
  List_Precondition(Refinement(FILE_ACCESS_1),put_buffer)==(updated = TRUE);
  Own_Precondition(Refinement(FILE_ACCESS_1),create_record)==(btrue);
  List_Precondition(Refinement(FILE_ACCESS_1),create_record)==(vv: VALUE & size(bfile)/=max_rec);
  Own_Precondition(Refinement(FILE_ACCESS_1),not_in_buffer)==(btrue);
  List_Precondition(Refinement(FILE_ACCESS_1),not_in_buffer)==(oo: NAT1 & oo: 1..size(bfile));
  Own_Precondition(Refinement(FILE_ACCESS_1),mod_buffer)==(btrue);
  List_Precondition(Refinement(FILE_ACCESS_1),mod_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD & vv: VALUE);
  Own_Precondition(Refinement(FILE_ACCESS_1),size_file)==(btrue);
  List_Precondition(Refinement(FILE_ACCESS_1),size_file)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(FILE_ACCESS_1),val_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD | vv:=buffer(oo)(ii));
  List_Substitution(Refinement(FILE_ACCESS_1),val_buffer)==(vv:=buffer(oo)(ii));
  Expanded_List_Substitution(Refinement(FILE_ACCESS_1),size_file)==(btrue | vv:=size(bfile));
  Expanded_List_Substitution(Refinement(FILE_ACCESS_1),mod_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD & vv: VALUE | record,updated:=record<+{ii|->vv},TRUE);
  Expanded_List_Substitution(Refinement(FILE_ACCESS_1),not_in_buffer)==(oo: NAT1 & oo: 1..size(bfile) | vv:=bool(name/=oo));
  Expanded_List_Substitution(Refinement(FILE_ACCESS_1),create_record)==(vv: VALUE & size(bfile)/=max_rec | bfile,oo:=bfile<-FIELD*{vv},size(bfile)+1);
  Expanded_List_Substitution(Refinement(FILE_ACCESS_1),put_buffer)==(updated = TRUE | bfile:=bfile<+{name|->record});
  Expanded_List_Substitution(Refinement(FILE_ACCESS_1),get_record)==(oo: NAT & oo: dom(bfile) | name,record,updated:=oo,bfile(oo),FALSE);
  List_Substitution(Refinement(FILE_ACCESS_1),get_record)==(name,record,updated:=oo,bfile(oo),FALSE);
  List_Substitution(Refinement(FILE_ACCESS_1),put_buffer)==(bfile(name):=record);
  List_Substitution(Refinement(FILE_ACCESS_1),create_record)==(bfile:=bfile<-FIELD*{vv} || oo:=size(bfile)+1);
  List_Substitution(Refinement(FILE_ACCESS_1),not_in_buffer)==(vv:=bool(name/=oo));
  List_Substitution(Refinement(FILE_ACCESS_1),mod_buffer)==(record(ii):=vv || updated:=TRUE);
  List_Substitution(Refinement(FILE_ACCESS_1),size_file)==(vv:=size(bfile))
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(FILE_ACCESS_1))==(max_rec,FIELD,VALUE)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(FILE_ACCESS_1))==(max_rec: NAT1 & FIELD: FIN(INTEGER) & not(FIELD = {}) & VALUE: FIN(INTEGER) & not(VALUE = {}));
  List_Context_Constraints(Refinement(FILE_ACCESS_1))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(FILE_ACCESS_1))==(?);
  Inherited_List_Constants(Refinement(FILE_ACCESS_1))==(?);
  List_Constants(Refinement(FILE_ACCESS_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Refinement(FILE_ACCESS_1))==(?);
  Context_List_Defered(Refinement(FILE_ACCESS_1))==(?);
  Context_List_Sets(Refinement(FILE_ACCESS_1))==(?);
  List_Valuable_Sets(Refinement(FILE_ACCESS_1))==(?);
  Inherited_List_Enumerated(Refinement(FILE_ACCESS_1))==(?);
  Inherited_List_Defered(Refinement(FILE_ACCESS_1))==(?);
  Inherited_List_Sets(Refinement(FILE_ACCESS_1))==(?);
  List_Enumerated(Refinement(FILE_ACCESS_1))==(?);
  List_Defered(Refinement(FILE_ACCESS_1))==(?);
  List_Sets(Refinement(FILE_ACCESS_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(FILE_ACCESS_1))==(?);
  Expanded_List_HiddenConstants(Refinement(FILE_ACCESS_1))==(?);
  List_HiddenConstants(Refinement(FILE_ACCESS_1))==(?);
  External_List_HiddenConstants(Refinement(FILE_ACCESS_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(FILE_ACCESS_1))==(btrue);
  Context_List_Properties(Refinement(FILE_ACCESS_1))==(btrue);
  Inherited_List_Properties(Refinement(FILE_ACCESS_1))==(btrue);
  List_Properties(Refinement(FILE_ACCESS_1))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(FILE_ACCESS_1),val_buffer)==(?);
  List_ANY_Var(Refinement(FILE_ACCESS_1),get_record)==(?);
  List_ANY_Var(Refinement(FILE_ACCESS_1),put_buffer)==(?);
  List_ANY_Var(Refinement(FILE_ACCESS_1),create_record)==(?);
  List_ANY_Var(Refinement(FILE_ACCESS_1),not_in_buffer)==(?);
  List_ANY_Var(Refinement(FILE_ACCESS_1),mod_buffer)==(?);
  List_ANY_Var(Refinement(FILE_ACCESS_1),size_file)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(FILE_ACCESS_1)) == (? | ? | ? | ? | get_record,put_buffer,create_record,not_in_buffer,mod_buffer,size_file | ? | ? | max_rec,FIELD,VALUE | FILE_ACCESS_1);
  List_Of_HiddenCst_Ids(Refinement(FILE_ACCESS_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(FILE_ACCESS_1)) == (?);
  List_Of_VisibleVar_Ids(Refinement(FILE_ACCESS_1)) == (record,name | ?);
  List_Of_Ids_SeenBNU(Refinement(FILE_ACCESS_1)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Refinement(FILE_ACCESS_1)) == (Type(VALUE) == Prm(SetOf(atype(VALUE,?,?)));Type(FIELD) == Prm(SetOf(atype(FIELD,?,?)));Type(max_rec) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Refinement(FILE_ACCESS_1)) == (Type(record) == Mvv(SetOf(atype(FIELD,?,?)*atype(VALUE,?,?)));Type(name) == Mvv(btype(INTEGER,?,?));Type(bfile) == Mvv(SetOf(btype(INTEGER,0,MAXINT)*SetOf(atype(FIELD,?,?)*atype(VALUE,?,?))));Type(buffer) == Mvv(SetOf(btype(INTEGER,0,MAXINT)*SetOf(atype(FIELD,?,?)*atype(VALUE,?,?))));Type(updated) == Mvv(btype(BOOL,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(FILE_ACCESS_1)) == (Type(val_buffer) == Cst(atype(VALUE,?,?),btype(INTEGER,?,?)*atype(FIELD,?,?));Type(size_file) == Cst(btype(INTEGER,?,?),No_type);Type(mod_buffer) == Cst(No_type,btype(INTEGER,?,?)*atype(FIELD,?,?)*atype(VALUE,?,?));Type(not_in_buffer) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(create_record) == Cst(btype(INTEGER,?,?),atype(VALUE,?,?));Type(put_buffer) == Cst(No_type,No_type);Type(get_record) == Cst(No_type,btype(INTEGER,?,?)))
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
