requirejs(['bmotion.template'], function (bms) {

    /*
	 * Observer Displaying the Current Floor
	 */
	 
	bms.observe("formula", {
	  selector: "#txt_cur_floor",           // id element graphic -> origin
	  formulas: ["cur_floor"],              // (formulas) variable B -> result
	  trigger: function (origin, result) {
		origin.text(result[0])
	  }
	});
	
	/*
	 * Observer for the Lift(move lift up/down)
	 */
	 
	bms.observe("formula", {
	  selector: "#lift",
	  formulas: ["cur_floor"],
	  trigger: function (origin, result) {
		
		/*var svgFloor1 = document.getElementById("txt_floor1");
		var svgFloor0 = document.getElementById("txt_floor0");
		var svgFloor_1 = document.getElementById("txt_floor-1");
		var svgDoor = document.getElementById("door");*/
		
		var svgGroup = document.getElementById("lift");
		
		switch (result[0]) {
		  case "0":
		    {
				svgGroup.setAttribute("transform", "translate(0, -100)");
				/*svgDoor.setAttribute("y", "175");
				svgFloor1.setAttribute("y", "190");
				svgFloor0.setAttribute("y", "220");
				svgFloor_1.setAttribute("y", "250");*/
				//origin.attr("y", "175");
			}
			break;
		  case "1":
			{
				svgGroup.setAttribute("transform", "translate(0, -220)");
				/*svgDoor.setAttribute("y", "60");
				svgFloor1.setAttribute("y", "75");
				svgFloor0.setAttribute("y", "105");
				svgFloor_1.setAttribute("y", "135");*/
				//origin.attr("y", "60");
			}
			break;
		  case "-1":
			{
				svgGroup.setAttribute("transform", "translate(0, 0)");
				/*svgDoor.setAttribute("y", "275");
				svgFloor1.setAttribute("y", "290");
				svgFloor0.setAttribute("y", "320");
				svgFloor_1.setAttribute("y", "350");*/
				//origin.attr("y", "275");
			}
			break;
		}
	  }
	});
	
	/*
	 * Observer for Door(white/gray)
	 */
	 
	bms.observe("formula", {
	  selector: "#door",
	  formulas: ["door_open"],
	  trigger: function (origin, result) {
		
		if(result[0] === "TRUE") {
		  origin.attr("fill", "white");
		} else {
		  origin.attr("fill", "lightgray");
		}
		
	  }
	});
	
/*
// Refactoring up --------------------------------------------------------------	

	// Formula Observer for floor 1 inside
	bms.observe("formula", {
	  selector: "#txt_floor1",
	  formulas: ["cur_floor"],
	  trigger: function (origin, result) {
		
		switch (result[0]) {
		  case "0":
			origin.attr("y", "190");
			break;
		  case "1":
			origin.attr("y", "75");
			break;
		  case "-1":
			origin.attr("y", "290");
			break;
		}
		
	  }
	});
	// Formula Observer for floor 0 inside
	bms.observe("formula", {
	  selector: "#txt_floor0",
	  formulas: ["cur_floor"],
	  trigger: function (origin, result) {
		
		switch (result[0]) {
		  case "0":
			origin.attr("y", "220");
			break;
		  case "1":
			origin.attr("y", "105");
			break;
		  case "-1":
			origin.attr("y", "320");
			break;
		}
		
	  }
	});
	// Formula Observer for floor -1 inside
	bms.observe("formula", {
	  selector: "#txt_floor-1",
	  formulas: ["cur_floor"],
	  trigger: function (origin, result) {
		
		switch (result[0]) {
		  case "0":
			origin.attr("y", "250");
			break;
		  case "1":
			origin.attr("y", "135");
			break;
		  case "-1":
			origin.attr("y", "350");
			break;
		}
		
	  }
	});
*/
//----------------------------------------------------------------------
	
	/*
	 * Observer bold floor : push call button
	 * NOTE.  call_buttons B Set is transferred as string.
     */
	 
	bms.observe("formula", {
        selector: "text[data-floor]",      // id element graphic -> origin
        formulas: ["call_buttons"],        // (formulas) variable B -> data
        trigger: function (origin, data) {
			
			// Parse set from string into js list
			var buttons = (data[0].replace(/{|}/g, "")).split(",");
			
			if (buttons.indexOf(origin.attr("data-floor")) >= 0)
				origin.attr("font-weight", "bold");
			else origin.attr("font-weight", "none");

        }
    });
	
	/*
     * Observer bold floor : push inside button
	 * NOTE.  call_buttons B Set is transferred as string.
	 */
	 
	bms.observe("formula", {
        selector: "text[data-floor_inside]",      // id element graphic -> origin
        formulas: ["inside_buttons"],             // (formulas) variable B -> data
        trigger: function (origin, data) {
			
			// Parse set from string into js list
			var buttons = (data[0].replace(/{|}/g, "")).split(",");
			
			if (buttons.indexOf(origin.attr("data-floor_inside")) >= 0)
				origin.attr("font-weight", "bold");
			else origin.attr("font-weight", "none");

        }
    });
	
	/*
     * Observer for direction up/down
	 */
	 
	bms.observe("formula", {
        selector: "#txt_direction",
        formulas: ["direction_up"],
        trigger: function (origin, result) {
			var dir = result[0] == "TRUE" ? "UP" : "DOWN";
			origin.text('Direction: ' + dir);
        }
    });
	
	/*
	 * Interactive Feature: floor - push call button
	 */
	 
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

	/*
     * Interactive Feature: floor - push inside button
	 */
	 
	bms.executeEvent({
	  selector: "text[data-floor_inside]",
	  events: [
		{
		  name: "push_inside_button", 
		  predicate: function (origin) {
			return "b=" + $(origin).attr("data-floor_inside")
		  }
		}
	  ]
	});
	
	/*
	 * Interactive Feature : the Lift Door - open/close
	 */
	 
	bms.executeEvent({
	  selector: "#door",
	  events: [
		{ name: "close_door" }, 
		{ name: "open_door" }
	  ]
	});

	/*
	 * Event: button move up
	 */
	 
	bms.executeEvent({
        selector: "#bt_move_up",
        events: [{name: "move_up"}]
    });

	/*
	 * Event: button move down
	 */
	 
    bms.executeEvent({
        selector: "#bt_move_down",
        events: [{name: "move_down"}]
    });
	
	/*
	 * Event: label direction
	 */
	 
    bms.executeEvent({
        selector: "#txt_direction",
        events: [
			{name: "reverse_lift_up"}, 
			{name: "reverse_lift_down"}
		]
    });
});