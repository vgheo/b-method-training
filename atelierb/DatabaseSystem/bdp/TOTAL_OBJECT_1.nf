Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(TOTAL_OBJECT_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(TOTAL_OBJECT_1))==(Machine(TOTAL_OBJECT));
  Level(Implementation(TOTAL_OBJECT_1))==(1);
  Upper_Level(Implementation(TOTAL_OBJECT_1))==(Machine(TOTAL_OBJECT))
END
&
THEORY LoadedStructureX IS
  Implementation(TOTAL_OBJECT_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(TOTAL_OBJECT_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(TOTAL_OBJECT_1))==(FILE);
  Inherited_List_Includes(Implementation(TOTAL_OBJECT_1))==(FILE)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(TOTAL_OBJECT_1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(TOTAL_OBJECT_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(TOTAL_OBJECT_1))==(?);
  Context_List_Variables(Implementation(TOTAL_OBJECT_1))==(?);
  Abstract_List_Variables(Implementation(TOTAL_OBJECT_1))==(total_field,total_object);
  Local_List_Variables(Implementation(TOTAL_OBJECT_1))==(?);
  List_Variables(Implementation(TOTAL_OBJECT_1))==(file);
  External_List_Variables(Implementation(TOTAL_OBJECT_1))==(file)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(TOTAL_OBJECT_1))==(?);
  Abstract_List_VisibleVariables(Implementation(TOTAL_OBJECT_1))==(?);
  External_List_VisibleVariables(Implementation(TOTAL_OBJECT_1))==(?);
  Expanded_List_VisibleVariables(Implementation(TOTAL_OBJECT_1))==(?);
  List_VisibleVariables(Implementation(TOTAL_OBJECT_1))==(?);
  Internal_List_VisibleVariables(Implementation(TOTAL_OBJECT_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(TOTAL_OBJECT_1))==(btrue);
  Abstract_List_Invariant(Implementation(TOTAL_OBJECT_1))==(total_object: 0..max_obj & total_field: FIELD --> (1..total_object --> VALUE));
  Expanded_List_Invariant(Implementation(TOTAL_OBJECT_1))==(file: seq(FIELD --> VALUE) & size(file)<=max_obj);
  Context_List_Invariant(Implementation(TOTAL_OBJECT_1))==(btrue);
  List_Invariant(Implementation(TOTAL_OBJECT_1))==(file = %oo.(oo: 1..total_object | %ii.(ii: FIELD | total_field(ii)(oo))))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(TOTAL_OBJECT_1))==(btrue);
  Expanded_List_Assertions(Implementation(TOTAL_OBJECT_1))==(btrue);
  Context_List_Assertions(Implementation(TOTAL_OBJECT_1))==(btrue);
  List_Assertions(Implementation(TOTAL_OBJECT_1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(TOTAL_OBJECT_1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(TOTAL_OBJECT_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(TOTAL_OBJECT_1))==(file:=<>);
  Context_List_Initialisation(Implementation(TOTAL_OBJECT_1))==(skip);
  List_Initialisation(Implementation(TOTAL_OBJECT_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(TOTAL_OBJECT_1))==(max_obj,FIELD,VALUE)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(TOTAL_OBJECT_1),Machine(FILE))==(btrue);
  List_Instanciated_Parameters(Implementation(TOTAL_OBJECT_1),Machine(FILE))==(max_obj,FIELD,VALUE)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(TOTAL_OBJECT_1),Machine(FILE))==(max_obj: NAT1 & FIELD: FIN(INTEGER) & not(FIELD = {}) & VALUE: FIN(INTEGER) & not(VALUE = {}));
  List_Constraints(Implementation(TOTAL_OBJECT_1))==(max_obj: NAT1 & FIELD: FIN(INTEGER) & not(FIELD = {}) & VALUE: FIN(INTEGER) & not(VALUE = {}));
  List_Context_Constraints(Implementation(TOTAL_OBJECT_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(TOTAL_OBJECT_1))==(create_total_object,mod_field,val_field,nbr_object);
  List_Operations(Implementation(TOTAL_OBJECT_1))==(create_total_object,mod_field,val_field,nbr_object)
END
&
THEORY ListInputX IS
  List_Input(Implementation(TOTAL_OBJECT_1),create_total_object)==(vv);
  List_Input(Implementation(TOTAL_OBJECT_1),mod_field)==(ii,oo,vv);
  List_Input(Implementation(TOTAL_OBJECT_1),val_field)==(ii,oo);
  List_Input(Implementation(TOTAL_OBJECT_1),nbr_object)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(TOTAL_OBJECT_1),create_total_object)==(oo);
  List_Output(Implementation(TOTAL_OBJECT_1),mod_field)==(?);
  List_Output(Implementation(TOTAL_OBJECT_1),val_field)==(vv);
  List_Output(Implementation(TOTAL_OBJECT_1),nbr_object)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(TOTAL_OBJECT_1),create_total_object)==(oo <-- create_total_object(vv));
  List_Header(Implementation(TOTAL_OBJECT_1),mod_field)==(mod_field(ii,oo,vv));
  List_Header(Implementation(TOTAL_OBJECT_1),val_field)==(vv <-- val_field(ii,oo));
  List_Header(Implementation(TOTAL_OBJECT_1),nbr_object)==(vv <-- nbr_object)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(TOTAL_OBJECT_1),create_total_object)==(btrue);
  List_Precondition(Implementation(TOTAL_OBJECT_1),create_total_object)==(vv: VALUE & total_object/=max_obj);
  Own_Precondition(Implementation(TOTAL_OBJECT_1),mod_field)==(btrue);
  List_Precondition(Implementation(TOTAL_OBJECT_1),mod_field)==(ii: FIELD & oo: 1..total_object & vv: VALUE);
  Own_Precondition(Implementation(TOTAL_OBJECT_1),val_field)==(btrue);
  List_Precondition(Implementation(TOTAL_OBJECT_1),val_field)==(ii: FIELD & oo: 1..total_object);
  Own_Precondition(Implementation(TOTAL_OBJECT_1),nbr_object)==(btrue);
  List_Precondition(Implementation(TOTAL_OBJECT_1),nbr_object)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(TOTAL_OBJECT_1),nbr_object)==(btrue | vv:=size(file));
  Expanded_List_Substitution(Implementation(TOTAL_OBJECT_1),val_field)==(ii: FIELD & oo: 1..total_object & oo: dom(file) & ii: FIELD | vv:=file(oo)(ii));
  Expanded_List_Substitution(Implementation(TOTAL_OBJECT_1),mod_field)==(ii: FIELD & oo: 1..total_object & vv: VALUE & oo: dom(file) & ii: FIELD & vv: VALUE | file:=file<+{oo|->(file(oo)<+{ii|->vv})});
  Expanded_List_Substitution(Implementation(TOTAL_OBJECT_1),create_total_object)==(vv: VALUE & total_object/=max_obj & vv: VALUE & size(file)<max_obj | file,oo:=file<-FIELD*{vv},size(file)+1);
  List_Substitution(Implementation(TOTAL_OBJECT_1),create_total_object)==(oo <-- create_record(vv));
  List_Substitution(Implementation(TOTAL_OBJECT_1),mod_field)==(mod_file(oo,ii,vv));
  List_Substitution(Implementation(TOTAL_OBJECT_1),val_field)==(vv <-- val_file(oo,ii));
  List_Substitution(Implementation(TOTAL_OBJECT_1),nbr_object)==(vv <-- size_file)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(TOTAL_OBJECT_1))==(?);
  Inherited_List_Constants(Implementation(TOTAL_OBJECT_1))==(?);
  List_Constants(Implementation(TOTAL_OBJECT_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(TOTAL_OBJECT_1))==(?);
  Context_List_Defered(Implementation(TOTAL_OBJECT_1))==(?);
  Context_List_Sets(Implementation(TOTAL_OBJECT_1))==(?);
  List_Own_Enumerated(Implementation(TOTAL_OBJECT_1))==(?);
  List_Valuable_Sets(Implementation(TOTAL_OBJECT_1))==(?);
  Inherited_List_Enumerated(Implementation(TOTAL_OBJECT_1))==(?);
  Inherited_List_Defered(Implementation(TOTAL_OBJECT_1))==(?);
  Inherited_List_Sets(Implementation(TOTAL_OBJECT_1))==(?);
  List_Enumerated(Implementation(TOTAL_OBJECT_1))==(?);
  List_Defered(Implementation(TOTAL_OBJECT_1))==(?);
  List_Sets(Implementation(TOTAL_OBJECT_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(TOTAL_OBJECT_1))==(?);
  Expanded_List_HiddenConstants(Implementation(TOTAL_OBJECT_1))==(?);
  List_HiddenConstants(Implementation(TOTAL_OBJECT_1))==(?);
  External_List_HiddenConstants(Implementation(TOTAL_OBJECT_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(TOTAL_OBJECT_1))==(btrue);
  Context_List_Properties(Implementation(TOTAL_OBJECT_1))==(btrue);
  Inherited_List_Properties(Implementation(TOTAL_OBJECT_1))==(btrue);
  List_Properties(Implementation(TOTAL_OBJECT_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(TOTAL_OBJECT_1))==(aa: aa);
  List_Values(Implementation(TOTAL_OBJECT_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(TOTAL_OBJECT_1),Machine(FILE))==(val_file,mod_file,create_record,size_file)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(TOTAL_OBJECT_1))==(Type(nbr_object) == Cst(btype(INTEGER,?,?),No_type);Type(val_field) == Cst(atype(VALUE,?,?),atype(FIELD,?,?)*btype(INTEGER,?,?));Type(mod_field) == Cst(No_type,atype(FIELD,?,?)*btype(INTEGER,?,?)*atype(VALUE,?,?));Type(create_total_object) == Cst(btype(INTEGER,?,?),atype(VALUE,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(TOTAL_OBJECT_1)) == (? | ? | ? | file | create_total_object,mod_field,val_field,nbr_object | ? | imported(Machine(FILE)) | max_obj,FIELD,VALUE | TOTAL_OBJECT_1);
  List_Of_HiddenCst_Ids(Implementation(TOTAL_OBJECT_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(TOTAL_OBJECT_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(TOTAL_OBJECT_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(TOTAL_OBJECT_1)) == (?: ?);
  List_Of_Ids(Machine(FILE)) == (? | ? | file | ? | val_file,mod_file,create_record,size_file | ? | ? | max_rec,FIELD,VALUE | FILE);
  List_Of_HiddenCst_Ids(Machine(FILE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(FILE)) == (?);
  List_Of_VisibleVar_Ids(Machine(FILE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(FILE)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(TOTAL_OBJECT_1)) == (Type(VALUE) == Prm(SetOf(atype(VALUE,?,?)));Type(FIELD) == Prm(SetOf(atype(FIELD,?,?)));Type(max_obj) == Prm(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(TOTAL_OBJECT_1))==(?)
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
  TypingPredicate(Implementation(TOTAL_OBJECT_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(TOTAL_OBJECT_1),Machine(FILE))==(file);
  ImportedVisVariablesList(Implementation(TOTAL_OBJECT_1),Machine(FILE))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
