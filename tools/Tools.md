

This file contains user notes for the various tools used in this project.

# Markdown / GFM
We use markdown as the preferred format for documentation files.

Tools:

- Edit:
	- Notepad++ 
		- with md/GFM highlighting - not found		
	- [Eclipse - Markdown Editor](http://marketplace.eclipse.org/content/markdown-text-editor)
		- install from [zip](http://sourceforge.net/projects/nodeclipse/files/update-site-archive/)
		
- View only
	- Chrome viewer plugins
		- [Markdown preview](https://chrome.google.com/webstore/detail/markdown-preview/jmchmkecamhbiokiopfpnfgbidieafmd/related?hl=en-US)
			- (+) 
		- [Markdown Preview Plus](https://chrome.google.com/webstore/detail/markdown-preview-plus/febilkbfcbhebfnokafefeacimjdckgl?hl=en-US)
			- (+) auto reload
			- (+) has GFM compatibility
			- (+) renders properly list on next line after paragraph line
		- [Markdown viewer](https://chrome.google.com/webstore/detail/markdown-viewer/ckkdlimhmcjmikdlpkmbgfkaikojcbjk?hl=en-US)
			
			
			
		
NOTE chrome extension installation 
- A) installation by IT only - alternate proxy
- B) install by .crx file 
	- repacked .crx files : `\\robucsw111\RND\RD_DE_ESTW\L905\Kits\chrome\`
	- [repack instructions](https://productforums.google.com/forum/#!topic/chrome/g02KlhK12fU)

	
Related links
- [stackoverflow](http://stackoverflow.com/questions/9843609/view-markdown-files-offline)
- [Markdown basics](https://help.github.com/articles/markdown-basics/)

# git 

## ISSUE - cannot create bare repo on FS

### Context

* vgheorgh@robucnw079 - ok
```
  vgheorgh@ROBUCNW079 //robucsw111/RND/RD_DE_ESTW/L905/B_Method/shared/Project
  $ git init --bare test1.git
  Initialized empty Git repository in //robucsw111/RND/RD_DE_ESTW/L905/B_Method/sh
  ared/Project/test1.git/
```
* Adrian - NOK:
```
T0164930@ROBUCDW201 //robucsw111/RND/RD_DE_ESTW/L905/b_method/shared/Project
$ git init --bare test2.git
error: unable to create directory for //robucsw111/RND/RD_DE_ESTW/L905/b_method/
shared/Project/test2.git/HEAD
```

### Related info
[msysgit list - thread 1](https://groups.google.com/forum/#!topic/msysgit/kAYExfllAh4)
