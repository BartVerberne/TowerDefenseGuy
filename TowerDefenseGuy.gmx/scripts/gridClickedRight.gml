var gridX = floor(mouse_x / Grid.gridPixelSize);
var gridY = floor(mouse_y / Grid.gridPixelSize);

show_debug_message("clicked left" + string(delta_time));

spawnCreepXYT(gridX, gridY, OB_Game.CREEP_0);
