switch (state)
{
	case "move":
	#region moveset
	sprite_index = spr_s_skeleton_idle_strip3;
	if keyboard_check(vk_left) and not place_meeting(x-4, y, obj_o_wall)
	{
 
	x -= 4
	image_xscale = -1;
	sprite_index = spr_s_skeleton_run;
	image_speed = 0.3;
	}
	if keyboard_check(vk_right) and not place_meeting(x+4, y, obj_o_wall)
	{
  
	x += 4
	image_xscale = 1;
	sprite_index = spr_s_skeleton_run;
	}
	if not keyboard_check(vk_right) and not keyboard_check(vk_left)
	{
	sprite_index = spr_s_skeleton_idle_strip3;
	image_speed = 0.3;
	}
	
if keyboard_check_pressed (vk_space){
	state = "roll"
   }
   if keyboard_check(ord("A"))
   {
   state = "attack 1"
   }
   
   if keyboard_check(ord("D"))
   {
   state = "attack 2"
   }
   #endregion
break;

case "roll":
	#region rollstate
set_state_sprite(spr_s_skeleton_roll, 0.5, 0);

if image_xscale == 1 
{
	 move_and_collide(3.5, 0, obj_o_wall);
}
if image_xscale == -1 
{
     move_and_collide(-3.5, 0, obj_o_wall);
}

if animation_end()
{
	state = "move";
}
#endregion
	break;
	
	case "attack 1":
	#region ataque uno state
	set_state_sprite(spr_s_skeleton_attack_one_strip5, 0.6, 0);
	
	if animation_hit_frame(0)
	{
	create_hitbox(x, y, self, spr_s_skeleton_attack_one_damage, 4, 4, 5, image_xscale);
	}
	
	if keyboard_check(ord("D")) and animation_hit_frame_range(2, 4)
   {
   state = "attack 2";
   }
   
   if animation_end()
   {
   state= "move"
   }
   
	#endregion
	break;
	
	case "attack 2":
	#region ataque dos state
	set_state_sprite(spr_s_skeleton_attack_two_strip5, 0.6, 0);
	
	if animation_hit_frame(1)
	{
	create_hitbox(x, y, self, spr_s_skeleton_attack_two_damage, 3, 4, 5, image_xscale);
	}
	
	if keyboard_check(ord("W")) and animation_hit_frame_range(2, 4)
   {
   state = "attack 3";
   }
   
   if animation_end()
   {
   state = "move"
   }
   
	#endregion
	break;
	
	case"attack 3":
	#region ataque tres state
	set_state_sprite(spr_s_skeleton_attack_three_strip6, 0.6, 0);
	
	if animation_hit_frame(2)
	{
	create_hitbox(x, y, self, spr_s_skeleton_attack_three_damage, 4, 4, 8, image_xscale);
	}
	
 if animation_end()
   {
   state = "move"
   }
	#endregion
	break;
	
	case "knockback":
	  #region knockback state
knockback_state(spr_s_skeleton_hitstun, "move");
	  #endregion
	break;
	
	default:
	   show_debug_message("state" +state+ " does not exist");
	   state = "move";
	   break;
	
}