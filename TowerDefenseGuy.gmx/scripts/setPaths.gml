// optimisation? :
// do a 4-dir first pass (including distance to end calc for "diagonal" paths)
// da a second pass to create true diagonal moves

var originX = getPlayerNextX();
var originY = getPlayerNextY();

with(Grid) {
    var nodes = ds_list_create();
    ds_list_add(nodes, originX, originY);
    
    for (var cY = 0; cY < gridHeight; cY++) {
        for (var cX = 0; cX < gridWidth; cX++) {
            gridPathsXdir[cX, cY] =  NO_PARENT;
        }
    }
    
    gridPathsXdir[originX, originY] = 0;
    gridPathsYdir[originX, originY] = 0;
    gridPathsLength[originX, originY] = 0;
    
    var nodeX = 0;
    var nodeY = 0;
    var targetX = 0;
    var targetY = 0;
    
    var xPlus = false;
    var xMin = false;
    var yPlus = false;
    var yMin = false;
    var TR = false;
    var TL = false;
    var BR = false;
    var BL = false;
    
    var allreadySet = false;
    var writeCell = true;
    var pathLengthViaOtherParent = 0;
    
    var startTime = get_timer();
    
    while(true)
    {
        var newNodes = ds_list_create();
        
        for(var i = 0; i < ds_list_size(nodes); i+= 2) {
            nodeX = ds_list_find_value(nodes, i);
            nodeY = ds_list_find_value(nodes, i + 1);
            
            xMin = (nodeX - 1 >= 0) && gridContent[nodeX - 1, nodeY] < 0;
            yMin = (nodeY - 1 >= 0) && gridContent[nodeX, nodeY - 1] < 0;
            xPlus = (nodeX + 1 < gridWidth) && gridContent[nodeX + 1, nodeY] < 0;
            yPlus = (nodeY + 1 < gridHeight) && gridContent[nodeX, nodeY + 1] < 0;

            TR = xPlus && yPlus && gridContent[nodeX + 1, nodeY + 1] < 0;
            TL = xMin && yPlus && gridContent[nodeX - 1, nodeY + 1] < 0;
            BR = xPlus && yMin && gridContent[nodeX + 1, nodeY - 1] < 0;
            BL = xMin && yMin && gridContent[nodeX - 1, nodeY - 1] < 0;            
            
            if (TR) {
                targetX = nodeX + 1;
                targetY = nodeY + 1;
                allreadySet = gridPathsXdir[targetX, targetY] != NO_PARENT;
                writeCell = !allreadySet;
                pathLengthViaThisParent = 1.4142 + gridPathsLength[nodeX, nodeY];
                if (allreadySet)
                {
                    pathLengthViaOtherParent = gridPathsLength[targetX, targetY];
                    writeCell = (pathLengthViaThisParent < pathLengthViaOtherParent);
                }
                if (writeCell)
                {
                    // set reverse direction:
                    gridPathsXdir[targetX, targetY] = - 1;
                    gridPathsYdir[targetX, targetY] = - 1;
                    gridPathsLength[targetX, targetY] = pathLengthViaThisParent;
        
                    if (!allreadySet) ds_list_add(newNodes, targetX, targetY);
                }
            }
            if (TL) {
                targetX = nodeX - 1;
                targetY = nodeY + 1;
                allreadySet = gridPathsXdir[targetX, targetY] != NO_PARENT;
                writeCell = !allreadySet;
                pathLengthViaThisParent = 1.4142 + gridPathsLength[nodeX, nodeY];
                if (allreadySet)
                {
                    pathLengthViaOtherParent = gridPathsLength[targetX, targetY];
                    writeCell = (pathLengthViaThisParent < pathLengthViaOtherParent);
                }
                if (writeCell)
                {
                    // set reverse direction:
                    gridPathsXdir[targetX, targetY] = + 1;
                    gridPathsYdir[targetX, targetY] = - 1;
                    gridPathsLength[targetX, targetY] = pathLengthViaThisParent;
        
                    if (!allreadySet) ds_list_add(newNodes, targetX, targetY);
                }
            }
            if (BR) {
                targetX = nodeX + 1;
                targetY = nodeY - 1;
                allreadySet = gridPathsXdir[targetX, targetY] != NO_PARENT;
                writeCell = !allreadySet;
                pathLengthViaThisParent = 1.4142 + gridPathsLength[nodeX, nodeY];
                if (allreadySet)
                {
                    pathLengthViaOtherParent = gridPathsLength[targetX, targetY];
                    writeCell = (pathLengthViaThisParent < pathLengthViaOtherParent);
                }
                if (writeCell)
                {
                    // set reverse direction:
                    gridPathsXdir[targetX, targetY] = - 1;
                    gridPathsYdir[targetX, targetY] = + 1;
                    gridPathsLength[targetX, targetY] = pathLengthViaThisParent;
        
                    if (!allreadySet) ds_list_add(newNodes, targetX, targetY);
                }
            }
            if (BL) {
                targetX = nodeX - 1;
                targetY = nodeY - 1;
                allreadySet = gridPathsXdir[targetX, targetY] != NO_PARENT;
                writeCell = !allreadySet;
                pathLengthViaThisParent = 1.4142 + gridPathsLength[nodeX, nodeY];
                if (allreadySet)
                {
                    pathLengthViaOtherParent = gridPathsLength[targetX, targetY];
                    writeCell = (pathLengthViaThisParent < pathLengthViaOtherParent);
                }
                if (writeCell)
                {
                    // set reverse direction:
                    gridPathsXdir[targetX, targetY] = + 1;
                    gridPathsYdir[targetX, targetY] = + 1;
                    gridPathsLength[targetX, targetY] = pathLengthViaThisParent;
        
                    if (!allreadySet) ds_list_add(newNodes, targetX, targetY);
                }
            }
            if (xPlus) {
                targetX = nodeX + 1;
                targetY = nodeY;
                allreadySet = gridPathsXdir[targetX, targetY] != NO_PARENT;
                writeCell = !allreadySet;
                pathLengthViaThisParent = 1 + gridPathsLength[nodeX, nodeY];
                if (allreadySet)
                {
                    pathLengthViaOtherParent = gridPathsLength[targetX, targetY];
                    writeCell = (pathLengthViaThisParent < pathLengthViaOtherParent);
                }
                if (writeCell)
                {
                    // set reverse direction:
                    gridPathsXdir[targetX, targetY] = - 1;
                    gridPathsYdir[targetX, targetY] = 0;
                    gridPathsLength[targetX, targetY] = pathLengthViaThisParent;
        
                    if (!allreadySet) ds_list_add(newNodes, targetX, targetY);
                }
            }
            if (xMin) {
                targetX = nodeX - 1;
                targetY = nodeY;
                allreadySet = gridPathsXdir[targetX, targetY] != NO_PARENT;
                writeCell = !allreadySet;
                pathLengthViaThisParent = 1 + gridPathsLength[nodeX, nodeY];
                if (allreadySet)
                {
                    pathLengthViaOtherParent = gridPathsLength[targetX, targetY];
                    writeCell = (pathLengthViaThisParent < pathLengthViaOtherParent);
                }
                if (writeCell)
                {
                    // set reverse direction:
                    gridPathsXdir[targetX, targetY] = + 1;
                    gridPathsYdir[targetX, targetY] = 0;
                    gridPathsLength[targetX, targetY] = pathLengthViaThisParent;
        
                    if (!allreadySet) ds_list_add(newNodes, targetX, targetY);
                }
            }
            if (yPlus) {
                targetX = nodeX;
                targetY = nodeY + 1;
                allreadySet = gridPathsXdir[targetX, targetY] != NO_PARENT;
                writeCell = !allreadySet;
                pathLengthViaThisParent = 1 + gridPathsLength[nodeX, nodeY];
                if (allreadySet)
                {
                    pathLengthViaOtherParent = gridPathsLength[targetX, targetY];
                    writeCell = (pathLengthViaThisParent < pathLengthViaOtherParent);
                }
                if (writeCell)
                {
                    // set reverse direction:
                    gridPathsXdir[targetX, targetY] = 0;
                    gridPathsYdir[targetX, targetY] = - 1;
                    gridPathsLength[targetX, targetY] = pathLengthViaThisParent;
        
                    if (!allreadySet) ds_list_add(newNodes, targetX, targetY);
                }
            }
            if (yMin) {
                targetX = nodeX;
                targetY = nodeY - 1;
                allreadySet = gridPathsXdir[targetX, targetY] != NO_PARENT;
                writeCell = !allreadySet;
                pathLengthViaThisParent = 1 + gridPathsLength[nodeX, nodeY];
                if (allreadySet)
                {
                    pathLengthViaOtherParent = gridPathsLength[targetX, targetY];
                    writeCell = (pathLengthViaThisParent < pathLengthViaOtherParent);
                }
                if (writeCell)
                {
                    // set reverse direction:
                    gridPathsXdir[targetX, targetY] = 0;
                    gridPathsYdir[targetX, targetY] = + 1;
                    gridPathsLength[targetX, targetY] = pathLengthViaThisParent;
        
                    if (!allreadySet) ds_list_add(newNodes, targetX, targetY);
                }
            }
        
        }
        
        if (ds_list_size(newNodes) == 0) {
            ds_list_destroy(newNodes);
            break;
        }
        
        ds_list_destroy(nodes);
        nodes = newNodes;
    }
}
