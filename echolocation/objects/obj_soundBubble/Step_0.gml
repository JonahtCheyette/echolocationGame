/// @description change the size of the circle
if(growing){
	if(size < maxSize){
		size++;
	} else {
		growing = false;
	}
} else {
	size-= 0.5;
}