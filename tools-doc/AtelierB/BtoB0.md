### B to B0 tips & fixes

1. Use (a..b) instead of {a,b} and use invariant conditions to eliminate undesired elements
2. Use concrete typing 
 - initial  
 ```  
    max_pers = card ( x )
```
 - fixed
```
    max_pers : NAT&
    max_pers = card ( x )
 ```
3. Use concrete type for all sets in which the variable is included
 - initial  
 ```  
   set1 <: set2
OPERATION
op(xx) =
    PRE
        xx : set1
    THEN    
        skip
END
```
 - fixed
```
 set1 <: set2
OPERATION
op(xx) =
    PRE
        xx : set1&
        xx : set2
    THEN    
        skip
END
```
4. Use concrete type with unbounded choice substitution
 - initial  
```  
 xx<--do_stuff =
    CHOICE
        xx::AAA 
    OR
        xx::BBB 
    END;
```
 - fix
```
    xx<--do_stuff =
    CHOICE
        /*parameter is not implementable(typed with abstract variable BBB)*/
        ANY xx0 WHERE 
            xx0 : BBB
            & xx0 : AAA /* original statement */
        THEN
            xx:=pp0 
        END
    OR
        pp::BBB
    END;
```
5. Code generator does not translates SETS formal parameters of a machine

 - initial  
```  
       MACHINE MA(SET1,SET2)
           VARIABLES
            var1
       INTIALISATION
           var1::SET1
       INVARIANT
           var1 : SET1
.........

       MACHINE MB
       INCLUDES MA(VALUEofSET1, VALUEofSET2)
/*or any other clause that implicates the instantation of MA with effective parameters*/

       DEFINITIONS
           VALUEofSET1 == something1
           VALUEofSET2 == something2
...
```
 - fix
 
```  
       MACHINE MA
        VARIABLES
           var1
       INTIALISATION
           var1::SET1
       INVARIANT
           var1 : SET1
       DEFINITIONS
           SET1 == VALUEofSET1
           SET@ == VALUEofSET2
.........

        MACHINE MB
I       INCLUDES MA
/*or any other clause that implicates the instantation of MA with effective parameters*/

        DEFINITIONS
          VALUEofSET1 == something1
          VALUEofSET2 == something2
```
