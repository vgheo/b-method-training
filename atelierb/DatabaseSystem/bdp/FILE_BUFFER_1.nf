Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(FILE_BUFFER_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(FILE_BUFFER_1))==(Machine(FILE_BUFFER));
  Level(Implementation(FILE_BUFFER_1))==(1);
  Upper_Level(Implementation(FILE_BUFFER_1))==(Machine(FILE_BUFFER))
END
&
THEORY LoadedStructureX IS
  Implementation(FILE_BUFFER_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(FILE_BUFFER_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(FILE_BUFFER_1))==(FILE_ACCESS);
  Inherited_List_Includes(Implementation(FILE_BUFFER_1))==(FILE_ACCESS)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(FILE_BUFFER_1))==(create_record,not_in_buffer,mod_buffer,val_buffer,size_file)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(FILE_BUFFER_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(FILE_BUFFER_1))==(?);
  Context_List_Variables(Implementation(FILE_BUFFER_1))==(?);
  Abstract_List_Variables(Implementation(FILE_BUFFER_1))==(bfile,buffer);
  Local_List_Variables(Implementation(FILE_BUFFER_1))==(?);
  List_Variables(Implementation(FILE_BUFFER_1))==(?);
  External_List_Variables(Implementation(FILE_BUFFER_1))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(FILE_BUFFER_1))==(?);
  Abstract_List_VisibleVariables(Implementation(FILE_BUFFER_1))==(?);
  External_List_VisibleVariables(Implementation(FILE_BUFFER_1))==(updated,buffer,bfile);
  Expanded_List_VisibleVariables(Implementation(FILE_BUFFER_1))==(updated,buffer,bfile);
  List_VisibleVariables(Implementation(FILE_BUFFER_1))==(?);
  Internal_List_VisibleVariables(Implementation(FILE_BUFFER_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(FILE_BUFFER_1))==(btrue);
  Abstract_List_Invariant(Implementation(FILE_BUFFER_1))==(bfile: seq(FIELD --> VALUE) & buffer: dom(bfile) +-> (FIELD --> VALUE));
  Expanded_List_Invariant(Implementation(FILE_BUFFER_1))==(bfile: NAT --> (FIELD --> VALUE) & bfile: seq(FIELD --> VALUE) & buffer: NAT --> (FIELD --> VALUE) & buffer: dom(bfile) +-> (FIELD --> VALUE) & updated: BOOL & (updated = FALSE => buffer <: bfile) & (updated = TRUE => buffer/={}));
  Context_List_Invariant(Implementation(FILE_BUFFER_1))==(btrue);
  List_Invariant(Implementation(FILE_BUFFER_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(FILE_BUFFER_1))==(btrue);
  Expanded_List_Assertions(Implementation(FILE_BUFFER_1))==(btrue);
  Context_List_Assertions(Implementation(FILE_BUFFER_1))==(btrue);
  List_Assertions(Implementation(FILE_BUFFER_1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(FILE_BUFFER_1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(FILE_BUFFER_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(FILE_BUFFER_1))==(bfile,buffer,updated:=<>,{},FALSE);
  Context_List_Initialisation(Implementation(FILE_BUFFER_1))==(skip);
  List_Initialisation(Implementation(FILE_BUFFER_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(FILE_BUFFER_1))==(max_rec,FIELD,VALUE)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(FILE_BUFFER_1),Machine(FILE_ACCESS))==(btrue);
  List_Instanciated_Parameters(Implementation(FILE_BUFFER_1),Machine(FILE_ACCESS))==(max_rec,FIELD,VALUE)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(FILE_BUFFER_1),Machine(FILE_ACCESS))==(max_rec: NAT1 & FIELD: FIN(INTEGER) & not(FIELD = {}) & VALUE: FIN(INTEGER) & not(VALUE = {}));
  List_Constraints(Implementation(FILE_BUFFER_1))==(max_rec: NAT1 & FIELD: FIN(INTEGER) & not(FIELD = {}) & VALUE: FIN(INTEGER) & not(VALUE = {}));
  List_Context_Constraints(Implementation(FILE_BUFFER_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(FILE_BUFFER_1))==(load_buffer,create_record,not_in_buffer,mod_buffer,size_file,val_buffer);
  List_Operations(Implementation(FILE_BUFFER_1))==(load_buffer,create_record,not_in_buffer,mod_buffer,size_file,val_buffer)
END
&
THEORY ListInputX IS
  List_Input(Implementation(FILE_BUFFER_1),val_buffer)==(oo,ii);
  List_Input(Implementation(FILE_BUFFER_1),size_file)==(?);
  List_Input(Implementation(FILE_BUFFER_1),mod_buffer)==(oo,ii,vv);
  List_Input(Implementation(FILE_BUFFER_1),not_in_buffer)==(oo);
  List_Input(Implementation(FILE_BUFFER_1),create_record)==(vv);
  List_Input(Implementation(FILE_BUFFER_1),load_buffer)==(oo)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(FILE_BUFFER_1),val_buffer)==(vv);
  List_Output(Implementation(FILE_BUFFER_1),size_file)==(vv);
  List_Output(Implementation(FILE_BUFFER_1),mod_buffer)==(?);
  List_Output(Implementation(FILE_BUFFER_1),not_in_buffer)==(vv);
  List_Output(Implementation(FILE_BUFFER_1),create_record)==(oo);
  List_Output(Implementation(FILE_BUFFER_1),load_buffer)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(FILE_BUFFER_1),val_buffer)==(vv <-- val_buffer(oo,ii));
  List_Header(Implementation(FILE_BUFFER_1),size_file)==(vv <-- size_file);
  List_Header(Implementation(FILE_BUFFER_1),mod_buffer)==(mod_buffer(oo,ii,vv));
  List_Header(Implementation(FILE_BUFFER_1),not_in_buffer)==(vv <-- not_in_buffer(oo));
  List_Header(Implementation(FILE_BUFFER_1),create_record)==(oo <-- create_record(vv));
  List_Header(Implementation(FILE_BUFFER_1),load_buffer)==(load_buffer(oo))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(FILE_BUFFER_1),val_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD);
  List_Precondition(Implementation(FILE_BUFFER_1),val_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD);
  Own_Precondition(Implementation(FILE_BUFFER_1),size_file)==(btrue);
  List_Precondition(Implementation(FILE_BUFFER_1),size_file)==(btrue);
  Own_Precondition(Implementation(FILE_BUFFER_1),mod_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD & vv: VALUE);
  List_Precondition(Implementation(FILE_BUFFER_1),mod_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD & vv: VALUE);
  Own_Precondition(Implementation(FILE_BUFFER_1),not_in_buffer)==(oo: NAT1 & oo: 1..size(bfile));
  List_Precondition(Implementation(FILE_BUFFER_1),not_in_buffer)==(oo: NAT1 & oo: 1..size(bfile));
  Own_Precondition(Implementation(FILE_BUFFER_1),create_record)==(vv: VALUE & size(bfile)/=max_rec);
  List_Precondition(Implementation(FILE_BUFFER_1),create_record)==(vv: VALUE & size(bfile)/=max_rec);
  Own_Precondition(Implementation(FILE_BUFFER_1),load_buffer)==(btrue);
  List_Precondition(Implementation(FILE_BUFFER_1),load_buffer)==(oo: NAT & oo: dom(bfile) & oo/:dom(buffer))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(FILE_BUFFER_1),load_buffer)==(oo: NAT & oo: dom(bfile) & oo/:dom(buffer) | updated = TRUE ==> (updated = TRUE | bfile:=bfile<+buffer) [] not(updated = TRUE) ==> skip;(oo: NAT & oo: dom(bfile) | buffer,updated:={oo|->bfile(oo)},FALSE));
  List_Substitution(Implementation(FILE_BUFFER_1),val_buffer)==(vv:=buffer(oo)(ii));
  Expanded_List_Substitution(Implementation(FILE_BUFFER_1),val_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD | vv:=buffer(oo)(ii));
  List_Substitution(Implementation(FILE_BUFFER_1),size_file)==(vv:=size(bfile));
  Expanded_List_Substitution(Implementation(FILE_BUFFER_1),size_file)==(btrue | vv:=size(bfile));
  List_Substitution(Implementation(FILE_BUFFER_1),mod_buffer)==(buffer(oo)(ii):=vv || updated:=TRUE);
  Expanded_List_Substitution(Implementation(FILE_BUFFER_1),mod_buffer)==(oo: NAT & oo: dom(buffer) & ii: FIELD & vv: VALUE | buffer,updated:=buffer<+{oo|->(buffer(oo)<+{ii|->vv})},TRUE);
  List_Substitution(Implementation(FILE_BUFFER_1),not_in_buffer)==(vv:=bool(oo/:dom(buffer)));
  Expanded_List_Substitution(Implementation(FILE_BUFFER_1),not_in_buffer)==(oo: NAT1 & oo: 1..size(bfile) | vv:=bool(oo/:dom(buffer)));
  List_Substitution(Implementation(FILE_BUFFER_1),create_record)==(bfile:=bfile<-FIELD*{vv} || oo:=size(bfile)+1);
  Expanded_List_Substitution(Implementation(FILE_BUFFER_1),create_record)==(vv: VALUE & size(bfile)/=max_rec | bfile,oo:=bfile<-FIELD*{vv},size(bfile)+1);
  List_Substitution(Implementation(FILE_BUFFER_1),load_buffer)==(IF updated = TRUE THEN put_buffer END;get_record(oo))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(FILE_BUFFER_1))==(?);
  Inherited_List_Constants(Implementation(FILE_BUFFER_1))==(?);
  List_Constants(Implementation(FILE_BUFFER_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(FILE_BUFFER_1))==(?);
  Context_List_Defered(Implementation(FILE_BUFFER_1))==(?);
  Context_List_Sets(Implementation(FILE_BUFFER_1))==(?);
  List_Own_Enumerated(Implementation(FILE_BUFFER_1))==(?);
  List_Valuable_Sets(Implementation(FILE_BUFFER_1))==(?);
  Inherited_List_Enumerated(Implementation(FILE_BUFFER_1))==(?);
  Inherited_List_Defered(Implementation(FILE_BUFFER_1))==(?);
  Inherited_List_Sets(Implementation(FILE_BUFFER_1))==(?);
  List_Enumerated(Implementation(FILE_BUFFER_1))==(?);
  List_Defered(Implementation(FILE_BUFFER_1))==(?);
  List_Sets(Implementation(FILE_BUFFER_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(FILE_BUFFER_1))==(?);
  Expanded_List_HiddenConstants(Implementation(FILE_BUFFER_1))==(?);
  List_HiddenConstants(Implementation(FILE_BUFFER_1))==(?);
  External_List_HiddenConstants(Implementation(FILE_BUFFER_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(FILE_BUFFER_1))==(btrue);
  Context_List_Properties(Implementation(FILE_BUFFER_1))==(btrue);
  Inherited_List_Properties(Implementation(FILE_BUFFER_1))==(btrue);
  List_Properties(Implementation(FILE_BUFFER_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(FILE_BUFFER_1))==(aa: aa);
  List_Values(Implementation(FILE_BUFFER_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(FILE_BUFFER_1),Machine(FILE_ACCESS))==(get_record,put_buffer,create_record,not_in_buffer,mod_buffer,size_file,val_buffer)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(FILE_BUFFER_1))==(Type(val_buffer) == Cst(atype(VALUE,?,?),btype(INTEGER,?,?)*atype(FIELD,?,?));Type(mod_buffer) == Cst(No_type,btype(INTEGER,?,?)*atype(FIELD,?,?)*atype(VALUE,?,?));Type(not_in_buffer) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(size_file) == Cst(btype(INTEGER,?,?),No_type);Type(load_buffer) == Cst(No_type,btype(INTEGER,?,?));Type(create_record) == Cst(btype(INTEGER,?,?),atype(VALUE,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(FILE_BUFFER_1)) == (? | ? | ? | ? | load_buffer | ? | imported(Machine(FILE_ACCESS)) | max_rec,FIELD,VALUE | FILE_BUFFER_1);
  List_Of_HiddenCst_Ids(Implementation(FILE_BUFFER_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(FILE_BUFFER_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(FILE_BUFFER_1)) == (? | updated,buffer,bfile);
  List_Of_Ids_SeenBNU(Implementation(FILE_BUFFER_1)) == (?: ?);
  List_Of_Ids(Machine(FILE_ACCESS)) == (? | ? | ? | ? | get_record,put_buffer,create_record,not_in_buffer,mod_buffer,size_file,val_buffer | ? | ? | max_rec,FIELD,VALUE | FILE_ACCESS);
  List_Of_HiddenCst_Ids(Machine(FILE_ACCESS)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(FILE_ACCESS)) == (?);
  List_Of_VisibleVar_Ids(Machine(FILE_ACCESS)) == (updated,buffer,bfile | ?);
  List_Of_Ids_SeenBNU(Machine(FILE_ACCESS)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(FILE_BUFFER_1)) == (Type(VALUE) == Prm(SetOf(atype(VALUE,?,?)));Type(FIELD) == Prm(SetOf(atype(FIELD,?,?)));Type(max_rec) == Prm(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(FILE_BUFFER_1))==(?)
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
  TypingPredicate(Implementation(FILE_BUFFER_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(FILE_BUFFER_1),Machine(FILE_ACCESS))==(?);
  ImportedVisVariablesList(Implementation(FILE_BUFFER_1),Machine(FILE_ACCESS))==(updated,buffer,bfile)
END
&
THEORY ListLocalOpInvariantX END
)
