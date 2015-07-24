

## Move group of elements

### Variant A - using g + transform

Elements are grouped by g tag. The position of the group can be altered using the transform attribute of the g element.

See sample svg:
``` 
../training/bmotion
 	/lift.svg
 	/stript.js
```

### Variant A - using svg sub-element + x/y attributes

Sample: `../training/bmotion/lift_v2.svg`


## Reuse elements in SVG

Tutorial : http://tympanus.net/codrops/2015/07/16/styling-svg-use-content-css/

- g - group 
	- equivalent to "layer" concept of graphic editors
	- apply comon styles; transofrms
- defs - define elements to be reused later
	- similar to a template
	- rendered only when instantiated
	- used for gratients
- symbol - 
	- used for icons
	- viewBox attr
	
- use - reference element defined elsewhere
	- instantiate a defs/g/symbol
	- concept: copy/paste
	- xlink:href attribute - with ID value
	- instantiate: shadow DOM


Inkskape - [symbol use](http://wiki.inkscape.org/wiki/index.php/SymbolsDialog)

[Sample - diagram](../svg/symbol_samples/diagram_symbol.svg)


## Tips & Tricks

See - [Chrome Tips And Tricks](https://developer.chrome.com/devtools/docs/tips-and-tricks#inspect-shadow-dom)

### Inspect shadow DOM  (for svg:use) - Chrome
To enable : Inspector > Settings > Show user agent shadow DOM = yes




