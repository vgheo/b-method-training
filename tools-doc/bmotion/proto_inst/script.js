requirejs(['bmotion.template'], function (bms) {


	/*
	 *  Observe top-level var; bind to top-level element
	 *  Variable v1 from M1.mch
	 *  
	 *  # TEST: PASS
	 */
	
	bms.observe("formula", {
	  selector: "#use_object11",    
	  formulas: ["v1"],
	  trigger: function (origin, result) {
		  
	    //console.log("OBS object2 --- id: " + origin.attr("id") + " v1 = " + result);
		origin.attr("y", result == "TRUE" ? "150" : "50");
	  }
	});
	 

	/*
	 * jQuery selectors
	 * http://www.w3schools.com/jquery/jquery_ref_selectors.asp
	
	parent > child	$("div > p")	All <p> elements that are a direct child of a <div> element
	parent descendant	$("div p")	All <p> elements that are descendants of a <div> element

	sample :
	'#id1 > #id2' - direct children
	
	* #TEST: FAIL 
    */
	bms.observe("formula", {
	  selector: "#use_object12 #L11",           // id element graphic -> origin
	  formulas: ["MA.vv"],                      // (formulas) variable B -> result
	  trigger: function (origin, result) {
		//console.log("Object12:line11 --- id: " + origin.attr("id") + " MA.vv = " + result);
		origin.attr("fill", "red");
	  }
	});
	
	/*
	 * Var2: without  jQuery selectors
	 * #TEST : PASS
	 */
	bms.observe("formula", {
		  selector: "#use_object12",             // id element graphic -> origin
		  formulas: ["MA.vv"],                   // (formulas) variable B -> result
		  trigger: function (origin, result) {
			//console.log("Object12 --- id: " + origin.attr("id") + " MA.vv = " + result);
			origin.attr("y", result == "TRUE" ? "150" : "50");
		  }
		});
	
	/*
	 * Observe M3::vv - from included machine
	 * #TEST: PASS
	 */
	bms.observe("formula", {
	  selector: "#use_object2",           // id element graphic -> origin
	  formulas: ["vv"],                    // (formulas) variable B -> result
	  trigger: function (origin, result) {
		//console.log("OBS M3::vv = " + result);
		origin.attr("y", result == "TRUE" ? "450" : "350");
	  }
	});
	
	
	/* 
	 * Observe top-level var; bind to element from chained svg:use (shadow dom)
	 * 
	 * try : http://stackoverflow.com/questions/21218859/can-i-access-the-shadow-dom-using-jquery
	 *	 selector: "#use_object2 /deep/ #L21"
	 * #TEST: FAIL
	*/
	bms.observe("formula", {
	  selector: "#use_object2 #shadow-root #L21",    
	  formulas: ["v1"],
	  trigger: function (origin, v1) {
	  	console.log("obs object2#L21 id: " + origin.attr("id"));
		origin.attr("fill", v1 == "TRUE" ? "red" : "green");
	  }
	});
	
	/*
	 * #TEST: PASS
	 */
	bms.executeEvent({
        selector: "#use_object11",
        events: [
                 {name: "set_v1",
        		  predicate: "xx=TRUE"},
                 {name: "set_v1",
        		  predicate: "xx=FALSE"}
        		]
    });

	/*
	 * #TEST: PASS
	 * issue: tooltip position
	 */
	bms.executeEvent({
        selector: "#use_object12",
        events: [
                 {name: "MA.set",
        	      predicate: "xx=TRUE"},
        	     {name: "MA.set",
            	  predicate: "xx=FALSE"}  
        	    ]
    });
	
	/*
	 * #TEST: PASS
	 * issue: tooltip position
	 */
	bms.executeEvent({
        selector: "#use_object2",
        events: [
                 {name: "set",
        	      predicate: "xx=TRUE"},
        	     {name: "set",
            	  predicate: "xx=FALSE"}  
        	    ]
    });
});