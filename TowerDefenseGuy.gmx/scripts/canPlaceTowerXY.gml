var xS = argument0;
var yS = argument1;

if (isGridFreeXYB(xS, yS, false) && ds_list_size(creepBlock[xS+1, yS+1]) == 0)
{
    var allowed = true;
    Grid.gridContent[xS, yS] = Grid.GRID_BLOCKED;
    if (isGridFreeXYB(xS+1,yS, false) && !canReachOutside(xS+1,yS)) {
        allowed = false;
    }
    else if (isGridFreeXYB(xS-1,yS, false) && !canReachOutside(xS-1,yS)) {
        allowed = false;
    }
    else if (isGridFreeXYB(xS,yS+1, false) && !canReachOutside(xS,yS+1)) {
        allowed = false;
    }
    else if (isGridFreeXYB(xS,yS-1, false) && !canReachOutside(xS,yS-1)) {
        allowed = false;
    }
    Grid.gridContent[xS, yS] = Grid.GRID_EMPTY;
    return allowed;
}
else return false;