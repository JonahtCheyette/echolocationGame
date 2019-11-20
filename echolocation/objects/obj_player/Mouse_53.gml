/// @description shoot
ds_list_add(bullets,instance_create_layer(x,y,"Instances",obj_bullet));
bullets[|ds_list_size(bullets) - 1].enemy = false;
bullets[|ds_list_size(bullets) - 1].dir = pointer_rotation;
if(mouse_x - x < 0){
	bullets[|ds_list_size(bullets) - 1].dir += 180;
}
bullets[|ds_list_size(bullets) - 1].hspd = lengthdir_x(bullets[|ds_list_size(bullets) - 1].spd, bullets[|ds_list_size(bullets) - 1].dir);
bullets[|ds_list_size(bullets) - 1].vspd = lengthdir_y(bullets[|ds_list_size(bullets) - 1].spd, bullets[|ds_list_size(bullets) - 1].dir);
bullets[|ds_list_size(bullets) - 1].image_angle = bullets[|ds_list_size(bullets) - 1].dir;