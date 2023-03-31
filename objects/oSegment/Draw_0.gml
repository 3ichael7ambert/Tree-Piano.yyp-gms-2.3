/// @description  Draw segment
// Draw 2 triangles to fill the gap under the line
draw_set_color(c_green);
draw_triangle(startX, startY, endX, endY, endX, window_get_height(), false);
draw_triangle(startX, window_get_height(), endX, window_get_height(), startX, startY, false);
// Draw this segment, adding 1 to help stop any gaps
draw_sprite_ext(sHill,0,startX, startY,
        (point_distance(startX, startY, endX+1, endY+1) / sprite_get_width(sHill)),7,
        point_direction(startX, startY, endX, endY),c_white,1);

