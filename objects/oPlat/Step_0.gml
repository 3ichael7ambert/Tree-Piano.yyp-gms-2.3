if intro=true
{
if __view_get( e__VW.WView, 0 )< room_width
{
 __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) + (excel) );
 excel+=.2;
}
if __view_get( e__VW.HView, 0 )<resy
{
__view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) + (excel) );
 excel+=.2;
}
if __view_get( e__VW.HView, 0 )> room_height - resy
{
 __view_set( e__VW.HView, 0, resy );
 
}

if __view_get( e__VW.WView, 0 )> room_width
{
 __view_set( e__VW.WView, 0, room_width );
 
}
}

if y>250
{
y-=10;}



