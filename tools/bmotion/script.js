
requirejs(['bmotion.template'], function (bms) {
    
		
	bms.executeEvent({
		  selector: "[class='issueop']",
		  events: [
		   		{
		   		  name: "issueOp", 
		   		  predicate: function (origin) {
					var viewId = origin.attr("id").split("."); 
					var opr = viewId[0];
					var operationName = viewId[1];
					
					console.log("### values: " + opr + "." + operationName);
					return "xx=" + opr;
		   		  }
		   		},
				{
		   		  name: "issueOp", 
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
	bms.executeEvent({
		  selector: "[class='workingop']",
		  events: [
		   		{
		   		  name: "workingOp", 
		   		  predicate: function (origin) {
					var viewId = origin.attr("id").split("."); 
					var opr = viewId[0];
					var operationName = viewId[1];
					
					console.log("### values: " + opr + "." + operationName);
			
		   		  }
		   		},
				{
		   		  name: "workingOp", 
		   		  predicate: function (origin) {
					var viewId = origin.attr("id").split("."); 
					var opr = viewId[0];
					var operationName = viewId[1];
					
					console.log("### values: " + opr + "." + operationName);

		   		  }
		   		}
		   	  ]
	});
	bms.executeEvent({
		  selector: "[class='issueop2']",
		  events: [
		   		{
		   		  name: "issueOp2", 
		   		  predicate: function (origin) {
					var viewId = origin.attr("id").split("."); 
					var opr = viewId[0];
					var operationName = viewId[1];
					
					console.log("### values: " + opr + "." + operationName);
					return "xx=" + opr;
		   		  }
		   		},
				{
		   		  name: "issueOp2", 
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

