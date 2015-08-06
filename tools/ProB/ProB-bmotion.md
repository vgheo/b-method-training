# Notes on ProB and related tools

For currently knonwn limitations see [ProB-issues.md](ProB-issues.md).

## ProB - core


## ProB - BMotionStutio stand-alone

Uses Webkit to render html/svg/js.


### node-webkit

ProB - BMS is an app framework built on [node-webkit](https://github.com/nwjs/nw.js)

See [tutorial](https://gentlenode.com/journal/node-webkit-1-complete-cheatsheet/26).

- Access the window object - from JS console: `gui.Window.get()`

In JS context:
```
	var gui = require('nw.gui');
	gui.Window.get().zoomLevel = +1
```
