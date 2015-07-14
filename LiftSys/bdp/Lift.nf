Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Lift))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Lift))==(Machine(Lift));
  Level(Machine(Lift))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Lift)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Lift))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Lift))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Lift))==(?);
  List_Includes(Machine(Lift))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Lift))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Lift))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Lift))==(?);
  Context_List_Variables(Machine(Lift))==(?);
  Abstract_List_Variables(Machine(Lift))==(?);
  Local_List_Variables(Machine(Lift))==(out,in,dir,current_floor,moving);
  List_Variables(Machine(Lift))==(out,in,dir,current_floor,moving);
  External_List_Variables(Machine(Lift))==(out,in,dir,current_floor,moving)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Lift))==(?);
  Abstract_List_VisibleVariables(Machine(Lift))==(?);
  External_List_VisibleVariables(Machine(Lift))==(?);
  Expanded_List_VisibleVariables(Machine(Lift))==(?);
  List_VisibleVariables(Machine(Lift))==(?);
  Internal_List_VisibleVariables(Machine(Lift))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Lift))==(btrue);
  Gluing_List_Invariant(Machine(Lift))==(btrue);
  Expanded_List_Invariant(Machine(Lift))==(btrue);
  Abstract_List_Invariant(Machine(Lift))==(btrue);
  Context_List_Invariant(Machine(Lift))==(btrue);
  List_Invariant(Machine(Lift))==(moving <: LIFT & current_floor: LIFT --> ground_floor..top_floor & dir: LIFT --> DIRECTION & in: ground_floor..top_floor <-> DIRECTION & out: LIFT <-> ground_floor..top_floor & ground_floor|->dn/:in & top_floor|->up/:in & moving<<|(out/\current_floor) = {} & in/\ran(moving<<|(current_floor><dir)) = {})
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Lift))==(btrue);
  Abstract_List_Assertions(Machine(Lift))==(btrue);
  Context_List_Assertions(Machine(Lift))==(btrue);
  List_Assertions(Machine(Lift))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Lift))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Lift))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Lift))==(in,out,moving,current_floor,dir:={},{},{},LIFT*{ground_floor},LIFT*{up});
  Context_List_Initialisation(Machine(Lift))==(skip);
  List_Initialisation(Machine(Lift))==(in,out,moving:={},{},{} || current_floor,dir:=LIFT*{ground_floor},LIFT*{up})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Lift))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Lift))==(btrue);
  List_Constraints(Machine(Lift))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Lift))==(Request_Floor,Request_Lift,Continue_up,Continue_dn,Stop_up,Stop_dn,Depart_up,Depart_dn,Change_up_to_dn,Change_dn_to_up);
  List_Operations(Machine(Lift))==(Request_Floor,Request_Lift,Continue_up,Continue_dn,Stop_up,Stop_dn,Depart_up,Depart_dn,Change_up_to_dn,Change_dn_to_up)
END
&
THEORY ListInputX IS
  List_Input(Machine(Lift),Request_Floor)==(ll,ff);
  List_Input(Machine(Lift),Request_Lift)==(ff,dd);
  List_Input(Machine(Lift),Continue_up)==(ll);
  List_Input(Machine(Lift),Continue_dn)==(ll);
  List_Input(Machine(Lift),Stop_up)==(ll);
  List_Input(Machine(Lift),Stop_dn)==(ll);
  List_Input(Machine(Lift),Depart_up)==(ll);
  List_Input(Machine(Lift),Depart_dn)==(ll);
  List_Input(Machine(Lift),Change_up_to_dn)==(ll);
  List_Input(Machine(Lift),Change_dn_to_up)==(ll)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Lift),Request_Floor)==(?);
  List_Output(Machine(Lift),Request_Lift)==(?);
  List_Output(Machine(Lift),Continue_up)==(?);
  List_Output(Machine(Lift),Continue_dn)==(?);
  List_Output(Machine(Lift),Stop_up)==(?);
  List_Output(Machine(Lift),Stop_dn)==(?);
  List_Output(Machine(Lift),Depart_up)==(?);
  List_Output(Machine(Lift),Depart_dn)==(?);
  List_Output(Machine(Lift),Change_up_to_dn)==(?);
  List_Output(Machine(Lift),Change_dn_to_up)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Lift),Request_Floor)==(Request_Floor(ll,ff));
  List_Header(Machine(Lift),Request_Lift)==(Request_Lift(ff,dd));
  List_Header(Machine(Lift),Continue_up)==(Continue_up(ll));
  List_Header(Machine(Lift),Continue_dn)==(Continue_dn(ll));
  List_Header(Machine(Lift),Stop_up)==(Stop_up(ll));
  List_Header(Machine(Lift),Stop_dn)==(Stop_dn(ll));
  List_Header(Machine(Lift),Depart_up)==(Depart_up(ll));
  List_Header(Machine(Lift),Depart_dn)==(Depart_dn(ll));
  List_Header(Machine(Lift),Change_up_to_dn)==(Change_up_to_dn(ll));
  List_Header(Machine(Lift),Change_dn_to_up)==(Change_dn_to_up(ll))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Lift),Request_Floor)==(ll: LIFT & ff: ground_floor..top_floor & (ll/:moving => current_floor(ll)/=ff));
  List_Precondition(Machine(Lift),Request_Lift)==(ff: ground_floor..top_floor & dd: DIRECTION & (ff,dd)/=(ground_floor,dn) & (ff,dd)/=(top_floor,up) & (ff,dd)/:ran(moving<<|(current_floor><dir)));
  List_Precondition(Machine(Lift),Continue_up)==(ll: moving & dir(ll) = up & ll|->current_floor(ll)/:out & current_floor(ll)|->dir(ll)/:in & dom(in)\/out[{ll}]/\current_floor(ll)+1..top_floor/={});
  List_Precondition(Machine(Lift),Continue_dn)==(ll: moving & dir(ll) = dn & ll|->current_floor(ll)/:out & current_floor(ll)|->dir(ll)/:in & dom(in)\/out[{ll}]/\ground_floor..current_floor(ll)-1/={});
  List_Precondition(Machine(Lift),Stop_up)==(ll: moving & dir(ll) = up & not(ll|->current_floor(ll)/:out & current_floor(ll)|->dir(ll)/:in & dom(in)\/out[{ll}]/\current_floor(ll)+1..top_floor/={}));
  List_Precondition(Machine(Lift),Stop_dn)==(ll: moving & dir(ll) = dn & not(ll|->current_floor(ll)/:out & current_floor(ll)|->dir(ll)/:in & dom(in)\/out[{ll}]/\ground_floor..current_floor(ll)-1/={}));
  List_Precondition(Machine(Lift),Depart_up)==(ll: LIFT-moving & dir(ll) = up & dom(in)\/out[{ll}]/\current_floor(ll)+1..top_floor/={});
  List_Precondition(Machine(Lift),Depart_dn)==(ll: LIFT-moving & dir(ll) = dn & dom(in)\/out[{ll}]/\ground_floor..current_floor(ll)-1/={});
  List_Precondition(Machine(Lift),Change_up_to_dn)==(ll: LIFT-moving & dir(ll) = up & not(dom(in)\/out[{ll}]/\current_floor(ll)+1..top_floor/={}) & dom(in)\/out[{ll}]/\ground_floor..current_floor(ll)-1/={});
  List_Precondition(Machine(Lift),Change_dn_to_up)==(ll: LIFT-moving & dir(ll) = dn & not(dom(in)\/out[{ll}]/\ground_floor..current_floor(ll)-1/={}) & dom(in)\/out[{ll}]/\current_floor(ll)+1..top_floor/={})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Lift),Change_dn_to_up)==(ll: LIFT-moving & dir(ll) = dn & not(dom(in)\/out[{ll}]/\ground_floor..current_floor(ll)-1/={}) & dom(in)\/out[{ll}]/\current_floor(ll)+1..top_floor/={} | in,dir:=in-{current_floor(ll)|->up},dir<+{ll|->up});
  Expanded_List_Substitution(Machine(Lift),Change_up_to_dn)==(ll: LIFT-moving & dir(ll) = up & not(dom(in)\/out[{ll}]/\current_floor(ll)+1..top_floor/={}) & dom(in)\/out[{ll}]/\ground_floor..current_floor(ll)-1/={} | in,dir:=in-{current_floor(ll)|->dn},dir<+{ll|->dn});
  Expanded_List_Substitution(Machine(Lift),Depart_dn)==(ll: LIFT-moving & dir(ll) = dn & dom(in)\/out[{ll}]/\ground_floor..current_floor(ll)-1/={} | moving,current_floor:=moving\/{ll},current_floor<+{ll|->current_floor(ll)-1});
  Expanded_List_Substitution(Machine(Lift),Depart_up)==(ll: LIFT-moving & dir(ll) = up & dom(in)\/out[{ll}]/\current_floor(ll)+1..top_floor/={} | moving,current_floor:=moving\/{ll},current_floor<+{ll|->current_floor(ll)+1});
  Expanded_List_Substitution(Machine(Lift),Stop_dn)==(ll: moving & dir(ll) = dn & not(ll|->current_floor(ll)/:out & current_floor(ll)|->dir(ll)/:in & dom(in)\/out[{ll}]/\ground_floor..current_floor(ll)-1/={}) | moving,out,in:=moving-{ll},out-{ll|->current_floor(ll)},in-{current_floor(ll)|->dir(ll)});
  Expanded_List_Substitution(Machine(Lift),Stop_up)==(ll: moving & dir(ll) = up & not(ll|->current_floor(ll)/:out & current_floor(ll)|->dir(ll)/:in & dom(in)\/out[{ll}]/\current_floor(ll)+1..top_floor/={}) | moving,out,in:=moving-{ll},out-{ll|->current_floor(ll)},in-{current_floor(ll)|->dir(ll)});
  Expanded_List_Substitution(Machine(Lift),Continue_dn)==(ll: moving & dir(ll) = dn & ll|->current_floor(ll)/:out & current_floor(ll)|->dir(ll)/:in & dom(in)\/out[{ll}]/\ground_floor..current_floor(ll)-1/={} | current_floor:=current_floor<+{ll|->current_floor(ll)-1});
  Expanded_List_Substitution(Machine(Lift),Continue_up)==(ll: moving & dir(ll) = up & ll|->current_floor(ll)/:out & current_floor(ll)|->dir(ll)/:in & dom(in)\/out[{ll}]/\current_floor(ll)+1..top_floor/={} | current_floor:=current_floor<+{ll|->current_floor(ll)+1});
  Expanded_List_Substitution(Machine(Lift),Request_Lift)==(ff: ground_floor..top_floor & dd: DIRECTION & (ff,dd)/=(ground_floor,dn) & (ff,dd)/=(top_floor,up) & (ff,dd)/:ran(moving<<|(current_floor><dir)) | in:=in\/{ff|->dd});
  Expanded_List_Substitution(Machine(Lift),Request_Floor)==(ll: LIFT & ff: ground_floor..top_floor & (ll/:moving => current_floor(ll)/=ff) | out:=out\/{ll|->ff});
  List_Substitution(Machine(Lift),Request_Floor)==(out:=out\/{ll|->ff});
  List_Substitution(Machine(Lift),Request_Lift)==(in:=in\/{ff|->dd});
  List_Substitution(Machine(Lift),Continue_up)==(current_floor(ll):=current_floor(ll)+1);
  List_Substitution(Machine(Lift),Continue_dn)==(current_floor(ll):=current_floor(ll)-1);
  List_Substitution(Machine(Lift),Stop_up)==(moving:=moving-{ll} || out:=out-{ll|->current_floor(ll)} || in:=in-{current_floor(ll)|->dir(ll)});
  List_Substitution(Machine(Lift),Stop_dn)==(moving:=moving-{ll} || out:=out-{ll|->current_floor(ll)} || in:=in-{current_floor(ll)|->dir(ll)});
  List_Substitution(Machine(Lift),Depart_up)==(moving:=moving\/{ll} || current_floor(ll):=current_floor(ll)+1);
  List_Substitution(Machine(Lift),Depart_dn)==(moving:=moving\/{ll} || current_floor(ll):=current_floor(ll)-1);
  List_Substitution(Machine(Lift),Change_up_to_dn)==(in:=in-{current_floor(ll)|->dn} || dir(ll):=dn);
  List_Substitution(Machine(Lift),Change_dn_to_up)==(in:=in-{current_floor(ll)|->up} || dir(ll):=up)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Lift))==(ground_floor,top_floor);
  Inherited_List_Constants(Machine(Lift))==(?);
  List_Constants(Machine(Lift))==(ground_floor,top_floor)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Lift),LIFT)==(?);
  Context_List_Enumerated(Machine(Lift))==(?);
  Context_List_Defered(Machine(Lift))==(?);
  Context_List_Sets(Machine(Lift))==(?);
  List_Valuable_Sets(Machine(Lift))==(LIFT);
  Inherited_List_Enumerated(Machine(Lift))==(?);
  Inherited_List_Defered(Machine(Lift))==(?);
  Inherited_List_Sets(Machine(Lift))==(?);
  List_Enumerated(Machine(Lift))==(DIRECTION);
  List_Defered(Machine(Lift))==(LIFT);
  List_Sets(Machine(Lift))==(LIFT,DIRECTION);
  Set_Definition(Machine(Lift),DIRECTION)==({up,dn})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Lift))==(?);
  Expanded_List_HiddenConstants(Machine(Lift))==(?);
  List_HiddenConstants(Machine(Lift))==(?);
  External_List_HiddenConstants(Machine(Lift))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Lift))==(btrue);
  Context_List_Properties(Machine(Lift))==(btrue);
  Inherited_List_Properties(Machine(Lift))==(btrue);
  List_Properties(Machine(Lift))==(ground_floor: NAT & top_floor: NAT & ground_floor<top_floor & LIFT: FIN(INTEGER) & not(LIFT = {}) & DIRECTION: FIN(INTEGER) & not(DIRECTION = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Lift),Request_Floor)==(?);
  List_ANY_Var(Machine(Lift),Request_Lift)==(?);
  List_ANY_Var(Machine(Lift),Continue_up)==(?);
  List_ANY_Var(Machine(Lift),Continue_dn)==(?);
  List_ANY_Var(Machine(Lift),Stop_up)==(?);
  List_ANY_Var(Machine(Lift),Stop_dn)==(?);
  List_ANY_Var(Machine(Lift),Depart_up)==(?);
  List_ANY_Var(Machine(Lift),Depart_dn)==(?);
  List_ANY_Var(Machine(Lift),Change_up_to_dn)==(?);
  List_ANY_Var(Machine(Lift),Change_dn_to_up)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Lift)) == (ground_floor,top_floor,LIFT,DIRECTION,up,dn | ? | out,in,dir,current_floor,moving | ? | Request_Floor,Request_Lift,Continue_up,Continue_dn,Stop_up,Stop_dn,Depart_up,Depart_dn,Change_up_to_dn,Change_dn_to_up | ? | ? | ? | Lift);
  List_Of_HiddenCst_Ids(Machine(Lift)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Lift)) == (ground_floor,top_floor);
  List_Of_VisibleVar_Ids(Machine(Lift)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Lift)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Lift)) == (Type(LIFT) == Cst(SetOf(atype(LIFT,"[LIFT","]LIFT")));Type(DIRECTION) == Cst(SetOf(etype(DIRECTION,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Lift)) == (Type(up) == Cst(etype(DIRECTION,0,1));Type(dn) == Cst(etype(DIRECTION,0,1));Type(ground_floor) == Cst(btype(INTEGER,?,?));Type(top_floor) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Lift)) == (Type(out) == Mvl(SetOf(atype(LIFT,?,?)*btype(INTEGER,?,?)));Type(in) == Mvl(SetOf(btype(INTEGER,?,?)*etype(DIRECTION,?,?)));Type(dir) == Mvl(SetOf(atype(LIFT,"[LIFT","]LIFT")*etype(DIRECTION,0,1)));Type(current_floor) == Mvl(SetOf(atype(LIFT,"[LIFT","]LIFT")*btype(INTEGER,ground_floor,top_floor)));Type(moving) == Mvl(SetOf(atype(LIFT,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Lift)) == (Type(Change_dn_to_up) == Cst(No_type,atype(LIFT,?,?));Type(Change_up_to_dn) == Cst(No_type,atype(LIFT,?,?));Type(Depart_dn) == Cst(No_type,atype(LIFT,?,?));Type(Depart_up) == Cst(No_type,atype(LIFT,?,?));Type(Stop_dn) == Cst(No_type,atype(LIFT,?,?));Type(Stop_up) == Cst(No_type,atype(LIFT,?,?));Type(Continue_dn) == Cst(No_type,atype(LIFT,?,?));Type(Continue_up) == Cst(No_type,atype(LIFT,?,?));Type(Request_Lift) == Cst(No_type,btype(INTEGER,?,?)*etype(DIRECTION,?,?));Type(Request_Floor) == Cst(No_type,atype(LIFT,?,?)*btype(INTEGER,?,?)))
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
