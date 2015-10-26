
Usage notes Atelier-B
=====================


Setup for projects shared with git
---------------------------------

Due to some limitations in the tool, the git repository containing the workspace/projects MUST be at a fixed path on
all machines.

Path : `A:\b-method-training\`

NOTE. AtelierB saves *absolute paths* in the configuration files. Therefore, the referenced files must actually exist at those paths
on all hosts where AtelierB is run to access the workspace and projects working with such files.

NOTE2. This can be achieved by using a drive mapping on windows (see net use command) on the UNC path like  
`\\localhost\d$\...`.


See details [here](atelierb-setup-tests\atelierb-setup.md#Variant B)

## Using multiple machine instantiation - INCLUDES/IMPORTS with prefix

Sample model: [ISS_inc_prefix](ISS_inc_prefix)


Rules
- All operations of abstract machine, declared or from INCLUDED machines, must be implemented in the implementation
    - e.g. MM:a1.opx1
- An operation defined by the abstract machine by INCLUDES/PROMOTES m:op can be implemented by IMPORT/PROMOTES m:op  
    - e.g. MM:a1.opx1, MM_i2

Note : This was a reported as an ATB issue - that later proved to be invalid.
Thanks to ClearSy/Etienne Prun <etienne.prun@clearsy.com> for the support on this topic. 

Known Issues
============

## ISS1. cannot use record with sequence field

Applies for: AtelierB  4.2.1

Sample :ISS1_REC.mch

CONFIRMED by ClearSy - email.
>It seems that sequence [FALSE] is not correctly interpreted. We think we can fix this for the next release.
>A workaround is to use a constant with this property "one_false = [FALSE]". And you use this constant in sequence.

Work-around: define a constant for the list expression.

## ISS_inc_prefix2

Sample model: [ISS_inc_prefix](ISS_inc_prefix)

Invalid error on accessing operation from and INLCUDES chain with mixed prefix/non-prefix. (NOT CONFIRMED)
> Error: b1.opx1 does not exist or is not a visible operation

## ISS_formal_params

Sets formal parameters shall NOT contain
* lowercase letters
* numbers

Allowed:
* uppercase letters
* '_'

Note: The Brefmanual only states 'no lowercase'.


