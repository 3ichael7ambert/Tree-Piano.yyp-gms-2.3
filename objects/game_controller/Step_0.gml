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
    
    //if the mouse is within the following rectangle
    if (point_bounds(initX, initY, 200, room_height-250, 400, room_height))
    {
        audio_play_sound(snd_b1,1,0);
    }
     if (point_bounds(initX, initY, 300, room_height-500, 500, room_height-250))
    {
        audio_play_sound(snd_b2,1,0);
    }
    
    if (point_bounds(initX, initY, 400, room_height-250, 600, room_height))
    {
        audio_play_sound(snd_b3,1,0);
    }
     if (point_bounds(initX, initY, 500, room_height-500, 700, room_height-250))
    {
        audio_play_sound(snd_b4,1,0);
    }
    if (point_bounds(initX, initY, 600, room_height-250, 800, room_height))
    {
        audio_play_sound(snd_b5,1,0);
    }
     if (point_bounds(initX, initY, 800, room_height-250, 800, room_height))
    {
        audio_play_sound(snd_b6,1,0);
    }
     if (point_bounds(initX, initY, 900, room_height-500, 1100, room_height-250))
    {
        audio_play_sound(snd_b7,1,0);
    }
     if (point_bounds(initX, initY, 1000, room_height-250, 1200, room_height))
    {
        audio_play_sound(snd_b8,1,0);
    }
      if (point_bounds(initX, initY, 1100, room_height-500, 1300, room_height-250))
    {
        audio_play_sound(snd_b9,1,0);
    }
          if (point_bounds(initX, initY, 1200, room_height-250, 1400, room_height))
    {
        audio_play_sound(snd_b10,1,0);
    }
              if (point_bounds(initX, initY, 1300, room_height-500, 1500, room_height-250))
    {
        audio_play_sound(snd_b11,1,0);
    }
    
    
              if (point_bounds(initX, initY, 1400, room_height-250, 1600, room_height))
    {
        audio_play_sound(snd_b12,1,0);
    }
               if (point_bounds(initX, initY, 1600, room_height-250, 1800, room_height))
    {
        audio_play_sound(snd_b13,1,0);
    }
    
    
}



if device_mouse_check_button(0, mb_left)
   {
   if device_mouse_x_to_gui(0) > 200 && device_mouse_x_to_gui(0) < 400
      {
      key1=true
      }
   else
      {
      pressed = false;
      }
   }

