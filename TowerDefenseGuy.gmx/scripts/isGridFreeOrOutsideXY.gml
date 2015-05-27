var xS = argument0;
var yS = argument1;

if (xS < 0 || yS < 0 || 
    xS >= Grid.gridWidth || 
    yS >= Grid.gridHeight) 
    return true;
else 
    return Grid.gridContent[xS, yS] == Grid.GRID_EMPTY;
