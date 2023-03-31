function CreateHillPoint() {

	// Create a new hill point instance
	var inst = instance_create(x,y,oHillPoint);

	// Decide if this hill point gets coins
	// Make sure we dont check an undefined hill point
	if (oControl.hillPoints[| totalHills-1] != undefined)
	{   
	    show_debug_message("before random");
	    // random chance and going down (first part of hill)
	    if ((random(10) > 8) and dir = -1)
	    {
	        // Set this part to have coins
	        inst.hasCoins = true;
	        // Set next part to have coins
	        nextHasCoins = true;
	    }
	    // if we're now on the second part
	    else if (nextHasCoins)
	    {
	        // This part also has coins
	        inst.hasCoins = true;
	        // Reset this flag
	        nextHasCoins = false;
	    }
	    show_debug_message("after random");
	}

	// Assign the position in the list
	inst.position = totalHills;
	// Actually add the hill point to the list
	show_debug_message("before added to list");
	ds_list_add(hillPoints, inst);
	show_debug_message("after added to list");



}
