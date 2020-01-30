/// @func player_damage_knockback(hurting_obj, damage);
/// @description deals with player damage, invincibility, & knockback
/// @param hurting_obj
/// @param damage
if(argument0 > 100000){
	player_damage(argument1);
	obj_player.knockbackDir = point_direction(argument0.x, argument0.y, obj_player.x, obj_player.y);
	obj_player.knockbackX = lengthdir_x(20, obj_player.knockbackDir);
	obj_player.knockbackY = lengthdir_y(20, obj_player.knockbackDir);
}