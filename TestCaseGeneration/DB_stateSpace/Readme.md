### State Space

Source file: b-method-training\atelierb\DatabaseSystem\INNER_INTERFACE_i.imp

Command line: 
>probcli INNER_INTERFACE_i.imp -cbc_tests 1000 "" testcases_Inner_Interface_imp.xml -save stateSpace_InnerInterface_imp.xml

Output file: stateSpace_InnerInterface_imp.xml

Data Format Output:
```
spec_trans(root,'$initialise_machine',1).
spec_trans(0,'$initialise_machine',1).

spec_trans(<depth>,<operation_name>,<transitions_number>).

spec_not_all_transitions_added(2).
spec_not_all_transitions_added(1).
spec_not_all_transitions_added(0).
spec_not_all_transitions_added(root).
spec_max_reached_for_node(_) :-
        fail.
spec_completely_explored :-
        fail.

```