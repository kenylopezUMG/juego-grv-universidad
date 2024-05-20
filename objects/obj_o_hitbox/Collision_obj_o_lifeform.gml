if creator == noone or creator == other or ds_list_find_index(_hit_objects, other) != -1
{
exit;
}
other.hp -= damage;
ds_list_add(_hit_objects, other);
other.state = "knockback";
other.knockback_speed = knockback * image_xscale;