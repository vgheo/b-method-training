

## ProB - core

### Limitations

NOT SUPPORTED:
- VALUES clause
- tuples without parentheses
 
 
## ProB - BMotionStutio stand-alone

Uses Webkit to render html/svg/js.

### Limitations

- (webkit) - svg:symbol - symbol definition cannot "use" a symbol defined in another file
	- using symbols in the same file works

### node-webkit

ProB - BMS is an app framework built on [node-webkit](https://github.com/nwjs/nw.js)

See [tutorial](https://gentlenode.com/journal/node-webkit-1-complete-cheatsheet/26).

- Access the window object - from JS console: `gui.Window.get()`
- `gui.Window.get().zoomLevel = +1`
