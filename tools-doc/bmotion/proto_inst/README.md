

# proto_inst - prob/bms visualisation prototype

Model : Design\B_Model\proto_inst
Diagram : proto_inst.svg



## Model 1 - using INCLUDE

M1.mch, M2.mch

We use PROMOTES in M1 to make accessible hte operations form M2.

## Test results

### TEST: access operations of included machines
- ProB - PASS
- BMS - PASS

### TEST: access variables of included machines
- ProB - PASS
- BMS - FAIL
	- ISSUE1. variables of included machines are not accessible in the States window 
		- we assume that are not loaded at all
		- [prob-users post](https://groups.google.com/forum/#!topic/prob-users/gZMzE7Cxq9g)
		
### TEST: locat SVG elements by chained uses identifiers
- BMS: ?


## Model 2- using IMPORT

This feature is needed for "large" developments.  Current version of l905 B model uses IMPORTS.




## BMS Visualisation
State Mapping

A.vv  - #IXL_A/#use_track_area/#T1
B.vv  - #IXL_B/#use_track_area/#T1

Operation Mapping
None (use default UI)

