/// @description change the size of the circle
if(growing){
	if(size < maxSize){
		size += growSpeed;
	} else {
		growing = false;
	}
} else {
	size -= shrinkSpeed;
}