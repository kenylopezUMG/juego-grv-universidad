///@arg xspeed
///@arg yspeed
function move_and_collide(argument0, argument1)

{
	
var _xspeed = argument0;
var _yspeed = argument1;
	
if not place_meeting(x+_xspeed, y, obj_o_wall)
{
  x += argument0;
}

if not place_meeting(x,y+_yspeed, obj_o_wall)
{
  y += _yspeed;
}
}