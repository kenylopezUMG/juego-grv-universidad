///@arg x
///@arg y
///@arg creator
///@arg sprite
///@arg knockback
///@arg lifespan
///@arg damage
///@arg xscale

function create_hitbox( )
{

var _x_position = argument0;
var _y_position = argument1;
var _creator = argument2;
var _sprite = argument3;
var _knockback = argument4;
var _lifespan = argument5;
var _damage = argument6;
var _xscale = argument7;

var _hitbox = instance_create_layer(_x_position, _y_position, "Instances", obj_o_hitbox);
_hitbox.sprite_index = _sprite;
_hitbox.creator = _creator;
_hitbox.knockback = _knockback;
_hitbox.alarm[0] = _lifespan;
_hitbox.damage = _damage;
_hitbox.image_xscale = _xscale;
}