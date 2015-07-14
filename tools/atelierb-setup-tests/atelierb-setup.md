

AtelierB configuration notes
===================




## Setup AtelierB Projects for team collaboration using Version Control


### Analysis of AtelierB persistence implementation

- Workspace - WS_DIR/bdb 
- Project
	- assuming project name = PRJ_NAME
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
	
	
	
### Variant A

- Determine if path resolution is absolute or relative to a certain folder 
	- If path resolution is absolute manual intervention in workspace reference will generate a permanent conflict in push/pull sequences in Git 
	- If path resolution is relative we must define a mutual folder to report to 
	
### Variant B

- Create new project in existing workspace and add component to this project from shared version from git working directory
	


