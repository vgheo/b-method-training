

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

// TODO - use factorization ..


requirejs(['bmotion.template'], function (bms) {
    
		
	bms.executeEvent({
		  selector: "#1",
		  events: [
		   		{
		   		  name: "issueOp", 
		   		  predicate: function (origin) {
					var viewId = origin.attr("id");
					var opr = viewId[0];
					return "xx=" + opr;
		   		  }
		   		},
				{
		   		  name: "issueOp", 
				  predicate: function (origin) {
					var viewId = origin.attr("id");
					var opr = viewId[0];
					return "xx=" + opr;
		   		  }
		   		}
		   	  ]
	});
	bms.executeEvent({
		  selector: "#2",
		  events: [
		   		{
		   		  name: "issueOp2", 
		   		  predicate: function (origin) {
					var viewId = origin.attr("id");
					var opr = viewId[0];
					return "xx=" + opr;
		   		  }
		   		},
				{
		   		  name: "issueOp2", 
		   		  predicate: function (origin) {
					var viewId = origin.attr("id");
					var opr = viewId[0];
					return "xx=" + opr;
		   		  }
		   		}
		   	  ]
	});
	bms.executeEvent({
		  selector: "#3",
		  events: [
		   		{
		   		  name: "workingOp", 
		   		},
				{
		   		  name: "workingOp", 
		   		 }
		   	  ]
	});
	
});

