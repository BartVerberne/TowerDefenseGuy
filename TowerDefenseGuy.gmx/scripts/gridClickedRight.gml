var gridX = floor(mouse_x / Grid.gridPixelSize);
var gridY = floor(mouse_y / Grid.gridPixelSize);

show_debug_message("clicked right" + string(delta_time));

/*

var toplace = global.CREEP_0;
if (random(1) > 0.5) toplace = global.CREEP_1;

spawnCreepXYT(gridX, gridY, toplace); */

if (isGridTowerXY(gridX, gridY))
{   
    var towerID = Grid.gridIds[gridX, gridY];
    var towerType = Grid.gridContent[gridX, gridY];
    show_debug_message("delete tower: " + string(towerType));
    
    if (global.gameMode == global.WAVEMODE) {
        with(towerID) toBeDeleted = !toBeDeleted;
    } 
    else if (global.gameMode == global.KILLERMODE)
    {
        with(towerID) instance_destroy();
        setPaths();
    }
    
}