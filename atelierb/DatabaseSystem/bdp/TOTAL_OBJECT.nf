Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(TOTAL_OBJECT))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(TOTAL_OBJECT))==(Machine(TOTAL_OBJECT));
  Level(Machine(TOTAL_OBJECT))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(TOTAL_OBJECT)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(TOTAL_OBJECT))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(TOTAL_OBJECT))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(TOTAL_OBJECT))==(?);
  List_Includes(Machine(TOTAL_OBJECT))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(TOTAL_OBJECT))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(TOTAL_OBJECT))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(TOTAL_OBJECT))==(?);
  Context_List_Variables(Machine(TOTAL_OBJECT))==(?);
  Abstract_List_Variables(Machine(TOTAL_OBJECT))==(?);
  Local_List_Variables(Machine(TOTAL_OBJECT))==(total_field,total_object);
  List_Variables(Machine(TOTAL_OBJECT))==(total_field,total_object);
  External_List_Variables(Machine(TOTAL_OBJECT))==(total_field,total_object)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(TOTAL_OBJECT))==(?);
  Abstract_List_VisibleVariables(Machine(TOTAL_OBJECT))==(?);
  External_List_VisibleVariables(Machine(TOTAL_OBJECT))==(?);
  Expanded_List_VisibleVariables(Machine(TOTAL_OBJECT))==(?);
  List_VisibleVariables(Machine(TOTAL_OBJECT))==(?);
  Internal_List_VisibleVariables(Machine(TOTAL_OBJECT))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(TOTAL_OBJECT))==(btrue);
  Gluing_List_Invariant(Machine(TOTAL_OBJECT))==(btrue);
  Expanded_List_Invariant(Machine(TOTAL_OBJECT))==(btrue);
  Abstract_List_Invariant(Machine(TOTAL_OBJECT))==(btrue);
  Context_List_Invariant(Machine(TOTAL_OBJECT))==(btrue);
  List_Invariant(Machine(TOTAL_OBJECT))==(total_object: 0..max_obj & total_field: 1..4 --> (1..total_object --> 0..10000))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(TOTAL_OBJECT))==(btrue);
  Abstract_List_Assertions(Machine(TOTAL_OBJECT))==(btrue);
  Context_List_Assertions(Machine(TOTAL_OBJECT))==(btrue);
  List_Assertions(Machine(TOTAL_OBJECT))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(TOTAL_OBJECT))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(TOTAL_OBJECT))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(TOTAL_OBJECT))==(total_object,total_field:=0,(1..4)*{{}});
  Context_List_Initialisation(Machine(TOTAL_OBJECT))==(skip);
  List_Initialisation(Machine(TOTAL_OBJECT))==(total_object,total_field:=0,(1..4)*{{}})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(TOTAL_OBJECT))==(max_obj)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(TOTAL_OBJECT))==(btrue);
  List_Constraints(Machine(TOTAL_OBJECT))==(max_obj: NAT1)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(TOTAL_OBJECT))==(create_total_object,mod_field,val_field,nbr_object);
  List_Operations(Machine(TOTAL_OBJECT))==(create_total_object,mod_field,val_field,nbr_object)
END
&
THEORY ListInputX IS
  List_Input(Machine(TOTAL_OBJECT),create_total_object)==(vv);
  List_Input(Machine(TOTAL_OBJECT),mod_field)==(ii,oo,vv);
  List_Input(Machine(TOTAL_OBJECT),val_field)==(ii,oo);
  List_Input(Machine(TOTAL_OBJECT),nbr_object)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(TOTAL_OBJECT),create_total_object)==(oo);
  List_Output(Machine(TOTAL_OBJECT),mod_field)==(?);
  List_Output(Machine(TOTAL_OBJECT),val_field)==(vv);
  List_Output(Machine(TOTAL_OBJECT),nbr_object)==(vv)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(TOTAL_OBJECT),create_total_object)==(oo <-- create_total_object(vv));
  List_Header(Machine(TOTAL_OBJECT),mod_field)==(mod_field(ii,oo,vv));
  List_Header(Machine(TOTAL_OBJECT),val_field)==(vv <-- val_field(ii,oo));
  List_Header(Machine(TOTAL_OBJECT),nbr_object)==(vv <-- nbr_object)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(TOTAL_OBJECT),create_total_object)==(vv: 0..10000 & total_object/=max_obj);
  List_Precondition(Machine(TOTAL_OBJECT),mod_field)==(ii: 1..4 & oo: 1..total_object & vv: 0..10000);
  List_Precondition(Machine(TOTAL_OBJECT),val_field)==(ii: 1..4 & oo: 1..total_object);
  List_Precondition(Machine(TOTAL_OBJECT),nbr_object)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(TOTAL_OBJECT),nbr_object)==(btrue | vv:=total_object);
  Expanded_List_Substitution(Machine(TOTAL_OBJECT),val_field)==(ii: 1..4 & oo: 1..total_object | vv:=total_field(ii)(oo));
  Expanded_List_Substitution(Machine(TOTAL_OBJECT),mod_field)==(ii: 1..4 & oo: 1..total_object & vv: 0..10000 | total_field:=total_field<+{ii|->(total_field(ii)<+{oo|->vv})});
  Expanded_List_Substitution(Machine(TOTAL_OBJECT),create_total_object)==(vv: 0..10000 & total_object/=max_obj | total_object,total_field,oo:=total_object+1,%ii.(ii: 1..4 | total_field(ii)\/{total_object+1|->vv}),total_object+1);
  List_Substitution(Machine(TOTAL_OBJECT),create_total_object)==(total_object:=total_object+1 || total_field:=%ii.(ii: 1..4 | total_field(ii)\/{total_object+1|->vv}) || oo:=total_object+1);
  List_Substitution(Machine(TOTAL_OBJECT),mod_field)==(total_field(ii)(oo):=vv);
  List_Substitution(Machine(TOTAL_OBJECT),val_field)==(vv:=total_field(ii)(oo));
  List_Substitution(Machine(TOTAL_OBJECT),nbr_object)==(vv:=total_object)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(TOTAL_OBJECT))==(?);
  Inherited_List_Constants(Machine(TOTAL_OBJECT))==(?);
  List_Constants(Machine(TOTAL_OBJECT))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(TOTAL_OBJECT))==(?);
  Context_List_Defered(Machine(TOTAL_OBJECT))==(?);
  Context_List_Sets(Machine(TOTAL_OBJECT))==(?);
  List_Valuable_Sets(Machine(TOTAL_OBJECT))==(?);
  Inherited_List_Enumerated(Machine(TOTAL_OBJECT))==(?);
  Inherited_List_Defered(Machine(TOTAL_OBJECT))==(?);
  Inherited_List_Sets(Machine(TOTAL_OBJECT))==(?);
  List_Enumerated(Machine(TOTAL_OBJECT))==(?);
  List_Defered(Machine(TOTAL_OBJECT))==(?);
  List_Sets(Machine(TOTAL_OBJECT))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(TOTAL_OBJECT))==(?);
  Expanded_List_HiddenConstants(Machine(TOTAL_OBJECT))==(?);
  List_HiddenConstants(Machine(TOTAL_OBJECT))==(?);
  External_List_HiddenConstants(Machine(TOTAL_OBJECT))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(TOTAL_OBJECT))==(btrue);
  Context_List_Properties(Machine(TOTAL_OBJECT))==(btrue);
  Inherited_List_Properties(Machine(TOTAL_OBJECT))==(btrue);
  List_Properties(Machine(TOTAL_OBJECT))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(TOTAL_OBJECT),create_total_object)==(?);
  List_ANY_Var(Machine(TOTAL_OBJECT),mod_field)==(?);
  List_ANY_Var(Machine(TOTAL_OBJECT),val_field)==(?);
  List_ANY_Var(Machine(TOTAL_OBJECT),nbr_object)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(TOTAL_OBJECT)) == (? | ? | total_field,total_object | ? | create_total_object,mod_field,val_field,nbr_object | ? | ? | max_obj | TOTAL_OBJECT);
  List_Of_HiddenCst_Ids(Machine(TOTAL_OBJECT)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TOTAL_OBJECT)) == (?);
  List_Of_VisibleVar_Ids(Machine(TOTAL_OBJECT)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TOTAL_OBJECT)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(TOTAL_OBJECT)) == (Type(max_obj) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(TOTAL_OBJECT)) == (Type(total_field) == Mvl(SetOf(btype(INTEGER,1,4)*SetOf(btype(INTEGER,1,total_object)*btype(INTEGER,0,10000))));Type(total_object) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(TOTAL_OBJECT)) == (Type(nbr_object) == Cst(btype(INTEGER,?,?),No_type);Type(val_field) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(mod_field) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(create_total_object) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)));
  Observers(Machine(TOTAL_OBJECT)) == (Type(nbr_object) == Cst(btype(INTEGER,?,?),No_type);Type(val_field) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
