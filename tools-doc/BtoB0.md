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