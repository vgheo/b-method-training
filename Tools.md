

This file contains user notes for the various tools used in this project.

# Markdown / GFM
We use markdown as the preferred format for documentation files.

Recommended tools:
- Edit:
	- Notepad++ - with md/GFM highlightinh
	- Chrome viewer plugin
	
Related links
- [stackoverflow ](http://stackoverflow.com/questions/9843609/view-markdown-files-offline)

# git 

## ISSUE - cannot create bare repo on FS

### Context

* vgheorgh@robucnw079 - ok
  vgheorgh@ROBUCNW079 //robucsw111/RND/RD_DE_ESTW/L905/B_Method/shared/Project
  $ git init --bare test1.git
  Initialized empty Git repository in //robucsw111/RND/RD_DE_ESTW/L905/B_Method/sh
  ared/Project/test1.git/

* Adrian - NOK:
```
T0164930@ROBUCDW201 //robucsw111/RND/RD_DE_ESTW/L905/b_method/shared/Project
$ git init --bare test2.git
error: unable to create directory for //robucsw111/RND/RD_DE_ESTW/L905/b_method/
shared/Project/test2.git/HEAD
```

### Related info
[msysgit list - thread 1](https://groups.google.com/forum/#!topic/msysgit/kAYExfllAh4)

