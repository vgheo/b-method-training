Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(PARTIAL_OBJECT))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(PARTIAL_OBJECT))==(Machine(PARTIAL_OBJECT));
  Level(Machine(PARTIAL_OBJECT))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(PARTIAL_OBJECT)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(PARTIAL_OBJECT))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(PARTIAL_OBJECT))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(PARTIAL_OBJECT))==(?);
  List_Includes(Machine(PARTIAL_OBJECT))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(PARTIAL_OBJECT))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(PARTIAL_OBJECT))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(PARTIAL_OBJECT))==(?);
  Context_List_Variables(Machine(PARTIAL_OBJECT))==(?);
  Abstract_List_Variables(Machine(PARTIAL_OBJECT))==(?);
  Local_List_Variables(Machine(PARTIAL_OBJECT))==(partial_field,partial_object);
  List_Variables(Machine(PARTIAL_OBJECT))==(partial_field,partial_object);
  External_List_Variables(Machine(PARTIAL_OBJECT))==(partial_field,partial_object)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(PARTIAL_OBJECT))==(?);
  Abstract_List_VisibleVariables(Machine(PARTIAL_OBJECT))==(?);
  External_List_VisibleVariables(Machine(PARTIAL_OBJECT))==(?);
  Expanded_List_VisibleVariables(Machine(PARTIAL_OBJECT))==(?);
  List_VisibleVariables(Machine(PARTIAL_OBJECT))==(?);
  Internal_List_VisibleVariables(Machine(PARTIAL_OBJECT))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(PARTIAL_OBJECT))==(btrue);
  Gluing_List_Invariant(Machine(PARTIAL_OBJECT))==(btrue);
  Expanded_List_Invariant(Machine(PARTIAL_OBJECT))==(btrue);
  Abstract_List_Invariant(Machine(PARTIAL_OBJECT))==(btrue);
  Context_List_Invariant(Machine(PARTIAL_OBJECT))==(btrue);
  List_Invariant(Machine(PARTIAL_OBJECT))==(partial_object: 0..max_obj & partial_field: 1..max_field --> (1..partial_object +-> min_val..max_val))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(PARTIAL_OBJECT))==(btrue);
  Abstract_List_Assertions(Machine(PARTIAL_OBJECT))==(btrue);
  Context_List_Assertions(Machine(PARTIAL_OBJECT))==(btrue);
  List_Assertions(Machine(PARTIAL_OBJECT))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(PARTIAL_OBJECT))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(PARTIAL_OBJECT))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(PARTIAL_OBJECT))==(partial_object,partial_field:=0,{});
  Context_List_Initialisation(Machine(PARTIAL_OBJECT))==(skip);
  List_Initialisation(Machine(PARTIAL_OBJECT))==(partial_object:=0 || partial_field:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(PARTIAL_OBJECT))==(max_obj,max_field,min_val,max_val)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(PARTIAL_OBJECT))==(btrue);
  List_Constraints(Machine(PARTIAL_OBJECT))==(max_obj: NAT1 & max_field: NAT1 & min_val: NAT & max_val: NAT & max_val<MAXINT)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(PARTIAL_OBJECT))==(create_partial_object,mod_field,rem_field,def_field,val_field,nbr_object);
  List_Operations(Machine(PARTIAL_OBJECT))==(create_partial_object,mod_field,rem_field,def_field,val_field,nbr_object)
END
&
THEORY ListInputX IS
  List_Input(Machine(PARTIAL_OBJECT),create_partial_object)==(?);
  List_Input(Machine(PARTIAL_OBJECT),mod_field)==(ii,oo,vv);
  List_Input(Machine(PARTIAL_OBJECT),rem_field)==(ii,oo);
  List_Input(Machine(PARTIAL_OBJECT),def_field)==(ii,oo);
  List_Input(Machine(PARTIAL_OBJECT),val_field)==(ii,oo);
  List_Input(Machine(PARTIAL_OBJECT),nbr_object)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(PARTIAL_OBJECT),create_partial_object)==(oo);
  List_Output(Machine(PARTIAL_OBJECT),mod_field)==(?);
  List_Output(Machine(PARTIAL_OBJECT),rem_field)==(?);
  List_Output(Machine(PARTIAL_OBJECT),def_field)==(vv);
  List_Output(Machine(PARTIAL_OBJECT),val_field)==(vv);
  List_Output(Machine(PARTIAL_OBJECT),nbr_object)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(PARTIAL_OBJECT),create_partial_object)==(oo <-- create_partial_object);
  List_Header(Machine(PARTIAL_OBJECT),mod_field)==(mod_field(ii,oo,vv));
  List_Header(Machine(PARTIAL_OBJECT),rem_field)==(rem_field(ii,oo));
  List_Header(Machine(PARTIAL_OBJECT),def_field)==(vv <-- def_field(ii,oo));
  List_Header(Machine(PARTIAL_OBJECT),val_field)==(vv <-- val_field(ii,oo));
  List_Header(Machine(PARTIAL_OBJECT),nbr_object)==(vv <-- nbr_object)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(PARTIAL_OBJECT),create_partial_object)==(partial_object/=max_obj);
  List_Precondition(Machine(PARTIAL_OBJECT),mod_field)==(ii: 1..max_field & oo: 1..partial_object & vv: min_val..max_val);
  List_Precondition(Machine(PARTIAL_OBJECT),rem_field)==(ii: 1..max_field & oo: 1..partial_object);
  List_Precondition(Machine(PARTIAL_OBJECT),def_field)==(ii: 1..max_field & oo: 1..partial_object);
  List_Precondition(Machine(PARTIAL_OBJECT),val_field)==(ii: 1..max_field & oo: dom(partial_field(ii)));
  List_Precondition(Machine(PARTIAL_OBJECT),nbr_object)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(PARTIAL_OBJECT),nbr_object)==(btrue | vv:=partial_object);
  Expanded_List_Substitution(Machine(PARTIAL_OBJECT),val_field)==(ii: 1..max_field & oo: dom(partial_field(ii)) | vv:=partial_field(ii)(oo));
  Expanded_List_Substitution(Machine(PARTIAL_OBJECT),def_field)==(ii: 1..max_field & oo: 1..partial_object | vv:=bool(oo: dom(partial_field(ii))));
  Expanded_List_Substitution(Machine(PARTIAL_OBJECT),rem_field)==(ii: 1..max_field & oo: 1..partial_object | partial_field:=partial_field<+{ii|->({oo}<<|partial_field(ii))});
  Expanded_List_Substitution(Machine(PARTIAL_OBJECT),mod_field)==(ii: 1..max_field & oo: 1..partial_object & vv: min_val..max_val | partial_field:=partial_field<+{ii|->(partial_field(ii)<+{oo|->vv})});
  Expanded_List_Substitution(Machine(PARTIAL_OBJECT),create_partial_object)==(partial_object/=max_obj | partial_object,oo:=partial_object+1,partial_object+1);
  List_Substitution(Machine(PARTIAL_OBJECT),create_partial_object)==(partial_object:=partial_object+1 || oo:=partial_object+1);
  List_Substitution(Machine(PARTIAL_OBJECT),mod_field)==(partial_field(ii)(oo):=vv);
  List_Substitution(Machine(PARTIAL_OBJECT),rem_field)==(partial_field(ii):={oo}<<|partial_field(ii));
  List_Substitution(Machine(PARTIAL_OBJECT),def_field)==(vv:=bool(oo: dom(partial_field(ii))));
  List_Substitution(Machine(PARTIAL_OBJECT),val_field)==(vv:=partial_field(ii)(oo));
  List_Substitution(Machine(PARTIAL_OBJECT),nbr_object)==(vv:=partial_object)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(PARTIAL_OBJECT))==(?);
  Inherited_List_Constants(Machine(PARTIAL_OBJECT))==(?);
  List_Constants(Machine(PARTIAL_OBJECT))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(PARTIAL_OBJECT))==(?);
  Context_List_Defered(Machine(PARTIAL_OBJECT))==(?);
  Context_List_Sets(Machine(PARTIAL_OBJECT))==(?);
  List_Valuable_Sets(Machine(PARTIAL_OBJECT))==(?);
  Inherited_List_Enumerated(Machine(PARTIAL_OBJECT))==(?);
  Inherited_List_Defered(Machine(PARTIAL_OBJECT))==(?);
  Inherited_List_Sets(Machine(PARTIAL_OBJECT))==(?);
  List_Enumerated(Machine(PARTIAL_OBJECT))==(?);
  List_Defered(Machine(PARTIAL_OBJECT))==(?);
  List_Sets(Machine(PARTIAL_OBJECT))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(PARTIAL_OBJECT))==(?);
  Expanded_List_HiddenConstants(Machine(PARTIAL_OBJECT))==(?);
  List_HiddenConstants(Machine(PARTIAL_OBJECT))==(?);
  External_List_HiddenConstants(Machine(PARTIAL_OBJECT))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(PARTIAL_OBJECT))==(btrue);
  Context_List_Properties(Machine(PARTIAL_OBJECT))==(btrue);
  Inherited_List_Properties(Machine(PARTIAL_OBJECT))==(btrue);
  List_Properties(Machine(PARTIAL_OBJECT))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(PARTIAL_OBJECT),create_partial_object)==(?);
  List_ANY_Var(Machine(PARTIAL_OBJECT),mod_field)==(?);
  List_ANY_Var(Machine(PARTIAL_OBJECT),rem_field)==(?);
  List_ANY_Var(Machine(PARTIAL_OBJECT),def_field)==(?);
  List_ANY_Var(Machine(PARTIAL_OBJECT),val_field)==(?);
  List_ANY_Var(Machine(PARTIAL_OBJECT),nbr_object)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(PARTIAL_OBJECT)) == (? | ? | partial_field,partial_object | ? | create_partial_object,mod_field,rem_field,def_field,val_field,nbr_object | ? | ? | max_obj,max_field,min_val,max_val | PARTIAL_OBJECT);
  List_Of_HiddenCst_Ids(Machine(PARTIAL_OBJECT)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PARTIAL_OBJECT)) == (?);
  List_Of_VisibleVar_Ids(Machine(PARTIAL_OBJECT)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(PARTIAL_OBJECT)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(PARTIAL_OBJECT)) == (Type(max_val) == Prm(btype(INTEGER,?,?));Type(min_val) == Prm(btype(INTEGER,?,?));Type(max_field) == Prm(btype(INTEGER,?,?));Type(max_obj) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(PARTIAL_OBJECT)) == (Type(partial_field) == Mvl(SetOf(btype(INTEGER,1,max_field)*SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(partial_object) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(PARTIAL_OBJECT)) == (Type(nbr_object) == Cst(btype(INTEGER,?,?),No_type);Type(val_field) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(def_field) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(rem_field) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(mod_field) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(create_partial_object) == Cst(btype(INTEGER,?,?),No_type));
  Observers(Machine(PARTIAL_OBJECT)) == (Type(nbr_object) == Cst(btype(INTEGER,?,?),No_type);Type(val_field) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(def_field) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == VALIDATION_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
