function GetNextHillPosition() {
	// Advance the x value by a random amount
	x += random(rangeDX)+minDX;

	while(true)
	{
	    // Get a new Y value
	    dy = random(rangeDY)+minDY;
	    ny = y + dy*dir;
	    // Make sure its within the correct range, then exit
	    if(ny < window_get_height()-paddingTop && ny > paddingBottom) {
	        break;
	    }
  
	}
	// Assign the new y value
	y = ny;



}
