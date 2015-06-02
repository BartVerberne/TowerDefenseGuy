var xS = argument0;
var yS = argument1;

if (xS < 1 || yS < 1 || 
    xS >= Grid.gridWidth -1|| 
    yS >= Grid.gridHeight -1) {
    return false;
}
else {
    return (Grid.gridContent[xS, yS] == Grid.GRID_TOWER_0);
}