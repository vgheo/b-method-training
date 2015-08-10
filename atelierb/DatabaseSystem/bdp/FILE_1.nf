Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(FILE_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(FILE_1))==(Machine(FILE));
  Level(Implementation(FILE_1))==(1);
  Upper_Level(Implementation(FILE_1))==(Machine(FILE))
END
&
THEORY LoadedStructureX IS
  Implementation(FILE_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(FILE_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(FILE_1))==(FILE_BUFFER);
  Inherited_List_Includes(Implementation(FILE_1))==(FILE_BUFFER)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(FILE_1))==(create_record,size_file)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(FILE_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(FILE_1))==(?);
  Context_List_Variables(Implementation(FILE_1))==(?);
  Abstract_List_Variables(Implementation(FILE_1))==(file);
  Local_List_Variables(Implementation(FILE_1))==(?);
  List_Variables(Implementation(FILE_1))==(bfile,buffer);
  External_List_Variables(Implementation(FILE_1))==(bfile,buffer)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(FILE_1))==(?);
  Abstract_List_VisibleVariables(Implementation(FILE_1))==(?);
  External_List_VisibleVariables(Implementation(FILE_1))==(?);
  Expanded_List_VisibleVariables(Implementation(FILE_1))==(?);
  List_VisibleVariables(Implementation(FILE_1))==(?);
  Internal_List_VisibleVariables(Implementation(FILE_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(FILE_1))==(btrue);
  Abstract_List_Invariant(Implementation(FILE_1))==(file: seq(FIELD --> VALUE) & size(file)<=max_rec);
  Expanded_List_Invariant(Implementation(FILE_1))==(bfile: seq(FIELD --> VALUE) & buffer: dom(bfile) +-> (FIELD --> VALUE));
  Context_List_Invariant(Implementation(FILE_1))==(btrue);
  List_Invariant(Implementation(FILE_1))==(file = bfile<+buffer)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(FILE_1))==(btrue);
  Expanded_List_Assertions(Implementation(FILE_1))==(btrue);
  Context_List_Assertions(Implementation(FILE_1))==(btrue);
  List_Assertions(Implementation(FILE_1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(FILE_1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(FILE_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(FILE_1))==(bfile,buffer:=<>,{});
  Context_List_Initialisation(Implementation(FILE_1))==(skip);
  List_Initialisation(Implementation(FILE_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(FILE_1))==(max_rec,FIELD,VALUE)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(FILE_1),Machine(FILE_BUFFER))==(btrue);
  List_Instanciated_Parameters(Implementation(FILE_1),Machine(FILE_BUFFER))==(max_rec,FIELD,VALUE)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(FILE_1),Machine(FILE_BUFFER))==(max_rec: NAT1 & FIELD: FIN(INTEGER) & not(FIELD = {}) & VALUE: FIN(INTEGER) & not(VALUE = {}));
  List_Constraints(Implementation(FILE_1))==(max_rec: NAT1 & FIELD: FIN(INTEGER) & not(FIELD = {}) & VALUE: FIN(INTEGER) & not(VALUE = {}));
  List_Context_Constraints(Implementation(FILE_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(FILE_1))==(mod_file,val_file,create_record,size_file);
  List_Operations(Implementation(FILE_1))==(mod_file,val_file,create_record,size_file)
END
&
THEORY ListInputX IS
  List_Input(Implementation(FILE_1),size_file)==(?);
  List_Input(Implementation(FILE_1),create_record)==(vv);
  List_Input(Implementation(FILE_1),mod_file)==(oo,ii,vv);
  List_Input(Implementation(FILE_1),val_file)==(oo,ii)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(FILE_1),size_file)==(vv);
  List_Output(Implementation(FILE_1),create_record)==(oo);
  List_Output(Implementation(FILE_1),mod_file)==(?);
  List_Output(Implementation(FILE_1),val_file)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(FILE_1),size_file)==(vv <-- size_file);
  List_Header(Implementation(FILE_1),create_record)==(oo <-- create_record(vv));
  List_Header(Implementation(FILE_1),mod_file)==(mod_file(oo,ii,vv));
  List_Header(Implementation(FILE_1),val_file)==(vv <-- val_file(oo,ii))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(FILE_1),size_file)==(btrue);
  List_Precondition(Implementation(FILE_1),size_file)==(btrue);
  Own_Precondition(Implementation(FILE_1),create_record)==(vv: VALUE & size(bfile)/=max_rec);
  List_Precondition(Implementation(FILE_1),create_record)==(vv: VALUE & size(bfile)/=max_rec);
  Own_Precondition(Implementation(FILE_1),mod_file)==(btrue);
  List_Precondition(Implementation(FILE_1),mod_file)==(oo: dom(file) & ii: FIELD & vv: VALUE);
  Own_Precondition(Implementation(FILE_1),val_file)==(btrue);
  List_Precondition(Implementation(FILE_1),val_file)==(oo: dom(file) & ii: FIELD)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(FILE_1),val_file)==(oo: dom(file) & ii: FIELD | @test.((oo: 1..size(bfile) | test:=bool(oo/:dom(buffer)));(test = TRUE ==> (oo: dom(bfile) & oo/:dom(buffer) | bfile,buffer:=bfile<+buffer,{oo|->bfile(oo)}) [] not(test = TRUE) ==> skip);(oo: dom(buffer) & ii: FIELD | vv:=buffer(oo)(ii))));
  Expanded_List_Substitution(Implementation(FILE_1),mod_file)==(oo: dom(file) & ii: FIELD & vv: VALUE | @test.((oo: 1..size(bfile) | test:=bool(oo/:dom(buffer)));(test = TRUE ==> (oo: dom(bfile) & oo/:dom(buffer) | bfile,buffer:=bfile<+buffer,{oo|->bfile(oo)}) [] not(test = TRUE) ==> skip);(oo: dom(buffer) & ii: FIELD & vv: VALUE | buffer:=buffer<+{oo|->(buffer(oo)<+{ii|->vv})})));
  List_Substitution(Implementation(FILE_1),size_file)==(vv:=size(bfile));
  Expanded_List_Substitution(Implementation(FILE_1),size_file)==(btrue | vv:=size(bfile));
  List_Substitution(Implementation(FILE_1),create_record)==(bfile:=bfile<-FIELD*{vv} || oo:=size(bfile)+1);
  Expanded_List_Substitution(Implementation(FILE_1),create_record)==(vv: VALUE & size(bfile)/=max_rec | bfile,oo:=bfile<-FIELD*{vv},size(bfile)+1);
  List_Substitution(Implementation(FILE_1),mod_file)==(VAR test IN test <-- not_in_buffer(oo);IF test = TRUE THEN load_buffer(oo) END;mod_buffer(oo,ii,vv) END);
  List_Substitution(Implementation(FILE_1),val_file)==(VAR test IN test <-- not_in_buffer(oo);IF test = TRUE THEN load_buffer(oo) END;vv <-- val_buffer(oo,ii) END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(FILE_1))==(?);
  Inherited_List_Constants(Implementation(FILE_1))==(?);
  List_Constants(Implementation(FILE_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(FILE_1))==(?);
  Context_List_Defered(Implementation(FILE_1))==(?);
  Context_List_Sets(Implementation(FILE_1))==(?);
  List_Own_Enumerated(Implementation(FILE_1))==(?);
  List_Valuable_Sets(Implementation(FILE_1))==(?);
  Inherited_List_Enumerated(Implementation(FILE_1))==(?);
  Inherited_List_Defered(Implementation(FILE_1))==(?);
  Inherited_List_Sets(Implementation(FILE_1))==(?);
  List_Enumerated(Implementation(FILE_1))==(?);
  List_Defered(Implementation(FILE_1))==(?);
  List_Sets(Implementation(FILE_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(FILE_1))==(?);
  Expanded_List_HiddenConstants(Implementation(FILE_1))==(?);
  List_HiddenConstants(Implementation(FILE_1))==(?);
  External_List_HiddenConstants(Implementation(FILE_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(FILE_1))==(btrue);
  Context_List_Properties(Implementation(FILE_1))==(btrue);
  Inherited_List_Properties(Implementation(FILE_1))==(btrue);
  List_Properties(Implementation(FILE_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(FILE_1))==(aa: aa);
  List_Values(Implementation(FILE_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(FILE_1),Machine(FILE_BUFFER))==(create_record,load_buffer,size_file,not_in_buffer,mod_buffer,val_buffer)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(FILE_1))==(Type(size_file) == Cst(btype(INTEGER,?,?),No_type);Type(create_record) == Cst(btype(INTEGER,?,?),atype(VALUE,?,?));Type(mod_file) == Cst(No_type,btype(INTEGER,?,?)*atype(FIELD,?,?)*atype(VALUE,?,?));Type(val_file) == Cst(atype(VALUE,?,?),btype(INTEGER,?,?)*atype(FIELD,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(FILE_1)) == (? | ? | ? | bfile,buffer | mod_file,val_file | ? | imported(Machine(FILE_BUFFER)) | max_rec,FIELD,VALUE | FILE_1);
  List_Of_HiddenCst_Ids(Implementation(FILE_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(FILE_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(FILE_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(FILE_1)) == (?: ?);
  List_Of_Ids(Machine(FILE_BUFFER)) == (? | ? | bfile,buffer | ? | create_record,load_buffer,size_file,not_in_buffer,mod_buffer,val_buffer | ? | ? | max_rec,FIELD,VALUE | FILE_BUFFER);
  List_Of_HiddenCst_Ids(Machine(FILE_BUFFER)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(FILE_BUFFER)) == (?);
  List_Of_VisibleVar_Ids(Machine(FILE_BUFFER)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(FILE_BUFFER)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(FILE_1)) == (Type(VALUE) == Prm(SetOf(atype(VALUE,?,?)));Type(FIELD) == Prm(SetOf(atype(FIELD,?,?)));Type(max_rec) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(FILE_1),mod_file, 1) == (Type(test) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(FILE_1),val_file, 1) == (Type(test) == Lvl(btype(BOOL,?,?)))
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
  List_Local_Operations(Implementation(FILE_1))==(?)
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
  TypingPredicate(Implementation(FILE_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(FILE_1),Machine(FILE_BUFFER))==(bfile,buffer);
  ImportedVisVariablesList(Implementation(FILE_1),Machine(FILE_BUFFER))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
