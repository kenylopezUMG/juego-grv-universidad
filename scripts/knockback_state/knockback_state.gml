///@arg knockback_sprite
///@arg next_state

function knockback_state(){
var _knockback_sprite = argument0;
var _next_state = argument1;
set_state_sprite(_knockback_sprite, 0, 0);
image_xscale = -sign(knockback_speed);
move_and_collide(knockback_speed, 0, 0);
var _knockback_friction = 0.13
knockback_speed = aproach(knockback_speed, 0, _knockback_friction);
if knockback_speed == 0 {
state = _next_state;
	}
}