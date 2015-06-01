var xS = argument0;
var yS = argument1;
var ifOutside = argument2;

if (xS < 0 || yS < 0 || xS >= Grid.gridWidth || yS >= Grid.gridHeight) {
    return false;
}
else if (Grid.gridContent[xS, yS] == Grid.GRID_EMPTY) return true;
else if (Grid.gridContent[xS, yS] == Grid.GRID_EDGE) return ifOutside;
