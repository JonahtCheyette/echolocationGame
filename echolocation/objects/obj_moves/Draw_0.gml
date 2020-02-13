/// @description silhouettes
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);

draw_set_alpha(0);

var cX = x - sprite_xoffset + sprite_width/2;
var cY = y - sprite_yoffset + sprite_height/2;
var angle = point_direction(cX, cY, x - sprite_xoffset, y - sprite_yoffset);
var radius = point_distance(cX, cY, x - sprite_xoffset, y - sprite_yoffset) * 1.2;
var xValues = array_create(4);
var yValues = array_create(4);
//topRight
xValues[0] = cX + cos(degtorad(image_angle + angle)) * radius;
yValues[0] = cY + sin(degtorad(image_angle + angle)) * radius;
//topLeft
xValues[1] = cX + cos(degtorad(image_angle + 180 - angle)) * radius;
yValues[1] = cY + sin(degtorad(image_angle + 180 - angle)) * radius;
//bottomLeft
xValues[2] = cX + cos(degtorad(image_angle + 180 + angle)) * radius;
yValues[2] = cY + sin(degtorad(image_angle + 180 + angle)) * radius;
//bottomRight
xValues[3] = cX + cos(degtorad(image_angle - angle)) * radius;
yValues[3] = cY + sin(degtorad(image_angle - angle)) * radius;

var x1 = xValues[0];
var y1 = yValues[0];
var x2 = xValues[3];
var y2 = yValues[3];

for(var i = 0; i < 4; i++){
	if(xValues[i] < x1){
		x1 = xValues[i];
	}
	if(yValues[i] < y1){
		y1 = yValues[i];
	}
	if(xValues[i] > x2){
		x2 = xValues[i];
	}
	if(yValues[i] > y2){
		y2 = yValues[i];
	}
}

draw_rectangle(x1, y1, x2, y2, false);
draw_set_alpha(1);

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);