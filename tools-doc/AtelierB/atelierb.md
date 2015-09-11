
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

Sample :ISS1_REC.mch

CONFIRMED by ClearSy - email.
>It seems that sequence [FALSE] is not correctly interpreted. We think we can fix this for the next release.
>A workaround is to use a constant with this property "one_false = [FALSE]". And you use this constant in sequence.

Work-around: define a constant for the list expression.
