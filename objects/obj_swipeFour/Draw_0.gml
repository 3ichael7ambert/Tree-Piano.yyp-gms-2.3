/// @description Drawing stuffs

//Draw own sprite (of course)
draw_self();

//Draw the bounding square and text
draw_rectangle(100,100,300,300, true);
draw_text(100,75, string_hash_to_newline("Only swipes that are started from this square will move the four directional square."));

//This draws the swipe line and direction for debug purposes.
if (isTouching = 1)
{
    draw_line(initX, initY, mouse_x, mouse_y);
    draw_text(mouse_x + 10, mouse_y + 10, string_hash_to_newline(point_direction(initX, initY, mouse_x, mouse_y)));
}

