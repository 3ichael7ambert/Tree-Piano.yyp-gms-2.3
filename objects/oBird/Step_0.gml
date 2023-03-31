/// @description Update player
// Here we calculate the rotation by getting the inverse tangent based on the players velocity
angle = arctan2(phy_linear_velocity_y, phy_linear_velocity_x)

// If the player has started, apply the rotation (using the phy_rotation variable)
if (awake)
{  
    // Multiplying by 0.5 makes the player face the way we want
    phy_rotation = 0.5 * radtodeg(angle);   
}

// When the player is waiting to start, don't move or animate.
// Since we start on a slight hill, we can't rely on deactivating the physics as 
// the player would still roll down the first hill.
if !awake
{
    phy_linear_velocity_x = 0;
    phy_linear_velocity_y = 0;
    image_speed = 0;
    if (device_mouse_check_button(0,mb_left) or keyboard_check(vk_down))
    {
        awake = true;
        image_speed = 0.1;
        physics_fixture_set_awake(fix, true);
        physics_fixture_delete(fix);
    }
}
else
{
    // Apply the downward force for a dive
    if (keyboard_check(vk_down) or device_mouse_check_button(0,mb_left))
    {
        physics_apply_force(x, y, 250, 4500);
    }
    
    // Apply general downward force for gameplay balance
    physics_apply_force(x, y, 50, 600);
    
    velX = phy_linear_velocity_x;
    // Keep the player moving at least slightly
    if (velX < minVelocityX) {
        phy_linear_velocity_x = minVelocityX;
    }
   
}

