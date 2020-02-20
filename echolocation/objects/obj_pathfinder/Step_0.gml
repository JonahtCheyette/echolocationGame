/// @description Redo checking for immovable things
pathfindingGrid = mp_grid_create(0, 0, room_height/20, room_width/20, 20, 20);
mp_grid_add_instances(pathfindingGrid, obj_blocksMovement, true);