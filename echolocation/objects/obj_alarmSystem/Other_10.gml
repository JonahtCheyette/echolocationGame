/// @description set off the alarm
create_bubble(x,y, 0.5*(sprite_height+sprite_width), sprite_width, 1, -1);
for(var i = 0; i < ds_list_size(enemies); i++){
	enemies[|i].permanentlyAlarmed = true;
}