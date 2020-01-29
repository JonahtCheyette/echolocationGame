/// @func player_damage(damage);
/// @description deals with player damage & invincibility
/// @param damage
if(obj_player.invincibilityFrames == 0){
	health -= argument0;
	obj_player.invincibilityFrames = 60;
}