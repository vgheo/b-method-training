Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(FILE_ACCESS_2))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(FILE_ACCESS_2))==(Machine(FILE_ACCESS));
  Level(Implementation(FILE_ACCESS_2))==(2);
  Upper_Level(Implementation(FILE_ACCESS_2))==(Refinement(FILE_ACCESS_1))
END
&
THEORY LoadedStructureX IS
  Implementation(FILE_ACCESS_2)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(FILE_ACCESS_2))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(FILE_ACCESS_2))==(BASIC_FILE_VAR);
  Inherited_List_Includes(Implementation(FILE_ACCESS_2))==(BASIC_FILE_VAR)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(FILE_ACCESS_2))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(FILE_ACCESS_2))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(FILE_ACCESS_2))==(?);
  Context_List_Variables(Implementation(FILE_ACCESS_2))==(?);
  Abstract_List_Variables(Implementation(FILE_ACCESS_2))==(?);
  Local_List_Variables(Implementation(FILE_ACCESS_2))==(?);
  List_Variables(Implementation(FILE_ACCESS_2))==(?);
  External_List_Variables(Implementation(FILE_ACCESS_2))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(FILE_ACCESS_2))==(record,name,bfile,buffer,updated);
  Abstract_List_VisibleVariables(Implementation(FILE_ACCESS_2))==(record,name,bfile,buffer,updated);
  External_List_VisibleVariables(Implementation(FILE_ACCESS_2))==(file_vrb,buf_vrb);
  Expanded_List_VisibleVariables(Implementation(FILE_ACCESS_2))==(file_vrb,buf_vrb);
  List_VisibleVariables(Implementation(FILE_ACCESS_2))==(?);
  Internal_List_VisibleVariables(Implementation(FILE_ACCESS_2))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(FILE_ACCESS_2))==(btrue);
  Abstract_List_Invariant(Implementation(FILE_ACCESS_2))==(name: NAT & name: 0..size(bfile) & record: 0..4 --> 0..10000 & buffer = {0}<<|{name|->record} & bfile: NAT --> (0..4 --> 0..10000) & bfile: seq(0..4 --> 0..10000) & buffer: NAT --> (0..4 --> 0..10000) & buffer: dom(bfile) +-> (0..4 --> 0..10000) & updated: BOOL & (updated = FALSE => buffer <: bfile) & (updated = TRUE => buffer/={}));
  Expanded_List_Invariant(Implementation(FILE_ACCESS_2))==(buf_vrb: 0..4 --> 0..10000 & file_vrb: NAT --> (0..4 --> 0..10000) & file_vrb: seq(0..4 --> 0..10000) & size(file_vrb)<max_rec);
  Context_List_Invariant(Implementation(FILE_ACCESS_2))==(btrue);
  List_Invariant(Implementation(FILE_ACCESS_2))==(record = buf_vrb & bfile = file_vrb)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(FILE_ACCESS_2))==(btrue);
  Expanded_List_Assertions(Implementation(FILE_ACCESS_2))==(btrue);
  Context_List_Assertions(Implementation(FILE_ACCESS_2))==(btrue);
  List_Assertions(Implementation(FILE_ACCESS_2))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(FILE_ACCESS_2))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(FILE_ACCESS_2))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(FILE_ACCESS_2))==(@(buf_vrb$0).(buf_vrb$0: 0..4 --> 0..10000 ==> buf_vrb:=buf_vrb$0) || file_vrb:=<>;updated:=FALSE;(0: INT | name:=0);buffer:=file_vrb;bfile:=file_vrb;record:=buf_vrb);
  Context_List_Initialisation(Implementation(FILE_ACCESS_2))==(skip);
  List_Initialisation(Implementation(FILE_ACCESS_2))==(updated:=FALSE;name:=0;buffer:=file_vrb;bfile:=file_vrb;record:=buf_vrb)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(FILE_ACCESS_2))==(max_rec)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(FILE_ACCESS_2),Machine(BASIC_FILE_VAR))==(btrue);
  List_Instanciated_Parameters(Implementation(FILE_ACCESS_2),Machine(BASIC_FILE_VAR))==(max_rec)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(FILE_ACCESS_2),Machine(BASIC_FILE_VAR))==(max_rec: NAT1);
  List_Constraints(Implementation(FILE_ACCESS_2))==(max_rec: NAT1);
  List_Context_Constraints(Implementation(FILE_ACCESS_2))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(FILE_ACCESS_2))==(get_record,put_buffer,create_record,mod_buffer,not_in_buffer,size_file,val_buffer);
  List_Operations(Implementation(FILE_ACCESS_2))==(get_record,put_buffer,create_record,mod_buffer,not_in_buffer,size_file,val_buffer)
END
&
THEORY ListInputX IS
  List_Input(Implementation(FILE_ACCESS_2),get_record)==(oo);
  List_Input(Implementation(FILE_ACCESS_2),put_buffer)==(?);
  List_Input(Implementation(FILE_ACCESS_2),create_record)==(vv);
  List_Input(Implementation(FILE_ACCESS_2),mod_buffer)==(oo,ii,vv);
  List_Input(Implementation(FILE_ACCESS_2),not_in_buffer)==(oo);
  List_Input(Implementation(FILE_ACCESS_2),size_file)==(?);
  List_Input(Implementation(FILE_ACCESS_2),val_buffer)==(oo,ii)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(FILE_ACCESS_2),get_record)==(?);
  List_Output(Implementation(FILE_ACCESS_2),put_buffer)==(?);
  List_Output(Implementation(FILE_ACCESS_2),create_record)==(oo);
  List_Output(Implementation(FILE_ACCESS_2),mod_buffer)==(?);
  List_Output(Implementation(FILE_ACCESS_2),not_in_buffer)==(vv);
  List_Output(Implementation(FILE_ACCESS_2),size_file)==(vv);
  List_Output(Implementation(FILE_ACCESS_2),val_buffer)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(FILE_ACCESS_2),get_record)==(get_record(oo));
  List_Header(Implementation(FILE_ACCESS_2),put_buffer)==(put_buffer);
  List_Header(Implementation(FILE_ACCESS_2),create_record)==(oo <-- create_record(vv));
  List_Header(Implementation(FILE_ACCESS_2),mod_buffer)==(mod_buffer(oo,ii,vv));
  List_Header(Implementation(FILE_ACCESS_2),not_in_buffer)==(vv <-- not_in_buffer(oo));
  List_Header(Implementation(FILE_ACCESS_2),size_file)==(vv <-- size_file);
  List_Header(Implementation(FILE_ACCESS_2),val_buffer)==(vv <-- val_buffer(oo,ii))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(FILE_ACCESS_2),get_record)==(btrue);
  List_Precondition(Implementation(FILE_ACCESS_2),get_record)==(oo: NAT1 & oo: dom(bfile));
  Own_Precondition(Implementation(FILE_ACCESS_2),put_buffer)==(btrue);
  List_Precondition(Implementation(FILE_ACCESS_2),put_buffer)==(updated = TRUE);
  Own_Precondition(Implementation(FILE_ACCESS_2),create_record)==(btrue);
  List_Precondition(Implementation(FILE_ACCESS_2),create_record)==(vv: 0..10000 & size(bfile)/=max_rec);
  Own_Precondition(Implementation(FILE_ACCESS_2),mod_buffer)==(btrue);
  List_Precondition(Implementation(FILE_ACCESS_2),mod_buffer)==(oo: NAT1 & oo: dom(buffer) & ii: 0..4 & vv: 0..10000);
  Own_Precondition(Implementation(FILE_ACCESS_2),not_in_buffer)==(btrue);
  List_Precondition(Implementation(FILE_ACCESS_2),not_in_buffer)==(oo: NAT1 & oo: 1..size(bfile));
  Own_Precondition(Implementation(FILE_ACCESS_2),size_file)==(btrue);
  List_Precondition(Implementation(FILE_ACCESS_2),size_file)==(btrue);
  Own_Precondition(Implementation(FILE_ACCESS_2),val_buffer)==(btrue);
  List_Precondition(Implementation(FILE_ACCESS_2),val_buffer)==(oo: NAT1 & oo: dom(buffer) & ii: 0..4)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(FILE_ACCESS_2),val_buffer)==(oo: NAT1 & oo: dom(buffer) & ii: 0..4 & buffer(oo)(ii): INT & oo: dom(buffer) & ii: dom(buffer(oo)) | vv:=buffer(oo)(ii));
  Expanded_List_Substitution(Implementation(FILE_ACCESS_2),size_file)==(btrue | vv:=size(file_vrb));
  Expanded_List_Substitution(Implementation(FILE_ACCESS_2),not_in_buffer)==(oo: NAT1 & oo: 1..size(bfile) | vv:=bool(oo/=name));
  Expanded_List_Substitution(Implementation(FILE_ACCESS_2),mod_buffer)==(oo: NAT1 & oo: dom(buffer) & ii: 0..4 & vv: 0..10000 | (ii: dom(record) & vv: INT | record:=record<+{ii|->vv});updated:=TRUE);
  Expanded_List_Substitution(Implementation(FILE_ACCESS_2),create_record)==(vv: 0..10000 & size(bfile)/=max_rec | (vv: 0..10000 & size(file_vrb)/=max_rec | file_vrb:=file_vrb<-(0..4)*{vv});(btrue | oo:=size(file_vrb)));
  Expanded_List_Substitution(Implementation(FILE_ACCESS_2),put_buffer)==(updated = TRUE & name: NAT & name: dom(file_vrb) | file_vrb:=file_vrb<+{name|->buf_vrb});
  Expanded_List_Substitution(Implementation(FILE_ACCESS_2),get_record)==(oo: NAT1 & oo: dom(bfile) | (1: INT | name:=1);(name: NAT & name: dom(file_vrb) | buf_vrb:=file_vrb(name));updated:=FALSE);
  List_Substitution(Implementation(FILE_ACCESS_2),get_record)==(name:=1;READ_FILE(name);updated:=FALSE);
  List_Substitution(Implementation(FILE_ACCESS_2),put_buffer)==(WRITE_FILE(name));
  List_Substitution(Implementation(FILE_ACCESS_2),create_record)==(NEW_RECORD(vv);oo <-- SIZE_FILE);
  List_Substitution(Implementation(FILE_ACCESS_2),mod_buffer)==(record(ii):=vv;updated:=TRUE);
  List_Substitution(Implementation(FILE_ACCESS_2),not_in_buffer)==(vv:=bool(oo/=name));
  List_Substitution(Implementation(FILE_ACCESS_2),size_file)==(vv <-- SIZE_FILE);
  List_Substitution(Implementation(FILE_ACCESS_2),val_buffer)==(vv:=buffer(oo)(ii))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(FILE_ACCESS_2))==(?);
  Inherited_List_Constants(Implementation(FILE_ACCESS_2))==(?);
  List_Constants(Implementation(FILE_ACCESS_2))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(FILE_ACCESS_2))==(?);
  Context_List_Defered(Implementation(FILE_ACCESS_2))==(?);
  Context_List_Sets(Implementation(FILE_ACCESS_2))==(?);
  List_Own_Enumerated(Implementation(FILE_ACCESS_2))==(?);
  List_Valuable_Sets(Implementation(FILE_ACCESS_2))==(?);
  Inherited_List_Enumerated(Implementation(FILE_ACCESS_2))==(?);
  Inherited_List_Defered(Implementation(FILE_ACCESS_2))==(?);
  Inherited_List_Sets(Implementation(FILE_ACCESS_2))==(?);
  List_Enumerated(Implementation(FILE_ACCESS_2))==(?);
  List_Defered(Implementation(FILE_ACCESS_2))==(?);
  List_Sets(Implementation(FILE_ACCESS_2))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(FILE_ACCESS_2))==(?);
  Expanded_List_HiddenConstants(Implementation(FILE_ACCESS_2))==(?);
  List_HiddenConstants(Implementation(FILE_ACCESS_2))==(?);
  External_List_HiddenConstants(Implementation(FILE_ACCESS_2))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(FILE_ACCESS_2))==(btrue);
  Context_List_Properties(Implementation(FILE_ACCESS_2))==(btrue);
  Inherited_List_Properties(Implementation(FILE_ACCESS_2))==(btrue);
  List_Properties(Implementation(FILE_ACCESS_2))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(FILE_ACCESS_2))==(aa: aa);
  List_Values(Implementation(FILE_ACCESS_2))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(FILE_ACCESS_2),Machine(BASIC_FILE_VAR))==(READ_FILE,WRITE_FILE,NEW_RECORD,SIZE_FILE,RESET_FILE)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(FILE_ACCESS_2))==(Type(val_buffer) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(size_file) == Cst(btype(INTEGER,?,?),No_type);Type(mod_buffer) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(not_in_buffer) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(create_record) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(put_buffer) == Cst(No_type,No_type);Type(get_record) == Cst(No_type,btype(INTEGER,?,?)));
  VisibleVariables(Implementation(FILE_ACCESS_2))==(Type(record) == Mvv(SetOf(btype(INTEGER,0,4)*btype(INTEGER,0,10000)));Type(name) == Mvv(btype(INTEGER,?,?));Type(bfile) == Mvv(SetOf(btype(INTEGER,0,MAXINT)*SetOf(btype(INTEGER,0,4)*btype(INTEGER,0,10000))));Type(buffer) == Mvv(SetOf(btype(INTEGER,0,MAXINT)*SetOf(btype(INTEGER,0,4)*btype(INTEGER,0,10000))));Type(updated) == Mvv(btype(BOOL,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(FILE_ACCESS_2)) == (? | ? | ? | ? | get_record,put_buffer,create_record,mod_buffer,not_in_buffer,size_file,val_buffer | ? | imported(Machine(BASIC_FILE_VAR)) | max_rec | FILE_ACCESS_2);
  List_Of_HiddenCst_Ids(Implementation(FILE_ACCESS_2)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(FILE_ACCESS_2)) == (?);
  List_Of_VisibleVar_Ids(Implementation(FILE_ACCESS_2)) == (? | file_vrb,buf_vrb);
  List_Of_Ids_SeenBNU(Implementation(FILE_ACCESS_2)) == (?: ?);
  List_Of_Ids(Machine(BASIC_FILE_VAR)) == (? | ? | ? | ? | READ_FILE,WRITE_FILE,NEW_RECORD,SIZE_FILE,RESET_FILE | ? | ? | max_rec | BASIC_FILE_VAR);
  List_Of_HiddenCst_Ids(Machine(BASIC_FILE_VAR)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_FILE_VAR)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_FILE_VAR)) == (file_vrb,buf_vrb | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_FILE_VAR)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(FILE_ACCESS_2)) == (Type(max_rec) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(FILE_ACCESS_2)) == (Type(updated) == Mvv(btype(BOOL,?,?));Type(buffer) == Mvv(SetOf(btype(INTEGER,0,MAXINT)*SetOf(btype(INTEGER,0,4)*btype(INTEGER,0,10000))));Type(bfile) == Mvv(SetOf(btype(INTEGER,0,MAXINT)*SetOf(btype(INTEGER,0,4)*btype(INTEGER,0,10000))));Type(name) == Mvv(btype(INTEGER,?,?));Type(record) == Mvv(SetOf(btype(INTEGER,0,4)*btype(INTEGER,0,10000))))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(FILE_ACCESS_2))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(FILE_ACCESS_2))==(record: POW(INTEGER*INTEGER) & name: INTEGER & bfile: POW(INTEGER*POW(INTEGER*INTEGER)) & buffer: POW(INTEGER*POW(INTEGER*INTEGER)) & updated: BOOL)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(FILE_ACCESS_2),Machine(BASIC_FILE_VAR))==(?);
  ImportedVisVariablesList(Implementation(FILE_ACCESS_2),Machine(BASIC_FILE_VAR))==(file_vrb,buf_vrb)
END
&
THEORY ListLocalOpInvariantX END
)
