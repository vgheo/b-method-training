# Translator ProB XML to CppUnit

###Structure of project:
Classes:
```
	Const.java               - class for constants
	ConvertXmlToCppUnit.java - main class
	StructValue.java         - used like a structure with 3 field {type, name, value}
	TestCase.java            - class for storing initialisation values and steps of a test case
	TestCasesParser.java     - use SAXParser for parse XML
	WriteOutput.java         - write the result in .cpp output file
```

###Extern files needed for run project:
	template_comment
	test_cbc.xml
	
### OBS output:
	The result will be written in TestDataChannelFunctionality.cpp file defined in Const.java
	
###Details about parsing XML:
- class TestCase
	- ArrayList<StructValue> initialisations; //  list with variables that have the following attributes {type, name, value}
	- LinkedHashMap<String, ArrayList<StructValue>> operations; // hashmap: key = name of step, value = the set of parameters of step