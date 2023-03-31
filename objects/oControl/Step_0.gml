/// @description Update hill points and view

// Check all hillpoints
with (oHillPoint)
{
    var count = 0;
    // If this one is out of view
    if (x < __view_get( e__VW.XView, 0 ) - 200)
    {
        oControl.newHillPoint = true;
        // Delete it from the list and destroy the instance
        ds_list_delete(oControl.hillPoints, count);
        oControl.totalHills -= 1;
        // delete the hill point
        instance_destroy();
    }
    count += 1;
}

// If another hill point has been requested
if (newHillPoint)
{
    //This even creates another one
    event_user(0);
}

// keep the view on the player
__view_set( e__VW.XView, 0, oBird.phy_position_x-150 );

// If the player gets too high
if (oBird.phy_position_y < __view_get( e__VW.HView, 0 )*0.5)
{
    // Adjust the scale and position of the view
    __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) - ((oBird.phy_linear_velocity_y*0.03)) );
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) - ((oBird.phy_linear_velocity_y*0.03)) );
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + ((oBird.phy_linear_velocity_y*0.03)) );
}


