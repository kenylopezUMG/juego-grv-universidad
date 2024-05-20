switch (state)
{
case "chase":
#region chase state
    set_state_sprite(spr_s_knight_walk, 0.3, 0);
	if not instance_exists(obj_o_esqueleto) break;
	
	image_xscale = sign(obj_o_esqueleto.x - x);
	if image_xscale == 0
	{
	   image_xscale = 1;
    }
	
	var _direction_facing = image_xscale;
	var _distance_to_player = point_distance(x, y, obj_o_esqueleto.x, obj_o_esqueleto.y);
	if _distance_to_player > attack_range
	{
		move_and_collide(_direction_facing * chase_speed, 0, obj_o_esqueleto);
	  
	}
	else
	{
	   state = "ataque";
	}
	#endregion
	break;
	
	case "ataque":
	#region ataque
	set_state_sprite(spr_s_knight_attack, 0.6, 0);
	 
	 if animation_hit_frame(4)
	 {
	 create_hitbox(x, y, self, spr_s_skeleton_attack_one_damage20, 4, 4 , 10, image_xscale);
	 }
	 
	 if animation_end()
   {
   state = "chase";
   }
	#endregion
	break;
	
	case "knockback":
	#region knockback state
	knockback_state(spr_s_knight_hitstun, "chase");
	#endregion
	break;
	
	default:
	   show_debug_message("state" +state+ " does not exist");
	   state = "chase";
	   break;
}