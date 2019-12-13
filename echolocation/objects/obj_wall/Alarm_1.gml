/// @description get the actual outline coordinates
for(var i = 0; i < array_height_2d(erasersTop); i++){
	if(i == 0){
		barsTop[array_height_2d(barsTop), 0] = x;
	} else {
		barsTop[array_height_2d(barsTop), 0] = erasersTop[i - 1, 1];
	}
	barsTop[array_height_2d(barsTop) - 1, 1] = erasersTop[i, 0];
}

if(array_height_2d(erasersTop) == 0){
	barsTop[array_height_2d(barsTop), 0] = x;
	barsTop[array_height_2d(barsTop)- 1, 1] = x + sprite_width;
} else {
	barsTop[array_height_2d(barsTop), 0] = erasersTop[array_height_2d(erasersTop) - 1, 1];
	barsTop[array_height_2d(barsTop)- 1, 1] = x + sprite_width;
}

for(var i = 0; i < array_height_2d(erasersLeft); i++){
	if(i == 0){
		barsLeft[array_height_2d(barsLeft), 0] = y;
	} else {
		barsLeft[array_height_2d(barsLeft), 0] = erasersLeft[i - 1, 1];
	}
	barsLeft[array_height_2d(barsLeft) - 1, 1] = erasersLeft[i, 0];
}

if(array_height_2d(erasersLeft) == 0){
	barsLeft[array_height_2d(barsLeft), 0] = y;
	barsLeft[array_height_2d(barsLeft)- 1, 1] = y + sprite_height;
} else {
	barsLeft[array_height_2d(barsLeft), 0] = erasersLeft[array_height_2d(erasersLeft) - 1, 1];
	barsLeft[array_height_2d(barsLeft)- 1, 1] = y + sprite_height;
}

for(var i = 0; i < array_height_2d(erasersBottom); i++){
	if(i == 0){
		barsBottom[array_height_2d(barsBottom), 0] = x;
	} else {
		barsBottom[array_height_2d(barsBottom), 0] = erasersBottom[i - 1, 1];
	}
	barsBottom[array_height_2d(barsBottom) - 1, 1] = erasersBottom[i, 0];
}

if(array_height_2d(erasersBottom) == 0){
	barsBottom[array_height_2d(barsBottom), 0] = x;
	barsBottom[array_height_2d(barsBottom)- 1, 1] = x + sprite_width;
} else {
	barsBottom[array_height_2d(barsBottom), 0] = erasersBottom[array_height_2d(erasersBottom) - 1, 1];
	barsBottom[array_height_2d(barsBottom)- 1, 1] = x + sprite_width;
}

for(var i = 0; i < array_height_2d(erasersRight); i++){
	if(i == 0){
		barsRight[array_height_2d(barsRight), 0] = y;
	} else {
		barsRight[array_height_2d(barsRight), 0] = erasersRight[i - 1, 1];
	}
	barsRight[array_height_2d(barsRight) - 1, 1] = erasersRight[i, 0];
}

if(array_height_2d(erasersRight) == 0){
	barsRight[array_height_2d(barsRight), 0] = y;
	barsRight[array_height_2d(barsRight)- 1, 1] = y + sprite_height;
} else {
	barsRight[array_height_2d(barsRight), 0] = erasersRight[array_height_2d(erasersRight) - 1, 1];
	barsRight[array_height_2d(barsRight)- 1, 1] = y + sprite_height;
}