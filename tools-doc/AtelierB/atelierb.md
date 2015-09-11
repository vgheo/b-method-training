
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


Known Issues
============

## ISS1. cannot use record with sequence field

Applies for: AtelierB  4.2.1

Sample :ISS1_REC.mch

CONFIRMED by ClearSy - email.
>It seems that sequence [FALSE] is not correctly interpreted. We think we can fix this for the next release.
>A workaround is to use a constant with this property "one_false = [FALSE]". And you use this constant in sequence.

Work-around: define a constant for the list expression.

## ISS_inc_prefix. ATB unable to process model using prefixed includes.

Applies for: AtelierB 4.2.1

B model : ./ISS_inc_prefix

ATB gives invalid error.

### ERR1

Location: MM_i - 

    ERR1a: "Error: Left hand side and right hand side of vv:=a2.opx2 have incompatible type"
    ERR1b: "Error: Left hand side and right hand side of vv:=b2.opx2 have incompatible type"

### ERR2

Location: MM_i2 - 
ERR2: "Error: Operation a1.opx1 does not exist in Machine MM"

