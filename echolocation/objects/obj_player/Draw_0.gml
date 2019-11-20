/// @description drawing yourself
draw_self();
mx = mouse_x - x;
my = mouse_y - y;

pointer_rotation = arctan(my/mx) * -180 / pi;

mLen = sqrt(mx * mx + my * my);

mx /= mLen;
my /= mLen;

mx *= 50;
my *= 50;

mx += x;
my += y;

draw_sprite_ext(spr_pointer, 0, mx, my, 0.5, 0.5, pointer_rotation + 45, c_white, 1);