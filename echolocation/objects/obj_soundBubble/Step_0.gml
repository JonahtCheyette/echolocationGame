/// @description change the size of the circle
if(growing){
	if(size < maxSize){
		if(size + growSpeed >= maxSize){
			size = maxSize;
			growing = false;
		} else {
			size += growSpeed;
		}
	} else {
		growing = false;
	}
} else {
	size -= shrinkSpeed;
}