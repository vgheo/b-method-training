# ProB Test Case Generation

###Initialization:
In ProB:
	- Preferences -> User Mode -> Normal -> restart ProB
	
###Test generation:
In ProB:
	- Analyse -> Testing -> Constraint-based test case generation
	- Write : -> test name
			  -> predicate in B or maximum search depth
	- Select operations
	- Target event must be final only (don't check)
	- Result an xml file
	
###Obs
	- Events/tests are not created in case of operations that are not called, but they are defined in machines which the base machine (mch or imp) has access to
	Ex. Machine M1.imp has SEES M2 and call op1 from M2. M2 has operation op1, op2, etc.
	
Use translator (script/program in java, c, python) to convert .xml in cppunit:
	- tbd
	
##### And research: http://stups.hhu.de/ProB/w/Test_Case_Generation
