

# Issues & Limitations of ProB tools

ProB tools: 
- homepage.
- [bug tracker](https://probjira.atlassian.net/secure/Dashboard.jspa)


## ProB - Unsupported B language features

Valid for: `ProB 1.5.0-final 3bc086f2be4b309869fcab31325ede65f8d27277`

NOT SUPPORTED:
- VALUES clause
    - see related [post](https://groups.google.com/forum/#!topic/prob-users/ObdhVgF0dpY)
- tuples without parentheses
- c++ - style comments
    - supported in atelier-b    
 
- Unicode versions for Certain operators
    - `:`
    - '&`
    - `<+`
    - (...)

## BMS/webkit - svg:symbol limited usage
(webkit issue ) - svg:symbol - symbol definition cannot "use" a symbol defined in another file
    - using symbols in the same file works

