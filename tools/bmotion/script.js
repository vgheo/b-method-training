
requirejs(['bmotion.template'], function (bms) {
    
		
	bms.executeEvent({
		  selector: "[class='operand']",
		  events: [
		   		{
		   		  name: "op2", 
		   		  predicate: function (origin) {
					var viewId = origin.attr("id").split("."); 
					var opr = viewId[0];
					var operationName = viewId[1];
					
					console.log("### values: " + opr + "." + operationName);
					return "xx=" + opr;
		   		  }
		   		},
				{
		   		  name: "op2", 
		   		  predicate: function (origin) {
					var viewId = origin.attr("id").split("."); 
					var opr = viewId[0];
					var operationName = viewId[1];
					
					console.log("### values: " + opr + "." + operationName);
					return "xx=" + opr;
		   		  }
		   		}
		   	  ]
	});
	
	
});

