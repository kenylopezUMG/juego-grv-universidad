///@arg frame
function animation_hit_frame()
{
	var _frame = argument0;
	var _frame_range = image_speed * sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);
	return image_index >= _frame and image_index < _frame+_frame_range;
	
}