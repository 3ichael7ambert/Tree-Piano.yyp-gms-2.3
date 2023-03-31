/// @description  Initialise variables and starting hills
randomize();
global.debug = false;
// A variable used during the creation of hill points to make sure 2 in a row have coins
nextHasCoins = false;
InitialiseControl();

// Create the starting hills
for (i = 0; i < numStartingHillPoints-1; i++) {

    totalHills ++;
    CreateHillPoint();
    GetNextHillPosition();
      
    // We want the first couple of hills to be going down
    if (i > 1)
    dir *= -1;
}

// Create a pre-emptive hill point to stop a flat plane if a point is deleted immediately
CreateHillPoint(); 

// Get the starting hill for the player and then create them (just above hill)
startingHill = ds_list_find_value(hillPoints, 2);
instance_create(startingHill.x, startingHill.y - (sprite_get_height(sPlayer)/2), oBird);

