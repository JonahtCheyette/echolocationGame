/// @description Initialize sone stuff
pushed = false;
pushedDir = 0;
animationCounter = 0;
pushSpeed = 10;
//topleft
legBottoms[0, 0] = x + 5;
legBottoms[0, 1] = y + 5;
//topright
legBottoms[1, 0] = x + sprite_width - 5;
legBottoms[1, 1] = y + 5;
//bottomleft
legBottoms[2, 0] = x + 5;
legBottoms[2, 1] = y + sprite_height -5;
//bottomright
legBottoms[3, 0] = x + sprite_width - 5;
legBottoms[3, 1] = y + sprite_height -5;