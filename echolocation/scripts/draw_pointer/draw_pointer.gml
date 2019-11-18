mx = mouse_x - x;
my = mouse_y - y;
pointer_rotation = arctan(my/mx) * -180 / pi;

mLen = sqrt(mx * mx + my * my);

mx /= mLen;
my /= mLen;

mx *= 80;
my *= 80;

mx += x;
my += y;

mx += sprite_width / 2;
my += sprite_height / 2;

mx *= 2;
my *= 2;

draw_sprite_ext(spr_pointer, 0, mx, my, 1, 1, pointer_rotation + 45, c_white, 1);