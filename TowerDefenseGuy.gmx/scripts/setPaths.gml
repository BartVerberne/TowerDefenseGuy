// optimisation? :
// do a 4-dir first pass (including distance to end calc for "diagonal" paths)
// da a second pass to create true diagonal moves

var originX = getPlayerNextX() + 1;
var originY = getPlayerNextY() + 1;

var nodes = ds_list_create();
ds_list_add(nodes, originX, originY);

resetPathSeekGrid();

Grid.gridPathsXdir[originX, originY] = 0;
Grid.gridPathsYdir[originX, originY] = 0;
Grid.gridPathsLength[originX, originY] = 0;

while(true)
{
    var newNodes = ds_list_create();
    
    for(var i = 0; i < ds_list_size(nodes); i+= 2) {
        var nodeX = ds_list_find_value(nodes, i);
        var nodeY = ds_list_find_value(nodes, i + 1);
        
        var xPlus = ((nodeX + 1) < Grid.gridWidth + 2) && isGridFreeXYB(nodeX + 1 - 1, nodeY - 1, true);
        var xMin = ((nodeX - 1) >= 0) &&                  isGridFreeXYB(nodeX - 1 - 1, nodeY - 1, true);
        var yPlus = ((nodeY + 1) < Grid.gridWidth + 2) && isGridFreeXYB(nodeX - 1, nodeY + 1 - 1, true);
        var yMin = ((nodeY - 1) >= 0) &&                  isGridFreeXYB(nodeX - 1, nodeY - 1 - 1, true);
        var TR = xPlus && yPlus &&                        isGridFreeXYB(nodeX + 1 - 1, nodeY + 1 - 1, true);
        var TL = xMin && yPlus &&                         isGridFreeXYB(nodeX - 1 - 1, nodeY + 1 - 1, true);
        var BR = xPlus && yMin &&                         isGridFreeXYB(nodeX + 1 - 1, nodeY - 1 - 1, true);
        var BL = xMin && yMin &&                          isGridFreeXYB(nodeX - 1 - 1, nodeY - 1 - 1, true); 
         
        if (TR)     setSeekGridParent(newNodes, nodeX, nodeY, +1, +1, 1.4142);
        if (TL)     setSeekGridParent(newNodes, nodeX, nodeY, -1, +1, 1.4142);
        if (BR)     setSeekGridParent(newNodes, nodeX, nodeY, +1, -1, 1.4142);
        if (BL)     setSeekGridParent(newNodes, nodeX, nodeY, -1, -1, 1.4142);
        if (xPlus)  setSeekGridParent(newNodes, nodeX, nodeY, +1, 0, 1);
        if (xMin)   setSeekGridParent(newNodes, nodeX, nodeY, -1, 0, 1);
        if (yPlus)  setSeekGridParent(newNodes, nodeX, nodeY, 0, +1, 1);
        if (yMin)   setSeekGridParent(newNodes, nodeX, nodeY, 0, -1, 1);   
    }
    
    if (ds_list_size(newNodes) == 0) {
        ds_list_destroy(newNodes);
        break;
    }
    
    ds_list_destroy(nodes);
    nodes = newNodes;
}
