requirejs(['bmotion.template'], function (bms) {
	
	//Formula Observer Displaying the Current Floor
	bms.observe("formula", {
	  selector: "#txt_cur_floor",
	  formulas: ["cur_floor"],
	  trigger: function (origin, result) {
		origin.text(result[0])
	  }
	});
	
	//Formula Observer for the Lift Door
	bms.observe("formula", {
	  selector: "#door",
	  formulas: ["cur_floor", "door_open"],
	  trigger: function (origin, result) {
		
		switch (result[0]) {
		  case "0":
			origin.attr("y", "175");
			break;
		  case "1":
			origin.attr("y", "60");
			break;
		  case "-1":
			origin.attr("y", "275");
			break;
		}
		
		if(result[1] === "TRUE") {
		  origin.attr("fill", "white");
		} else {
		  origin.attr("fill", "lightgray");
		}
		
	  }
	});
	
	//Interactive Feature
	bms.executeEvent({
	  selector: "text[data-floor]",
	  events: [
		{
		  name: "push_call_button", 
		  predicate: function (origin) {
			return "b=" + $(origin).attr("data-floor")
		  }
		}
	  ]
	});

	
	//Interaction with the Lift Door
	bms.executeEvent({
	  selector: "#door",
	  events: [
		{ name: "close_door" }, 
		{ name: "open_door" }
	  ]
	});
	
});