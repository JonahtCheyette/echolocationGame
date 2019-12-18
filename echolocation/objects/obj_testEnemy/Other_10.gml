/// @description shoot
ds_list_add(bullets,instance_create_layer(x,y,"Instances",obj_bullet));
bullets[|ds_list_size(bullets) - 1].dir = targetDir;
bullets[|ds_list_size(bullets) - 1].x += lengthdir_x(7.5, bullets[|ds_list_size(bullets) - 1].dir);
bullets[|ds_list_size(bullets) - 1].y += lengthdir_y(7.5, bullets[|ds_list_size(bullets) - 1].dir);
bullets[|ds_list_size(bullets) - 1].hspd = lengthdir_x(bullets[|ds_list_size(bullets) - 1].spd, bullets[|ds_list_size(bullets) - 1].dir);
bullets[|ds_list_size(bullets) - 1].vspd = lengthdir_y(bullets[|ds_list_size(bullets) - 1].spd, bullets[|ds_list_size(bullets) - 1].dir);
bullets[|ds_list_size(bullets) - 1].image_angle = bullets[|ds_list_size(bullets) - 1].dir;