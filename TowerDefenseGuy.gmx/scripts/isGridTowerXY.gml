var xS = argument0;
var yS = argument1;

if (xS < 1 || yS < 1 || 
    xS >= Grid.gridWidth -1|| 
    yS >= Grid.gridHeight -1) {
    return false;
}
else {
    switch(Grid.gridContent[xS, yS]) {
        case Grid.GRID_EMPTY : return false;
        case Grid.GRID_TOWER_0 : return true;
        case Grid.GRID_HEAVY_TOWER : return true;
        case Grid.GRID_SNIPER_TOWER : return true;
        case Grid.GRID_SPLITTER_TOWER : return true;
    }
}