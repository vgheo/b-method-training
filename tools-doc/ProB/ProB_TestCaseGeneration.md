# ProB Test Case Generation GUI

### Initialization:
In ProB UI:
- Preferences -> User Mode -> Normal -> restart ProB
	
### Test generation (constraint based checking):
In ProB UI:
- Analyse -> Testing -> Constraint-based test case generation
- Write : 
    - test name
	- stop condition - predicate in B or maximum search depth
- Select operations
- Target event must be final only (don't check)
- Result an xml file
	
### Obs
- Events/tests are not created in case of operations that are not called, but they are defined in machines which the base machine (mch or imp) has access to
Ex. Machine M1.imp has SEES M2 and call op1 from M2. M2 has operation op1, op2, etc.
	
- Constraint Based Checking: calls all operations taking into account the preconditions of the operations(PRE clause), but disregarding the INITIALISATION clause.
It will test the conditions from the INVARIANT clause and will find the limit cases which violates the INVARIANT.  

EXAMPLE:
```
MACHINE DoubleCounter
VARIABLES counter
INVARIANT
 counter:NATURAL & counter<=128
INITIALISATION counter:=8
OPERATIONS
  Double = PRE counter<100 THEN counter := 2*counter END;
  Halve = BEGIN counter := counter/2 END
END
```

Before proceeding, please ensure that you have either set the CLPFD preference to TRUE or have set the MAXINT preference to at least 130.

Note: 
    INT==MININT..MAXINT
    NAT==0..MAXINT
	MININT==-1
	MAXINT==130


###### Case 1: 
```
INVARIANT
 counter:NATURAL & counter<=128
 ```
- Call: Verify -> Constraint Based Checking -> Check Invariant Preservation for Operations
- This will report invariant violation: counter=130.
- Reason: counter = 65 is the minimum value on which Double operation is called and then the counter = 130 will not check the INVARIANT clause. 

###### Case 2: 
```
INVARIANT
 counter:NATURAL & counter>0 & counter<=128
 ```
- Call: Verify -> Constraint Based Checking -> Check Invariant Preservation for Operations
- This will report invariant violation: counter = 0.
- Reason: counter = 1 is the maximum value on which Halve operation is called and then the counter = 0 will not check the INVARIANT clause.


##### Link: 
http://stups.hhu.de/ProB/w/Test_Case_Generation
http://stups.hhu.de/ProB/w/Tutorial_Model_Checking,_Proof_and_CBC


# ProB Test Case Generation CLI

### Generate test cases in cmd (constraint based):
> probcli -cbc_tests <Depth> <EndPredicate> <xmlFile> -p <PREFERENCE> <VALUE> -card <SET> <nr> <machineName>

Possible parameter (operation should be covered):
	- cbc_cover <operation>


##### Link:
http://stups.hhu.de/ProB/w/Using_the_Command-Line_Version_of_ProB


### Result of research:

#### 1.Set cardinal of different SET:
- using GUI and model files
```
DEFINITIONS
      scope_<SET_NAME> == <number>
```
ex.:
     scope_PERSON == 10000

- using cli
```
-card <SET> <nr>
```
ex.:
	> probcli  test.mch -card PERSON 100 
	

#### 2.Set preferences
- using GUI and model files
```
DEFINITIONS
    SET_PREF_<PREF_NAME> == <number>
```
ex.
   SET_PREF_MAXINT == 10000

- using cli
```
-p <PREFERENCE> <VALUE>
```
ex.:
	> probcli -cbc_tests <Depth> <EndPredicate> <xmlFile> -p MAXINT 101 -card PERSON 100 <machineName>

##### Link for SET_PREF and scope_SET in UI:
http://stups.hhu.de/ProB/w/Tutorial_Complete_Model_Checking#Deferred_Sets

#### 3.MC/DC Coverage

The UI of the MC/DC Analysis is still experimental.

Currently MC/DC coverage is used in two ways:

- for the coverage for the invariants, where the invariant is expected to be true (i.e., the analysis does not expect to find states where the invariant is false)
- for the coverage for the event guards. Here it is expected that every event can be enabled or disabled.

##### Link:
http://stups.hhu.de/ProB/w/State_Space_Coverage_Analyses


#### 4.MC local test case generation

The purpose of the local test-case generation algorithm is to translate high-level testcases to a refinement model.

The idea is to achieve full event coverage for a high-level global abstract model (which may have an event such as sendInvoice) and then translate these test-cases into "local" test cases for a refined model with different entities.
E.g., a high-level event sendInvoice may have to be translated into startSendInvoice(Id,from,to), ReceiveInvoice(Id,from,to), SendAck ... .  
Those low-level, "local" events can be interleaved with realizations of other events.


##### Link:
http://stups.hhu.de/mediawiki/images/3/35/Pub-WiKoRoLeBePlSc09_252.pdf


##### ProB Users:
https://groups.google.com/forum/?hl=en-GB#!topic/prob-users/ZstyqkHPSrw
