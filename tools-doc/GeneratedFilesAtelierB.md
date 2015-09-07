
AtelierB Generated Files
===

###MACHINE files(.mch)

All these files are translated into headers files in C(.h).They contain only the variables declarations and function declarations.

All of these are declared with "extern" keyword because they will be implemented in other files.

All functions have return type void and and pointers as auxilliary paramters in order to have return parameters(even multiple ones).

###REFINEMENT(.ref)

These files are not translated into C.

###IMPLEMENTATION(.imp)

These files  will contain the variables' initialisation and functions' body for each of the corresponding header file.

## Note 
If a header files doe not have a corresponding C files it is left to the user's  latitude how to implement those functionalityes.

# ! These are the only files that AtelierB's code generator provides.
