/* M
 * Author: vgheorgh
 * Creation date: 10/27/2015
 
 This model shows ATB 4.2.1 issue regarding processing of machine instantiation 
 with same operation names defined in different included mahcines. 
 */
MACHINE
    MM

INCLUDES  aa.AA, bb.BB

//  PROMOTES aa.op   - OK - no errors
     
PROMOTES bb.op // ATB: Error: bb.op does not exist or is not a visible operation


OPERATIONS
    
    use_aa = BEGIN aa.op END;
    
    use_bb = BEGIN bb.op END // No error. NOTE : this proves that bb.op is actually visible

END
