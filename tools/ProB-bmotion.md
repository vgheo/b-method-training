

## ProB - core

### Limitations

NOT SUPPORTED:
- VALUES clause
	- see related [post](https://groups.google.com/forum/#!topic/prob-users/ObdhVgF0dpY)
- tuples without parentheses
- c++ - style comments
	- supported in atelier-b  	
 
## ProB - BMotionStutio stand-alone

Uses Webkit to render html/svg/js.

### Limitations

- (webkit) - svg:symbol - symbol definition cannot "use" a symbol defined in another file
	- using symbols in the same file works

### node-webkit

ProB - BMS is an app framework built on [node-webkit](https://github.com/nwjs/nw.js)

See [tutorial](https://gentlenode.com/journal/node-webkit-1-complete-cheatsheet/26).

- Access the window object - from JS console: `gui.Window.get()`

In JS context:
```
	var gui = require('nw.gui');
	gui.Window.get().zoomLevel = +1
```
