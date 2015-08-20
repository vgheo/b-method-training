Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(PARTIAL_OBJECT_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(PARTIAL_OBJECT_1))==(Machine(PARTIAL_OBJECT));
  Level(Implementation(PARTIAL_OBJECT_1))==(1);
  Upper_Level(Implementation(PARTIAL_OBJECT_1))==(Machine(PARTIAL_OBJECT))
END
&
THEORY LoadedStructureX IS
  Implementation(PARTIAL_OBJECT_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(PARTIAL_OBJECT_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(PARTIAL_OBJECT_1))==(TOTAL_OBJECT);
  Inherited_List_Includes(Implementation(PARTIAL_OBJECT_1))==(TOTAL_OBJECT)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(PARTIAL_OBJECT_1))==(mod_field,val_field,nbr_object)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(PARTIAL_OBJECT_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(PARTIAL_OBJECT_1))==(?);
  Context_List_Variables(Implementation(PARTIAL_OBJECT_1))==(?);
  Abstract_List_Variables(Implementation(PARTIAL_OBJECT_1))==(partial_field,partial_object);
  Local_List_Variables(Implementation(PARTIAL_OBJECT_1))==(?);
  List_Variables(Implementation(PARTIAL_OBJECT_1))==(total_field,total_object);
  External_List_Variables(Implementation(PARTIAL_OBJECT_1))==(total_field,total_object)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(PARTIAL_OBJECT_1))==(?);
  Abstract_List_VisibleVariables(Implementation(PARTIAL_OBJECT_1))==(?);
  External_List_VisibleVariables(Implementation(PARTIAL_OBJECT_1))==(?);
  Expanded_List_VisibleVariables(Implementation(PARTIAL_OBJECT_1))==(?);
  List_VisibleVariables(Implementation(PARTIAL_OBJECT_1))==(?);
  Internal_List_VisibleVariables(Implementation(PARTIAL_OBJECT_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(PARTIAL_OBJECT_1))==(btrue);
  Abstract_List_Invariant(Implementation(PARTIAL_OBJECT_1))==(partial_object: 0..max_obj & partial_field: 1..max_field --> (1..partial_object +-> min_val..max_val));
  Expanded_List_Invariant(Implementation(PARTIAL_OBJECT_1))==(total_object: 0..max_obj & total_field: 1..max_field --> (1..total_object --> min_val..MAXINT));
  Context_List_Invariant(Implementation(PARTIAL_OBJECT_1))==(btrue);
  List_Invariant(Implementation(PARTIAL_OBJECT_1))==(partial_object = total_object & !ii.(ii: 1..max_field => partial_field(ii) = total_field(ii)|>>{MAXINT}))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(PARTIAL_OBJECT_1))==(btrue);
  Expanded_List_Assertions(Implementation(PARTIAL_OBJECT_1))==(btrue);
  Context_List_Assertions(Implementation(PARTIAL_OBJECT_1))==(btrue);
  List_Assertions(Implementation(PARTIAL_OBJECT_1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(PARTIAL_OBJECT_1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(PARTIAL_OBJECT_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(PARTIAL_OBJECT_1))==(total_object,total_field:=0,(1..max_field)*{{}});
  Context_List_Initialisation(Implementation(PARTIAL_OBJECT_1))==(skip);
  List_Initialisation(Implementation(PARTIAL_OBJECT_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(PARTIAL_OBJECT_1))==(max_obj,max_field,min_val,max_val)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(PARTIAL_OBJECT_1),Machine(TOTAL_OBJECT))==(btrue);
  List_Instanciated_Parameters(Implementation(PARTIAL_OBJECT_1),Machine(TOTAL_OBJECT))==(max_obj,1..max_field,min_val..MAXINT)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(PARTIAL_OBJECT_1),Machine(TOTAL_OBJECT))==(max_obj: NAT1 & 1..max_field: FIN(INTEGER) & not(1..max_field = {}) & min_val..MAXINT: FIN(INTEGER) & not(min_val..MAXINT = {}));
  List_Constraints(Implementation(PARTIAL_OBJECT_1))==(max_obj: NAT1 & max_field: NAT1 & min_val: NAT & max_val: NAT & max_val<MAXINT);
  List_Context_Constraints(Implementation(PARTIAL_OBJECT_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(PARTIAL_OBJECT_1))==(create_partial_object,rem_field,def_field,mod_field,val_field,nbr_object);
  List_Operations(Implementation(PARTIAL_OBJECT_1))==(create_partial_object,rem_field,def_field,mod_field,val_field,nbr_object)
END
&
THEORY ListInputX IS
  List_Input(Implementation(PARTIAL_OBJECT_1),nbr_object)==(?);
  List_Input(Implementation(PARTIAL_OBJECT_1),val_field)==(ii,oo);
  List_Input(Implementation(PARTIAL_OBJECT_1),mod_field)==(ii,oo,vv);
  List_Input(Implementation(PARTIAL_OBJECT_1),create_partial_object)==(?);
  List_Input(Implementation(PARTIAL_OBJECT_1),rem_field)==(ii,oo);
  List_Input(Implementation(PARTIAL_OBJECT_1),def_field)==(ii,oo)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(PARTIAL_OBJECT_1),nbr_object)==(vv);
  List_Output(Implementation(PARTIAL_OBJECT_1),val_field)==(vv);
  List_Output(Implementation(PARTIAL_OBJECT_1),mod_field)==(?);
  List_Output(Implementation(PARTIAL_OBJECT_1),create_partial_object)==(oo);
  List_Output(Implementation(PARTIAL_OBJECT_1),rem_field)==(?);
  List_Output(Implementation(PARTIAL_OBJECT_1),def_field)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(PARTIAL_OBJECT_1),nbr_object)==(vv <-- nbr_object);
  List_Header(Implementation(PARTIAL_OBJECT_1),val_field)==(vv <-- val_field(ii,oo));
  List_Header(Implementation(PARTIAL_OBJECT_1),mod_field)==(mod_field(ii,oo,vv));
  List_Header(Implementation(PARTIAL_OBJECT_1),create_partial_object)==(oo <-- create_partial_object);
  List_Header(Implementation(PARTIAL_OBJECT_1),rem_field)==(rem_field(ii,oo));
  List_Header(Implementation(PARTIAL_OBJECT_1),def_field)==(vv <-- def_field(ii,oo))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(PARTIAL_OBJECT_1),nbr_object)==(btrue);
  List_Precondition(Implementation(PARTIAL_OBJECT_1),nbr_object)==(btrue);
  Own_Precondition(Implementation(PARTIAL_OBJECT_1),val_field)==(ii: 1..max_field & oo: 1..total_object);
  List_Precondition(Implementation(PARTIAL_OBJECT_1),val_field)==(ii: 1..max_field & oo: 1..total_object);
  Own_Precondition(Implementation(PARTIAL_OBJECT_1),mod_field)==(ii: 1..max_field & oo: 1..total_object & vv: min_val..MAXINT);
  List_Precondition(Implementation(PARTIAL_OBJECT_1),mod_field)==(ii: 1..max_field & oo: 1..total_object & vv: min_val..MAXINT);
  Own_Precondition(Implementation(PARTIAL_OBJECT_1),create_partial_object)==(btrue);
  List_Precondition(Implementation(PARTIAL_OBJECT_1),create_partial_object)==(partial_object/=max_obj);
  Own_Precondition(Implementation(PARTIAL_OBJECT_1),rem_field)==(btrue);
  List_Precondition(Implementation(PARTIAL_OBJECT_1),rem_field)==(ii: 1..max_field & oo: 1..partial_object);
  Own_Precondition(Implementation(PARTIAL_OBJECT_1),def_field)==(btrue);
  List_Precondition(Implementation(PARTIAL_OBJECT_1),def_field)==(ii: 1..max_field & oo: 1..partial_object)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(PARTIAL_OBJECT_1),def_field)==(ii: 1..max_field & oo: 1..partial_object | @ww.((ii: 1..max_field & oo: 1..total_object | ww:=total_field(ii)(oo));vv:=bool(ww/=MAXINT)));
  Expanded_List_Substitution(Implementation(PARTIAL_OBJECT_1),rem_field)==(ii: 1..max_field & oo: 1..partial_object & ii: 1..max_field & oo: 1..total_object & MAXINT: min_val..MAXINT | total_field:=total_field<+{ii|->(total_field(ii)<+{oo|->MAXINT})});
  Expanded_List_Substitution(Implementation(PARTIAL_OBJECT_1),create_partial_object)==(partial_object/=max_obj & 2147483647: min_val..MAXINT & total_object/=max_obj | total_object,total_field,oo:=total_object+1,%ii.(ii: 1..max_field | total_field(ii)\/{total_object+1|->2147483647}),total_object+1);
  List_Substitution(Implementation(PARTIAL_OBJECT_1),nbr_object)==(vv:=total_object);
  Expanded_List_Substitution(Implementation(PARTIAL_OBJECT_1),nbr_object)==(btrue | vv:=total_object);
  List_Substitution(Implementation(PARTIAL_OBJECT_1),val_field)==(vv:=total_field(ii)(oo));
  Expanded_List_Substitution(Implementation(PARTIAL_OBJECT_1),val_field)==(ii: 1..max_field & oo: 1..total_object | vv:=total_field(ii)(oo));
  List_Substitution(Implementation(PARTIAL_OBJECT_1),mod_field)==(total_field(ii)(oo):=vv);
  Expanded_List_Substitution(Implementation(PARTIAL_OBJECT_1),mod_field)==(ii: 1..max_field & oo: 1..total_object & vv: min_val..MAXINT | total_field:=total_field<+{ii|->(total_field(ii)<+{oo|->vv})});
  List_Substitution(Implementation(PARTIAL_OBJECT_1),create_partial_object)==(oo <-- create_total_object(2147483647));
  List_Substitution(Implementation(PARTIAL_OBJECT_1),rem_field)==(mod_field(ii,oo,MAXINT));
  List_Substitution(Implementation(PARTIAL_OBJECT_1),def_field)==(VAR ww IN ww <-- val_field(ii,oo);vv:=bool(ww/=MAXINT) END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(PARTIAL_OBJECT_1))==(?);
  Inherited_List_Constants(Implementation(PARTIAL_OBJECT_1))==(?);
  List_Constants(Implementation(PARTIAL_OBJECT_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(PARTIAL_OBJECT_1))==(?);
  Context_List_Defered(Implementation(PARTIAL_OBJECT_1))==(?);
  Context_List_Sets(Implementation(PARTIAL_OBJECT_1))==(?);
  List_Own_Enumerated(Implementation(PARTIAL_OBJECT_1))==(?);
  List_Valuable_Sets(Implementation(PARTIAL_OBJECT_1))==(?);
  Inherited_List_Enumerated(Implementation(PARTIAL_OBJECT_1))==(?);
  Inherited_List_Defered(Implementation(PARTIAL_OBJECT_1))==(?);
  Inherited_List_Sets(Implementation(PARTIAL_OBJECT_1))==(?);
  List_Enumerated(Implementation(PARTIAL_OBJECT_1))==(?);
  List_Defered(Implementation(PARTIAL_OBJECT_1))==(?);
  List_Sets(Implementation(PARTIAL_OBJECT_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(PARTIAL_OBJECT_1))==(?);
  Expanded_List_HiddenConstants(Implementation(PARTIAL_OBJECT_1))==(?);
  List_HiddenConstants(Implementation(PARTIAL_OBJECT_1))==(?);
  External_List_HiddenConstants(Implementation(PARTIAL_OBJECT_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(PARTIAL_OBJECT_1))==(btrue);
  Context_List_Properties(Implementation(PARTIAL_OBJECT_1))==(btrue);
  Inherited_List_Properties(Implementation(PARTIAL_OBJECT_1))==(btrue);
  List_Properties(Implementation(PARTIAL_OBJECT_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(PARTIAL_OBJECT_1))==(aa: aa);
  List_Values(Implementation(PARTIAL_OBJECT_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(PARTIAL_OBJECT_1),Machine(TOTAL_OBJECT))==(create_total_object,mod_field,val_field,nbr_object)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(PARTIAL_OBJECT_1))==(Type(nbr_object) == Cst(btype(INTEGER,?,?),No_type);Type(val_field) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(def_field) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(rem_field) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(mod_field) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(create_partial_object) == Cst(btype(INTEGER,?,?),No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(PARTIAL_OBJECT_1)) == (? | ? | ? | total_field,total_object | create_partial_object,rem_field,def_field | ? | imported(Machine(TOTAL_OBJECT)) | max_obj,max_field,min_val,max_val | PARTIAL_OBJECT_1);
  List_Of_HiddenCst_Ids(Implementation(PARTIAL_OBJECT_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(PARTIAL_OBJECT_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(PARTIAL_OBJECT_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(PARTIAL_OBJECT_1)) == (?: ?);
  List_Of_Ids(Machine(TOTAL_OBJECT)) == (? | ? | total_field,total_object | ? | create_total_object,mod_field,val_field,nbr_object | ? | ? | max_obj,FIELD,VALUE | TOTAL_OBJECT);
  List_Of_HiddenCst_Ids(Machine(TOTAL_OBJECT)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TOTAL_OBJECT)) == (?);
  List_Of_VisibleVar_Ids(Machine(TOTAL_OBJECT)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TOTAL_OBJECT)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(PARTIAL_OBJECT_1)) == (Type(max_val) == Prm(btype(INTEGER,?,?));Type(min_val) == Prm(btype(INTEGER,?,?));Type(max_field) == Prm(btype(INTEGER,?,?));Type(max_obj) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(PARTIAL_OBJECT_1),def_field, 1) == (Type(ww) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(PARTIAL_OBJECT_1))==(?)
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
  TypingPredicate(Implementation(PARTIAL_OBJECT_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(PARTIAL_OBJECT_1),Machine(TOTAL_OBJECT))==(total_field,total_object);
  ImportedVisVariablesList(Implementation(PARTIAL_OBJECT_1),Machine(TOTAL_OBJECT))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
