

# Issues & Limitations of ProB tools

ProB tools: 
- homepage.
- [bug tracker](https://probjira.atlassian.net/secure/Dashboard.jspa)


## ProB-core issues

Valid for: `ProB 1.5.0-final 3bc086f2be4b309869fcab31325ede65f8d27277`


### JIRA Tracker
[Open issues - JIRA tracker](https://probjira.atlassian.net/projects/PROB/issues?filter=allopenissues)

#### PROB-403 incorrect error reported for constant defined in machine with multiple instances

[PROB-403](https://probjira.atlassian.net/browse/PROB-403)

* [Local test case](samples/prob_iss1)


### Documented on ProB wiki
http://stups.hhu.de/ProB/w/Current_Limitations

#### Cardinality
#### closure operator
#### VALUES not supported
#### Parsing
>ProB will require parentheses around the comma, the relational composition, and parallel product operators.
#### Multiple Machines and Refinements

> While refinements are supported, the preconditions of operations are not propagated down to refinement machines. 
> This means that you should rewrite the preconditions of operations (and, if necessary, reformulate them in terms of the variables of the refinement machine)

>Also, the refinement checker does yet check the gluing invariant.

### ProB - Unsupported B language features


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

### '//' comments not supported

[report on prob-users forum](https://groups.google.com/forum/#!topic/prob-users/FLq1ftxJ34A)
[issue](https://probjira.atlassian.net/browse/PARSERLIB-37)



## bmotionstudio-prob issues


### BMS/webkit - svg:symbol limited usage
- (webkit issue) svg:symbol - symbol definition cannot "use" a symbol defined in another file
    - using symbols in the same file works

### Cannot access features of renamed included/imported machines


### Operations calling other operations are not accessible   
- Tooltip doesn't display values 
    -  see [ProB group post](https://groups.google.com/forum/?hl=en-GB#!topic/prob-users/aK23vH5kjUk)     
    
### BMSPROB-2 BMS does not provide a UI label for Events [FIXED]
https://probjira.atlassian.net/projects/BMSPROB/issues/BMSPROB-2

- Very large predicates cannot be substituted by a tag
    -  see [ProB group post](https://groups.google.com/forum/?hl=en-GB#!topic/prob-users/aK23vH5kjUk) 
    
