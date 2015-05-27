var xS = argument0;
var yS = argument1;
var ifOutside = argument2;

if (xS < 0 || yS < 0 || 
    xS >= Grid.gridWidth || 
    yS >= Grid.gridHeight) 
    return ifOutside;
else 
    return Grid.gridContent[xS, yS] == Grid.GRID_EMPTY;