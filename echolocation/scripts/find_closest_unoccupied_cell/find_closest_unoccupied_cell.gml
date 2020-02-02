/// @func find_closest_unnocupied_cell(grid, x, y, size);
/// @description if the cell (x,y) is in is occupied, finds the closest unoccupied grid cell to (x,y) within a square of grid cell of size and returns the center of that cell. Otherwise, returns (x,y)
/// @param grid the mp_grid to check
/// @param x
/// @param y
/// @param size the size of the square to check

var distance = 10000;
var closest = array_create(2, -100);
if(mp_grid_get_cell(argument0, argument1 div 20, argument2 div 20) == 0){
	closest[0] = argument1;
	closest[1] = argument2;
	return closest;
}
for(var i = -1 * floor(argument3 / 2); i < ceil(argument3 / 2); i++){
	for(var j = -1 * floor(argument3 / 2); j < ceil(argument3 / 2); j++){
		if(point_distance(argument1, argument2, ((argument1 div 20 + i) * 20) + 10, ((argument2 div 20 + j) * 20) + 10) < distance && mp_grid_get_cell(argument0, (argument1 div 20) + i, (argument2 div 20) + j) == 0){
			closest[0] = ((other.x div 20 + i) * 20) + 10;
			closest[1] = ((other.y div 20 + j) * 20) + 10;
			distance = point_distance(argument1, argument2, ((argument1 div 20 + i) * 20) + 10, ((argument2 div 20 + j) * 20) + 10);
		}
	}
}

return closest;