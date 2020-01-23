/// @func map(direction, x, y, enemy);
/// @description shoots a bullet
/// @param direction
/// @param x
/// @param y
/// @param enemy

ds_list_add(obj_bulletHandler.bullets,instance_create_layer(argument1,argument2,"Instances",obj_bullet));
obj_bulletHandler.bullets[|ds_list_size(obj_bulletHandler.bullets) - 1].dir = argument0;
obj_bulletHandler.bullets[|ds_list_size(obj_bulletHandler.bullets) - 1].x = argument1;
obj_bulletHandler.bullets[|ds_list_size(obj_bulletHandler.bullets) - 1].y = argument2;
obj_bulletHandler.bullets[|ds_list_size(obj_bulletHandler.bullets) - 1].hspd = lengthdir_x(obj_bulletHandler.bullets[|ds_list_size(obj_bulletHandler.bullets) - 1].spd, argument0);
obj_bulletHandler.bullets[|ds_list_size(obj_bulletHandler.bullets) - 1].vspd = lengthdir_y(obj_bulletHandler.bullets[|ds_list_size(obj_bulletHandler.bullets) - 1].spd, argument0);
obj_bulletHandler.bullets[|ds_list_size(obj_bulletHandler.bullets) - 1].image_angle = argument0;
obj_bulletHandler.bullets[|ds_list_size(obj_bulletHandler.bullets) - 1].enemy = argument3;