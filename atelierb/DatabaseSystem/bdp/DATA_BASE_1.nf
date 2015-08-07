Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(DATA_BASE_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(DATA_BASE_1))==(Machine(DATA_BASE));
  Level(Implementation(DATA_BASE_1))==(1);
  Upper_Level(Implementation(DATA_BASE_1))==(Machine(DATA_BASE))
END
&
THEORY LoadedStructureX IS
  Implementation(DATA_BASE_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(DATA_BASE_1))==(BASIC_IO,BASIC_SEX,BASIC_STATUS)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(DATA_BASE_1))==(PARTIAL_OBJECT);
  Inherited_List_Includes(Implementation(DATA_BASE_1))==(PARTIAL_OBJECT)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(DATA_BASE_1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(DATA_BASE_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(DATA_BASE_1))==(?);
  Context_List_Variables(Implementation(DATA_BASE_1))==(?);
  Abstract_List_Variables(Implementation(DATA_BASE_1))==(wife,husband,mother,status,sex,person);
  Local_List_Variables(Implementation(DATA_BASE_1))==(?);
  List_Variables(Implementation(DATA_BASE_1))==(partial_field,partial_object);
  External_List_Variables(Implementation(DATA_BASE_1))==(partial_field,partial_object)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(DATA_BASE_1))==(?);
  Abstract_List_VisibleVariables(Implementation(DATA_BASE_1))==(?);
  External_List_VisibleVariables(Implementation(DATA_BASE_1))==(?);
  Expanded_List_VisibleVariables(Implementation(DATA_BASE_1))==(?);
  List_VisibleVariables(Implementation(DATA_BASE_1))==(?);
  Internal_List_VisibleVariables(Implementation(DATA_BASE_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(DATA_BASE_1))==(btrue);
  Abstract_List_Invariant(Implementation(DATA_BASE_1))==(person <: PERSON & sex: person --> SEX & status: person --> STATUS & husband: sex~[{woman}] >+> sex~[{man}] & wife = husband~ & mother: person +-> dom(husband\/wife)/\sex~[{woman}]);
  Expanded_List_Invariant(Implementation(DATA_BASE_1))==(partial_object: 0..10000 & partial_field: 1..4 --> (1..partial_object +-> 0..10000));
  Context_List_Invariant(Implementation(DATA_BASE_1))==(btrue);
  List_Invariant(Implementation(DATA_BASE_1))==(person = 1..max_pers & partial_field(1) = (sex;code_SEX) & partial_field(2) = (status;code_STATUS) & partial_field(3) = mother & partial_field(4) = husband\/wife)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(DATA_BASE_1))==(btrue);
  Expanded_List_Assertions(Implementation(DATA_BASE_1))==(btrue);
  Context_List_Assertions(Implementation(DATA_BASE_1))==(btrue);
  List_Assertions(Implementation(DATA_BASE_1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(DATA_BASE_1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(DATA_BASE_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(DATA_BASE_1))==(partial_object,partial_field:=0,{});
  Context_List_Initialisation(Implementation(DATA_BASE_1))==(skip);
  List_Initialisation(Implementation(DATA_BASE_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(DATA_BASE_1))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(DATA_BASE_1),Machine(PARTIAL_OBJECT))==(btrue);
  List_Instanciated_Parameters(Implementation(DATA_BASE_1),Machine(PARTIAL_OBJECT))==(10000,4,0,10000);
  List_Instanciated_Parameters(Implementation(DATA_BASE_1),Machine(BASIC_IO))==(?);
  List_Instanciated_Parameters(Implementation(DATA_BASE_1),Machine(BASIC_SEX))==(?);
  List_Instanciated_Parameters(Implementation(DATA_BASE_1),Machine(BASIC_STATUS))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(DATA_BASE_1),Machine(PARTIAL_OBJECT))==(10000: NAT1 & 4: NAT1 & 0: NAT & 10000: NAT & 10000<MAXINT);
  List_Constraints(Implementation(DATA_BASE_1))==(btrue);
  List_Context_Constraints(Implementation(DATA_BASE_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(DATA_BASE_1))==(death,marriage,first_human,not_saturated,new_born,is_present,is_living,is_woman,is_married,has_mother,val_status,val_sex,val_spouse,val_mother,PERSON_read,PERSON_write);
  List_Operations(Implementation(DATA_BASE_1))==(death,marriage,first_human,not_saturated,new_born,is_present,is_living,is_woman,is_married,has_mother,val_status,val_sex,val_spouse,val_mother,PERSON_read,PERSON_write)
END
&
THEORY ListInputX IS
  List_Input(Implementation(DATA_BASE_1),death)==(pp);
  List_Input(Implementation(DATA_BASE_1),marriage)==(bride,groom);
  List_Input(Implementation(DATA_BASE_1),first_human)==(ss);
  List_Input(Implementation(DATA_BASE_1),not_saturated)==(?);
  List_Input(Implementation(DATA_BASE_1),new_born)==(ss,mm);
  List_Input(Implementation(DATA_BASE_1),is_present)==(pp);
  List_Input(Implementation(DATA_BASE_1),is_living)==(pp);
  List_Input(Implementation(DATA_BASE_1),is_woman)==(pp);
  List_Input(Implementation(DATA_BASE_1),is_married)==(pp);
  List_Input(Implementation(DATA_BASE_1),has_mother)==(pp);
  List_Input(Implementation(DATA_BASE_1),val_status)==(pp);
  List_Input(Implementation(DATA_BASE_1),val_sex)==(pp);
  List_Input(Implementation(DATA_BASE_1),val_spouse)==(pp);
  List_Input(Implementation(DATA_BASE_1),val_mother)==(pp);
  List_Input(Implementation(DATA_BASE_1),PERSON_read)==(?);
  List_Input(Implementation(DATA_BASE_1),PERSON_write)==(pp)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(DATA_BASE_1),death)==(?);
  List_Output(Implementation(DATA_BASE_1),marriage)==(?);
  List_Output(Implementation(DATA_BASE_1),first_human)==(baby);
  List_Output(Implementation(DATA_BASE_1),not_saturated)==(report);
  List_Output(Implementation(DATA_BASE_1),new_born)==(baby);
  List_Output(Implementation(DATA_BASE_1),is_present)==(report);
  List_Output(Implementation(DATA_BASE_1),is_living)==(report);
  List_Output(Implementation(DATA_BASE_1),is_woman)==(report);
  List_Output(Implementation(DATA_BASE_1),is_married)==(report);
  List_Output(Implementation(DATA_BASE_1),has_mother)==(report);
  List_Output(Implementation(DATA_BASE_1),val_status)==(vv);
  List_Output(Implementation(DATA_BASE_1),val_sex)==(vv);
  List_Output(Implementation(DATA_BASE_1),val_spouse)==(vv);
  List_Output(Implementation(DATA_BASE_1),val_mother)==(vv);
  List_Output(Implementation(DATA_BASE_1),PERSON_read)==(pp);
  List_Output(Implementation(DATA_BASE_1),PERSON_write)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(DATA_BASE_1),death)==(death(pp));
  List_Header(Implementation(DATA_BASE_1),marriage)==(marriage(bride,groom));
  List_Header(Implementation(DATA_BASE_1),first_human)==(baby <-- first_human(ss));
  List_Header(Implementation(DATA_BASE_1),not_saturated)==(report <-- not_saturated);
  List_Header(Implementation(DATA_BASE_1),new_born)==(baby <-- new_born(ss,mm));
  List_Header(Implementation(DATA_BASE_1),is_present)==(report <-- is_present(pp));
  List_Header(Implementation(DATA_BASE_1),is_living)==(report <-- is_living(pp));
  List_Header(Implementation(DATA_BASE_1),is_woman)==(report <-- is_woman(pp));
  List_Header(Implementation(DATA_BASE_1),is_married)==(report <-- is_married(pp));
  List_Header(Implementation(DATA_BASE_1),has_mother)==(report <-- has_mother(pp));
  List_Header(Implementation(DATA_BASE_1),val_status)==(vv <-- val_status(pp));
  List_Header(Implementation(DATA_BASE_1),val_sex)==(vv <-- val_sex(pp));
  List_Header(Implementation(DATA_BASE_1),val_spouse)==(vv <-- val_spouse(pp));
  List_Header(Implementation(DATA_BASE_1),val_mother)==(vv <-- val_mother(pp));
  List_Header(Implementation(DATA_BASE_1),PERSON_read)==(pp <-- PERSON_read);
  List_Header(Implementation(DATA_BASE_1),PERSON_write)==(PERSON_write(pp))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(DATA_BASE_1),death)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),death)==(pp: status~[{living}]);
  Own_Precondition(Implementation(DATA_BASE_1),marriage)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),marriage)==(bride: person-dom(husband\/wife)/\sex~[{woman}] & groom: person-dom(husband\/wife)/\sex~[{man}]);
  Own_Precondition(Implementation(DATA_BASE_1),first_human)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),first_human)==(PERSON-person/={} & ss: SEX);
  Own_Precondition(Implementation(DATA_BASE_1),not_saturated)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),not_saturated)==(btrue);
  Own_Precondition(Implementation(DATA_BASE_1),new_born)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),new_born)==(PERSON-person/={} & ss: SEX & mm: dom(husband\/wife)/\sex~[{woman}]);
  Own_Precondition(Implementation(DATA_BASE_1),is_present)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),is_present)==(pp: PERSON);
  Own_Precondition(Implementation(DATA_BASE_1),is_living)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),is_living)==(pp: person);
  Own_Precondition(Implementation(DATA_BASE_1),is_woman)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),is_woman)==(pp: person);
  Own_Precondition(Implementation(DATA_BASE_1),is_married)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),is_married)==(pp: person);
  Own_Precondition(Implementation(DATA_BASE_1),has_mother)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),has_mother)==(pp: person);
  Own_Precondition(Implementation(DATA_BASE_1),val_status)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),val_status)==(pp: person);
  Own_Precondition(Implementation(DATA_BASE_1),val_sex)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),val_sex)==(pp: person);
  Own_Precondition(Implementation(DATA_BASE_1),val_spouse)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),val_spouse)==(pp: dom(husband\/wife));
  Own_Precondition(Implementation(DATA_BASE_1),val_mother)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),val_mother)==(pp: dom(mother));
  Own_Precondition(Implementation(DATA_BASE_1),PERSON_read)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),PERSON_read)==(btrue);
  Own_Precondition(Implementation(DATA_BASE_1),PERSON_write)==(btrue);
  List_Precondition(Implementation(DATA_BASE_1),PERSON_write)==(pp: PERSON)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(DATA_BASE_1),PERSON_write)==(pp: PERSON & pp: INT | skip);
  Expanded_List_Substitution(Implementation(DATA_BASE_1),PERSON_read)==(btrue & 1: INT & max_pers: INT & 1<=max_pers | @(nn$0).(nn$0: 1..max_pers ==> pp:=nn$0));
  Expanded_List_Substitution(Implementation(DATA_BASE_1),val_mother)==(pp: dom(mother) & 3: 1..4 & pp: dom(partial_field(3)) | vv:=partial_field(3)(pp));
  Expanded_List_Substitution(Implementation(DATA_BASE_1),val_spouse)==(pp: dom(husband\/wife) & 4: 1..4 & pp: dom(partial_field(4)) | vv:=partial_field(4)(pp));
  Expanded_List_Substitution(Implementation(DATA_BASE_1),val_sex)==(pp: person | @ss.((1: 1..4 & pp: dom(partial_field(1)) | ss:=partial_field(1)(pp));(ss: dom(decode_SEX) | vv:=decode_SEX(ss))));
  Expanded_List_Substitution(Implementation(DATA_BASE_1),val_status)==(pp: person | @ss.((2: 1..4 & pp: dom(partial_field(2)) | ss:=partial_field(2)(pp));(ss: dom(decode_STATUS) | vv:=decode_STATUS(ss))));
  Expanded_List_Substitution(Implementation(DATA_BASE_1),has_mother)==(pp: person & 3: 1..4 & pp: 1..partial_object | report:=bool(pp: dom(partial_field(3))));
  Expanded_List_Substitution(Implementation(DATA_BASE_1),is_married)==(pp: person & 4: 1..4 & pp: 1..partial_object | report:=bool(pp: dom(partial_field(4))));
  Expanded_List_Substitution(Implementation(DATA_BASE_1),is_woman)==(pp: person | @ss.((1: 1..4 & pp: dom(partial_field(1)) | ss:=partial_field(1)(pp));(woman: dom(code_SEX) | report:=bool(ss = code_SEX(woman)))));
  Expanded_List_Substitution(Implementation(DATA_BASE_1),is_living)==(pp: person | @ss.((2: 1..4 & pp: dom(partial_field(2)) | ss:=partial_field(2)(pp));(living: dom(code_STATUS) | report:=bool(ss = code_STATUS(living)))));
  Expanded_List_Substitution(Implementation(DATA_BASE_1),is_present)==(pp: PERSON | @nn.((btrue | nn:=partial_object);report:=bool(nn/=max_pers)));
  Expanded_List_Substitution(Implementation(DATA_BASE_1),new_born)==(PERSON-person/={} & ss: SEX & mm: dom(husband\/wife)/\sex~[{woman}] | (partial_object/=10000 | partial_object,baby:=partial_object+1,partial_object+1);(ss: dom(code_SEX) & 1: 1..4 & baby: 1..partial_object & code_SEX(ss): 0..10000 | partial_field:=partial_field<+{1|->(partial_field(1)<+{baby|->code_SEX(ss)})});(living: dom(code_STATUS) & 2: 1..4 & baby: 1..partial_object & code_STATUS(living): 0..10000 | partial_field:=partial_field<+{2|->(partial_field(2)<+{baby|->code_STATUS(living)})});(3: 1..4 & baby: 1..partial_object & mm: 0..10000 | partial_field:=partial_field<+{3|->(partial_field(3)<+{baby|->mm})}));
  Expanded_List_Substitution(Implementation(DATA_BASE_1),not_saturated)==(btrue | @nn.((btrue | nn:=partial_object);report:=bool(nn/=max_pers)));
  Expanded_List_Substitution(Implementation(DATA_BASE_1),first_human)==(PERSON-person/={} & ss: SEX | (partial_object/=10000 | partial_object,baby:=partial_object+1,partial_object+1);(ss: dom(code_SEX) & 1: 1..4 & baby: 1..partial_object & code_SEX(ss): 0..10000 | partial_field:=partial_field<+{1|->(partial_field(1)<+{baby|->code_SEX(ss)})});(living: dom(code_STATUS) & 2: 1..4 & baby: 1..partial_object & code_STATUS(living): 0..10000 | partial_field:=partial_field<+{2|->(partial_field(2)<+{baby|->code_STATUS(living)})}));
  Expanded_List_Substitution(Implementation(DATA_BASE_1),marriage)==(bride: person-dom(husband\/wife)/\sex~[{woman}] & groom: person-dom(husband\/wife)/\sex~[{man}] | (4: 1..4 & bride: 1..partial_object & groom: 0..10000 | partial_field:=partial_field<+{4|->(partial_field(4)<+{bride|->groom})});(4: 1..4 & groom: 1..partial_object & bride: 0..10000 | partial_field:=partial_field<+{4|->(partial_field(4)<+{groom|->bride})}));
  Expanded_List_Substitution(Implementation(DATA_BASE_1),death)==(pp: status~[{living}] & dead: dom(code_STATUS) & 2: 1..4 & pp: 1..partial_object & code_STATUS(dead): 0..10000 | partial_field:=partial_field<+{2|->(partial_field(2)<+{pp|->code_STATUS(dead)})});
  List_Substitution(Implementation(DATA_BASE_1),death)==(mod_field(2,pp,code_STATUS(dead)));
  List_Substitution(Implementation(DATA_BASE_1),marriage)==(mod_field(4,bride,groom);mod_field(4,groom,bride));
  List_Substitution(Implementation(DATA_BASE_1),first_human)==(baby <-- create_partial_object;mod_field(1,baby,code_SEX(ss));mod_field(2,baby,code_STATUS(living)));
  List_Substitution(Implementation(DATA_BASE_1),not_saturated)==(VAR nn IN nn <-- nbr_object;report:=bool(nn/=max_pers) END);
  List_Substitution(Implementation(DATA_BASE_1),new_born)==(baby <-- create_partial_object;mod_field(1,baby,code_SEX(ss));mod_field(2,baby,code_STATUS(living));mod_field(3,baby,mm));
  List_Substitution(Implementation(DATA_BASE_1),is_present)==(VAR nn IN nn <-- nbr_object;report:=bool(nn/=max_pers) END);
  List_Substitution(Implementation(DATA_BASE_1),is_living)==(VAR ss IN ss <-- val_field(2,pp);report:=bool(ss = code_STATUS(living)) END);
  List_Substitution(Implementation(DATA_BASE_1),is_woman)==(VAR ss IN ss <-- val_field(1,pp);report:=bool(ss = code_SEX(woman)) END);
  List_Substitution(Implementation(DATA_BASE_1),is_married)==(report <-- def_field(4,pp));
  List_Substitution(Implementation(DATA_BASE_1),has_mother)==(report <-- def_field(3,pp));
  List_Substitution(Implementation(DATA_BASE_1),val_status)==(VAR ss IN ss <-- val_field(2,pp);vv:=decode_STATUS(ss) END);
  List_Substitution(Implementation(DATA_BASE_1),val_sex)==(VAR ss IN ss <-- val_field(1,pp);vv:=decode_SEX(ss) END);
  List_Substitution(Implementation(DATA_BASE_1),val_spouse)==(vv <-- val_field(4,pp));
  List_Substitution(Implementation(DATA_BASE_1),val_mother)==(vv <-- val_field(3,pp));
  List_Substitution(Implementation(DATA_BASE_1),PERSON_read)==(pp <-- INTERVAL_READ(1,max_pers));
  List_Substitution(Implementation(DATA_BASE_1),PERSON_write)==(INT_WRITE(pp))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(DATA_BASE_1))==(max_pers);
  Inherited_List_Constants(Implementation(DATA_BASE_1))==(max_pers);
  List_Constants(Implementation(DATA_BASE_1))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(DATA_BASE_1),PERSON)==(?);
  Context_List_Enumerated(Implementation(DATA_BASE_1))==(SEX,STATUS);
  Context_List_Defered(Implementation(DATA_BASE_1))==(?);
  Context_List_Sets(Implementation(DATA_BASE_1))==(SEX,STATUS);
  List_Own_Enumerated(Implementation(DATA_BASE_1))==(?);
  List_Valuable_Sets(Implementation(DATA_BASE_1))==(PERSON);
  Inherited_List_Enumerated(Implementation(DATA_BASE_1))==(?);
  Inherited_List_Defered(Implementation(DATA_BASE_1))==(PERSON);
  Inherited_List_Sets(Implementation(DATA_BASE_1))==(PERSON);
  List_Enumerated(Implementation(DATA_BASE_1))==(?);
  List_Defered(Implementation(DATA_BASE_1))==(?);
  List_Sets(Implementation(DATA_BASE_1))==(?);
  Set_Definition(Implementation(DATA_BASE_1),STATUS)==({dead,living});
  Set_Definition(Implementation(DATA_BASE_1),SEX)==({man,woman})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(DATA_BASE_1))==(?);
  Expanded_List_HiddenConstants(Implementation(DATA_BASE_1))==(?);
  List_HiddenConstants(Implementation(DATA_BASE_1))==(?);
  External_List_HiddenConstants(Implementation(DATA_BASE_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(DATA_BASE_1))==(max_pers = card(PERSON) & PERSON: FIN(INTEGER) & not(PERSON = {}));
  Context_List_Properties(Implementation(DATA_BASE_1))==(code_SEX: SEX >->> {0,1} & decode_SEX = code_SEX~ & SEX: FIN(INTEGER) & not(SEX = {}) & code_STATUS: STATUS >->> {0,1} & decode_STATUS = code_STATUS~ & STATUS: FIN(INTEGER) & not(STATUS = {}));
  Inherited_List_Properties(Implementation(DATA_BASE_1))==(btrue);
  List_Properties(Implementation(DATA_BASE_1))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(DATA_BASE_1))==(btrue);
  Values_Subs(Implementation(DATA_BASE_1))==(PERSON,max_pers: 1..10000,10000);
  List_Values(Implementation(DATA_BASE_1))==(PERSON = 1..10000;max_pers = 10000)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(DATA_BASE_1),Machine(BASIC_STATUS))==(STATUS_READ,STATUS_WRITE);
  Seen_Context_List_Enumerated(Implementation(DATA_BASE_1))==(?);
  Seen_Context_List_Invariant(Implementation(DATA_BASE_1))==(btrue);
  Seen_Context_List_Assertions(Implementation(DATA_BASE_1))==(btrue);
  Seen_Context_List_Properties(Implementation(DATA_BASE_1))==(btrue);
  Seen_List_Constraints(Implementation(DATA_BASE_1))==(btrue);
  Seen_List_Precondition(Implementation(DATA_BASE_1),STATUS_WRITE)==(ii: STATUS);
  Seen_Expanded_List_Substitution(Implementation(DATA_BASE_1),STATUS_WRITE)==(skip);
  Seen_List_Precondition(Implementation(DATA_BASE_1),STATUS_READ)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(DATA_BASE_1),STATUS_READ)==(@(rr$0).(rr$0: STATUS ==> rr:=rr$0));
  Seen_List_Operations(Implementation(DATA_BASE_1),Machine(BASIC_STATUS))==(STATUS_READ,STATUS_WRITE);
  Seen_Expanded_List_Invariant(Implementation(DATA_BASE_1),Machine(BASIC_STATUS))==(btrue);
  Seen_Internal_List_Operations(Implementation(DATA_BASE_1),Machine(BASIC_SEX))==(SEX_READ,SEX_WRITE);
  Seen_List_Precondition(Implementation(DATA_BASE_1),SEX_WRITE)==(ii: SEX);
  Seen_Expanded_List_Substitution(Implementation(DATA_BASE_1),SEX_WRITE)==(skip);
  Seen_List_Precondition(Implementation(DATA_BASE_1),SEX_READ)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(DATA_BASE_1),SEX_READ)==(@(rr$0).(rr$0: SEX ==> rr:=rr$0));
  Seen_List_Operations(Implementation(DATA_BASE_1),Machine(BASIC_SEX))==(SEX_READ,SEX_WRITE);
  Seen_Expanded_List_Invariant(Implementation(DATA_BASE_1),Machine(BASIC_SEX))==(btrue);
  Seen_Internal_List_Operations(Implementation(DATA_BASE_1),Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE);
  Seen_List_Precondition(Implementation(DATA_BASE_1),STRING_WRITE)==(ss: STRING);
  Seen_Expanded_List_Substitution(Implementation(DATA_BASE_1),STRING_WRITE)==(skip);
  Seen_List_Precondition(Implementation(DATA_BASE_1),CHAR_WRITE)==(bb: 0..255);
  Seen_Expanded_List_Substitution(Implementation(DATA_BASE_1),CHAR_WRITE)==(skip);
  Seen_List_Precondition(Implementation(DATA_BASE_1),CHAR_READ)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(DATA_BASE_1),CHAR_READ)==(@(bb$0).(bb$0: 0..255 ==> bb:=bb$0));
  Seen_List_Precondition(Implementation(DATA_BASE_1),BOOL_WRITE)==(bb: BOOL);
  Seen_Expanded_List_Substitution(Implementation(DATA_BASE_1),BOOL_WRITE)==(skip);
  Seen_List_Precondition(Implementation(DATA_BASE_1),BOOL_READ)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(DATA_BASE_1),BOOL_READ)==(@(bb$0).(bb$0: BOOL ==> bb:=bb$0));
  Seen_List_Precondition(Implementation(DATA_BASE_1),INT_WRITE)==(nn: INT);
  Seen_Expanded_List_Substitution(Implementation(DATA_BASE_1),INT_WRITE)==(skip);
  Seen_List_Precondition(Implementation(DATA_BASE_1),INTERVAL_READ)==(aa: INT & bb: INT & aa<=bb);
  Seen_Expanded_List_Substitution(Implementation(DATA_BASE_1),INTERVAL_READ)==(@(nn$0).(nn$0: aa..bb ==> nn:=nn$0));
  Seen_List_Operations(Implementation(DATA_BASE_1),Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE);
  Seen_Expanded_List_Invariant(Implementation(DATA_BASE_1),Machine(BASIC_IO))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(DATA_BASE_1),Machine(PARTIAL_OBJECT))==(create_partial_object,mod_field,rem_field,def_field,val_field,nbr_object);
  List_Included_Operations(Implementation(DATA_BASE_1),Machine(BASIC_STATUS))==(STATUS_READ,STATUS_WRITE);
  List_Included_Operations(Implementation(DATA_BASE_1),Machine(BASIC_SEX))==(SEX_READ,SEX_WRITE);
  List_Included_Operations(Implementation(DATA_BASE_1),Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(DATA_BASE_1))==(Type(PERSON_write) == Cst(No_type,atype(PERSON,?,?));Type(PERSON_read) == Cst(atype(PERSON,"[PERSON","]PERSON"),No_type);Type(val_mother) == Cst(atype(PERSON,?,?),atype(PERSON,?,?));Type(val_spouse) == Cst(atype(PERSON,?,?),atype(PERSON,?,?));Type(val_sex) == Cst(etype(SEX,?,?),atype(PERSON,?,?));Type(val_status) == Cst(etype(STATUS,?,?),atype(PERSON,?,?));Type(has_mother) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(is_married) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(is_woman) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(is_living) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(is_present) == Cst(btype(BOOL,?,?),atype(PERSON,?,?));Type(not_saturated) == Cst(btype(BOOL,?,?),No_type);Type(new_born) == Cst(atype(PERSON,?,?),etype(SEX,?,?)*atype(PERSON,?,?));Type(first_human) == Cst(atype(PERSON,?,?),etype(SEX,?,?));Type(marriage) == Cst(No_type,atype(PERSON,?,?)*atype(PERSON,?,?));Type(death) == Cst(No_type,atype(PERSON,?,?)));
  Constants(Implementation(DATA_BASE_1))==(Type(max_pers) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(DATA_BASE_1),Machine(BASIC_STATUS))==(code_STATUS,decode_STATUS);
  List_Constants_Env(Implementation(DATA_BASE_1),Machine(BASIC_STATUS))==(Type(dead) == Cst(etype(STATUS,0,1));Type(living) == Cst(etype(STATUS,0,1));Type(code_STATUS) == Cst(SetOf(etype(STATUS,0,1)*btype(INTEGER,0,1)));Type(decode_STATUS) == Cst(SetOf(btype(INTEGER,?,?)*etype(STATUS,?,?))));
  Enumerate_Definition(Implementation(DATA_BASE_1),Machine(BASIC_STATUS),STATUS)==({dead,living});
  List_Constants(Implementation(DATA_BASE_1),Machine(BASIC_SEX))==(code_SEX,decode_SEX);
  List_Constants_Env(Implementation(DATA_BASE_1),Machine(BASIC_SEX))==(Type(man) == Cst(etype(SEX,0,1));Type(woman) == Cst(etype(SEX,0,1));Type(code_SEX) == Cst(SetOf(etype(SEX,0,1)*btype(INTEGER,0,1)));Type(decode_SEX) == Cst(SetOf(btype(INTEGER,?,?)*etype(SEX,?,?))));
  Enumerate_Definition(Implementation(DATA_BASE_1),Machine(BASIC_SEX),SEX)==({man,woman})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(DATA_BASE_1)) == (? | ? | ? | partial_field,partial_object | death,marriage,first_human,not_saturated,new_born,is_present,is_living,is_woman,is_married,has_mother,val_status,val_sex,val_spouse,val_mother,PERSON_read,PERSON_write | ? | seen(Machine(BASIC_IO)),seen(Machine(BASIC_SEX)),seen(Machine(BASIC_STATUS)),imported(Machine(PARTIAL_OBJECT)) | ? | DATA_BASE_1);
  List_Of_HiddenCst_Ids(Implementation(DATA_BASE_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(DATA_BASE_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(DATA_BASE_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(DATA_BASE_1)) == (?: ?);
  List_Of_Ids(Machine(PARTIAL_OBJECT)) == (? | ? | partial_field,partial_object | ? | create_partial_object,mod_field,rem_field,def_field,val_field,nbr_object | ? | ? | max_obj,max_field,min_val,max_val | PARTIAL_OBJECT);
  List_Of_HiddenCst_Ids(Machine(PARTIAL_OBJECT)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PARTIAL_OBJECT)) == (?);
  List_Of_VisibleVar_Ids(Machine(PARTIAL_OBJECT)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(PARTIAL_OBJECT)) == (?: ?);
  List_Of_Ids(Machine(BASIC_STATUS)) == (code_STATUS,decode_STATUS,STATUS,dead,living | ? | ? | ? | STATUS_READ,STATUS_WRITE | ? | ? | ? | BASIC_STATUS);
  List_Of_HiddenCst_Ids(Machine(BASIC_STATUS)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_STATUS)) == (code_STATUS,decode_STATUS);
  List_Of_VisibleVar_Ids(Machine(BASIC_STATUS)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_STATUS)) == (?: ?);
  List_Of_Ids(Machine(BASIC_SEX)) == (code_SEX,decode_SEX,SEX,man,woman | ? | ? | ? | SEX_READ,SEX_WRITE | ? | ? | ? | BASIC_SEX);
  List_Of_HiddenCst_Ids(Machine(BASIC_SEX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_SEX)) == (code_SEX,decode_SEX);
  List_Of_VisibleVar_Ids(Machine(BASIC_SEX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_SEX)) == (?: ?);
  List_Of_Ids(Machine(BASIC_IO)) == (? | ? | ? | ? | INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE | ? | ? | ? | BASIC_IO);
  List_Of_HiddenCst_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_IO)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_IO)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(DATA_BASE_1)) == (Type(PERSON) == Cst(SetOf(btype(INTEGER,"[PERSON","]PERSON"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(DATA_BASE_1)) == (Type(max_pers) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(DATA_BASE_1),not_saturated, 1) == (Type(nn) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(DATA_BASE_1),is_present, 1) == (Type(nn) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(DATA_BASE_1),is_living, 1) == (Type(ss) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(DATA_BASE_1),is_woman, 1) == (Type(ss) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(DATA_BASE_1),val_status, 1) == (Type(ss) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(DATA_BASE_1),val_sex, 1) == (Type(ss) == Lvl(btype(INTEGER,?,?)))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(DATA_BASE_1))==(?)
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
  TypingPredicate(Implementation(DATA_BASE_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(DATA_BASE_1),Machine(PARTIAL_OBJECT))==(partial_field,partial_object);
  ImportedVisVariablesList(Implementation(DATA_BASE_1),Machine(PARTIAL_OBJECT))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
