/// @description The good stuffs (swipe handling)
/// @param swipe handling

//This will set the init variables to be the first position on the screen that is touched.
//In addition, set the isTouching variable to one, indicating that the screen is being touched.
if (mouse_check_button_pressed(mb_left))
{
    initX = mouse_x;
    initY = mouse_y;
    isTouching = 1;
}

//Once the user stops touching the screen...
if (mouse_check_button_released(mb_left))
{
    isTouching = 0;
    
    //This will set the objects direction to be equal to the swiped direction.
    direction = point_direction(initX, initY, mouse_x, mouse_y);
}



///Wrap around the screen

//This code makes the object pop to the other side of the screen when nearing the edge of the room
//like pacman!
if (x > room_width) then x = 0;
if (x < 0) then x = room_width;
if (y > room_height) then y = 0;
if (y < 0) then y = room_height;

