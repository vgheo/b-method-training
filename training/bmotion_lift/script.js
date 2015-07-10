requirejs(['bmotion.template'], function (bms) {

	// Formula Observer Displaying the Current Floor
	bms.observe("formula", {
	  selector: "#txt_cur_floor",
	  formulas: ["cur_floor"],
	  trigger: function (origin, result) {
		origin.text(result[0])
	  }
	});
	
	// Formula Observer for the Lift and Door
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
	
	//Observer color current floor
	bms.observe("formula", {
        selector: "text[data-floor]",
        formulas: ["cur_floor"],
        trigger: function (origin, data) {
            origin.attr("fill", origin.attr("data-floor") === data[0] ? "green" : "red");
        }
    });
	
	// Observer for direction
	bms.observe("formula", {
        selector: "#txt_direction",
        formulas: ["direction_up"],
        trigger: function (origin, result) {
            result[0] == "TRUE" ? origin.text('Moving: UP') : origin.text('Moving: DOWN');
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
        events: [{name: "move_up"}, {name: "reverse_lift_up"}]
    });

	// Event button move down
    bms.executeEvent({
        selector: "#bt_move_down",
        events: [{name: "move_down"}, {name: "reverse_lift_down"}]
    });
	
});