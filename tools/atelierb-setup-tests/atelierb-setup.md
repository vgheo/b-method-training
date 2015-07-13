

AtelierB configuration notes
===================




## Setup AtelierB Projects for team collaboration using Version Control


### Analysis of AtelierB persistence implementation

- Workspace - WS_DIR/bdb 
- Project
	- assuming proejct name = PRJ_NAME
	- workspace reference: WS_DIR/bdb/PRJ_NAME.desc
		- **USES ABSOLUTE PATHS**
	- project database (dir): PRJ_DIR/bdp
	- project translations (dir):PRJ_DIR/lang
- Component 
	- name COMP_NAME
	- project reference in PRJ_DIR/bdp/PRJ_NAME.db
		- eg. `<component_file path="D:\bmethod\b-method-training\LiftSys" name="Lift" suffix="mch" user="vgheorgh">`
		- **USES ABSOLUTE PATHS**
	- checksum? : PRJ_DIR/bdp/COMP_NAME.dep
	
	
	
### Variant A. 
