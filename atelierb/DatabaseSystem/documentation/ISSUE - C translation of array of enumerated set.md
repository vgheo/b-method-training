
C translation of array of enumerated set 
===

####Context of issue

Having the next machine :
 
```
MACHINE
    array
SETS
    ArraySET = {val1,val2}
CONCRETE_CONSTANTS
    code
PROPERTIES
    code : ArraySET >->> (0..1) 
END
```

The declaration "code : ArraySET >->> (0..1)" is not translated in C programming language.Moreover the translator gives the following error:
"Unknown type for array dimension. (ComenC2) C translator error in array."

However this machine passes the B0 check and accordingly to B Language Reference Manual it is a valid construction that can be translated into C(sections 3.4 and 7.25.1).

####Solution attempts

Because this is not a syntactic error and because the construction is corect accordingly to the B Language Reference Manual, I have contacted Clearsy,
the company which provides support for this tool, at maintenance.atelierb@clearsy.com.

Firstly they proposed a workaround, that implicated creating an implementation and a new variabile that will take the concrete values necessary.Here is their example:

```
MACHINE 
ar
SETS
ArraySET = {val1,val2}
CONCRETE_CONSTANTS
code
PROPERTIES
code : ArraySET >->> (0..1) 
OPERATIONS
op1 = skip
END


IMPLEMENTATION ar_i 
REFINES ar
CONCRETE_VARIABLES
tab
INVARIANT
tab: ArraySET --> 0..1
INITIALISATION
tab := ArraySET * {0}
VALUES
code = {val1 |->0, val2 |-> 1}
OPERATIONS
op1 =
BEGIN
tab := code
END
END
```

And also they have attached the generated code from this solution:

```
ar.h:
#ifndef _ar_h
#define _ar_h

#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */
typedef enum
{
    ar__val1,
    ar__val2
    
} ar__ArraySET;
#define ar__ArraySET__max 2

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
extern void ar__INITIALISATION(void);

/* Clause OPERATIONS */

extern void ar__op1(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _ar_h */
 
ar.c
#include "ar.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static int32_t ar__tab[2];
/* Clause INITIALISATION */
void ar__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= ar__ArraySET__max-1;i++)
    {
        ar__tab[i] = 0;
    }
}

/* Clause OPERATIONS */

void ar__op1(void)
{
    memmove(ar__tab,ar__code,2 * sizeof(int32_t));
}

```

However when I implemented this solution on my initial example the code generator errors have persisted.I send a reply to Clearsy,attaching my example :

```
MACHINE
array
SETS
ArraySET = {val1,val2}
CONCRETE_CONSTANTS
code
PROPERTIES
code : ArraySET >->> (0..1)  /*Unknown type for array dimension*/
OPERATIONS
op1 = skip
END
 
IMPLEMENTATION array_i
REFINES array
CONCRETE_VARIABLES
tab
INVARIANT
tab:ArraySET --> 0..1  /*Unknown type for array dimension*/
INITIALISATION
tab:=ArraySET * {0}
VALUES
code = {val1|->0,val2|->1}
OPERATIONS
op1=
BEGIN
tab:=code
END
END
 
And in the end this message is also displayed : (ComenC2) C translator error in array_i.
```

Also I have attached what the code generator did in this case:
```
--array.h—

#ifndef _array_h
#define _array_h
 
#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */
 
 
/* Clause SETS */
typedef enum
{
    array__val1,
    array__val2
    
} array__ArraySET;
 
/* Clause CONCRETE_VARIABLES */
 
 
/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
 
/* Array and record constants */
 
extern void array__INITIALISATION(void);
 
/* Clause OPERATIONS */
 
extern void array__op1(void);
 
#ifdef __cplusplus
}
#endif /* __cplusplus */
 
#endif /* _array_h */
 
 
--array.c--
 
#include "array.h"
 
/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
 
/* Array and record constants */
 
 
/* Clause CONCRETE_VARIABLES */
 
static 
/* Clause INITIALISATION */
void array__INITIALISATION(void)
{
```

This showed very clearly that the solution had the same problem.

The reply from Clearsy was "I guess it is due to the Atelier B Community version that probably contains errors corrected since then in the maintained version."

#####NOTE
The model above was implemented on latest version available(4.2.1).
