var gridX = floor(mouse_x / Grid.gridPixelSize);
var gridY = floor(mouse_y / Grid.gridPixelSize);

show_debug_message("clicked left" + string(delta_time));

var toplace = global.CREEP_0;
if (random(1) > 0.5) toplace = global.CREEP_1;

spawnCreepXYT(gridX, gridY, toplace);
