///@arg low
///@arg high
var _low = argument0;
var _high = argument1;

function animation_hit_frame_range(_low, _high)
{
return image_index >= _low and image_index <= _high;
}