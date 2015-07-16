

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
	
- Determine if AtelierB uses absolute or relative paths for referencing different files 
	- If path resolution is absolute manual intervention in workspace reference will generate a permanent conflict in push/pull sequences in Git 
	- If path resolution is relative we must define a mutual folder to report to 
	
### Solution
#### Variant A
- AtelierB workspace - local 
- AtelierB project - local 
- component files - in sub-directory under Version Control


Setup AtelierB to import existing component:
- Create new project in existing workspace and add component to this project from shared version from VCS(git) working directory


ISSUES:
- all generated files (POs) are not under Version control
- Interactive Proofs - not under version control
   

#### Variant B
- AtelierB workspace - under Version Control
- AtelierB project - under Version Control 
- component files - under directory of the Project (under Version Control)

Constraint: The Workspace and Project directories must be **at the same absolute path** on all hosts 
where AtelierB is used on these workspaces/projects.

  	




