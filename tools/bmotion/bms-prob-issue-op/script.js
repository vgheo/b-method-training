/*
 * 
 *   xx={origin.id}
 */
function predicateXXEquals(origin) {
	return "xx=" + origin.attr("id");
}

function registerOpEvent(bms, id, opName) {
	
	bms.executeEvent({
		  selector: "#" + id ,
		  events: [
		   		{ name: opName, predicate: predicateXXEquals },
				{ name: opName,  predicate: predicateXXEquals } // force tooltip to appear..
		   	  ]
	});
	
}  

requirejs(['bmotion.template'], function (bms) {
    
	registerOpEvent (bms, "1" , "issueOp");
	registerOpEvent (bms, "2" , "issueOp2");

	bms.executeEvent({
		  selector: "#3",
		  events: [
		   		{ name: "workingOp"},
				{ name: "workingOp"}
		   	  ]
	});
	
});

