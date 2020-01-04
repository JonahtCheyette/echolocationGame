/// @func player_damage(hurting_obj, damage);
/// @description deals with player damage, invincibility, & knockback
/// @param hurting_obj
/// @param damage
if(obj_player.invincibilityFrames == 0){
	health -= argument1;
	obj_player.knockbackDir = point_direction(argument0.x, argument0.y, obj_player.x, obj_player.y);
	obj_player.knockbackX = lengthdir_x(20, obj_player.knockbackDir);
	obj_player.knockbackY = lengthdir_y(20, obj_player.knockbackDir);
	obj_player.invincibilityFrames = 60;
}