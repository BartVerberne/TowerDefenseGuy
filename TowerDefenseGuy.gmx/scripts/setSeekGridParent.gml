var nodes = argument0;
var parentX = argument1;
var parentY = argument2;
var dirX = argument3;
var dirY = argument4;
var stepDist = argument5;
var targetX = parentX + dirX;
var targetY = parentY + dirY;

var allreadySet = Grid.gridPathsXdir[targetX, targetY] != Grid.NO_PARENT;
var write = !allreadySet;

var pathLengthViaThisParent = stepDist + Grid.gridPathsLength[parentX, parentY];
var pathLengthViaOtherParent;

if (allreadySet)
{
    pathLengthViaOtherParent = Grid.gridPathsLength[targetX, targetY];
    
    if (pathLengthViaThisParent < pathLengthViaOtherParent) 
        write = true;
}

if (write)
{
    Grid.gridPathsXdir[targetX, targetY] = -dirX;
    Grid.gridPathsYdir[targetX, targetY] = -dirY;
    Grid.gridPathsLength[targetX, targetY] = pathLengthViaThisParent;
    
    if (!allreadySet) ds_list_add(nodes, targetX, targetY);
}