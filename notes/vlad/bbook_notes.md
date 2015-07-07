
B-Book - Reading Notes
======================
	
## ch. 4. Introduction to Abstract Machines

non-terminatig substitution
- a guarded substitution for which the guard does not hold
- model of a program "crash"

Parametrization - leave open a number of *finite* dimensions
* to be defined later (refinement/instantiation)
* scalars or finite, non-empty sets
* formal set parameters are **independent** sets

Implicit constants: ```maxint, minint, INT, NAT, NAT1```

Operation parameters

Operation - output parameters

"User" of the machine - specified interface must provide enough information so that 
the user can check the required preconditions _on the user's side_.

e.g. sufficient variables, that are used in the precondition specification.

=> formal model of Application Conditions !

Remark: specification is NOT concered with Quality Attribute requirements
* such as preformance 
* book - makes distinction between spec - operations and implementation - procedures
	* implementation of an operation MAY be a procedure, OR may be 
	inline (e.g. variable read accees)

"Specifying only consists in building *understandable models*, not *executable* programs."

### 4.11 Generous vs Defensive spec style

Defensive - characteristic : PRE does not depend on the machine's state. 
(only for typing and parameter's consistency)



