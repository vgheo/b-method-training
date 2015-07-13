requirejs(['bmotion.template'], function (bms) {

	// Formula Observer Displaying the Current Floor
	bms.observe("formula", {
	  selector: "#txt_cur_floor",           // id element grafic -> origin
	  formulas: ["cur_floor"],              // (formule) variabile B -> result
	  trigger: function (origin, result) {
		origin.text(result[0])
	  }
	});
	
	// Formula Observer for the Lift(move lift) and Door(white/gray)
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
// TODO: refactoring --------------------------------------------------------------	
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
	
// -----------------------------------------------------------------------------------------	
	// Observer bold call floor
	//  NOTE.  call_buttons B Set is transferred as string.
	// 
	bms.observe("formula", {
        selector: "text[data-floor]",      // id element grafic -> origin
        formulas: ["call_buttons"],        // (formule) variabile B -> data
        trigger: function (origin, data) {
			
			// Parse set from string into js list
			var buttons = (data[0].replace(/{|}/g, "")).split(",");
			//console.log("buttons = " + buttons);
			
			if (buttons.indexOf(origin.attr("data-floor")) >= 0) {
				//console.log("floor = " + origin.attr("data-floor"));
				origin.attr("font-weight", "bold");
			} else origin.attr("font-weight", "none");

        }
    });
	
	// Observer bold call floor inside
	bms.observe("formula", {
        selector: "text[data-floor_inside]",      // id element grafic -> origin
        formulas: ["inside_buttons"],             // (formule) variabile B -> data
        trigger: function (origin, data) {
			
			var buttons = (data[0].replace(/{|}/g, "")).split(",");
			//console.log("buttons = " + buttons);
			
			if (buttons.indexOf(origin.attr("data-floor_inside")) >= 0) {
				//console.log("floor = " + origin.attr("data-floor"));
				origin.attr("font-weight", "bold");
			} else origin.attr("font-weight", "none");

        }
    });
	
	// Observer for direction
	bms.observe("formula", {
        selector: "#txt_direction",
        formulas: ["direction_up"],
        trigger: function (origin, result) {
			var dir = result[0] == "TRUE" ? "UP" : "DOWN";
			origin.text('Direction: '+dir);
        }
    });
	
	// Interactive Feature: push call button
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

	// Interactive Feature: push inside button
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
	
	// Interactive with the Lift Door
	bms.executeEvent({
	  selector: "#door",
	  events: [
		{ name: "close_door" }, 
		{ name: "open_door" }
	  ]
	});

	// Event button move up
	bms.executeEvent({
        selector: "#bt_move_up",
        events: [{name: "move_up"}]
    });

	// Event button move down
    bms.executeEvent({
        selector: "#bt_move_down",
        events: [{name: "move_down"}]
    });
	
	
	// Event label direction
    bms.executeEvent({
        selector: "#txt_direction",
        events: [{name: "reverse_lift_up"}, {name: "reverse_lift_down"}]
    });
});