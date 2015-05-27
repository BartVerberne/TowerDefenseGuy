var xS = argument0 / global.gridPixelSize;
var yS = argument1 / global.gridPixelSize;

if (xS < 0 || yS < 0 || 
    xS >= global.gridWidth || 
    yS >= global.gridHeight) 
    return false;
else 
    return global.gridContent[xS, yS] == global.GRID_EMPTY;
