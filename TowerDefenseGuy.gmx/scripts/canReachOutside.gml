var startX = argument0;
var startY = argument1;

var nodes = ds_list_create();
ds_list_add(nodes, startX, startY);

//show_debug_message("test can block spot @ " + string(startX) + ", " + string(startY));
with (Grid) {
    while(true)
    {
        var newNodes = ds_list_create();
        for(var i = 0; i < ds_list_size(nodes); i+= 2) {
            var nodeX = ds_list_find_value(nodes, i);
            var nodeY = ds_list_find_value(nodes, i + 1);
            
            if (nodeX == 1 || nodeY == 1 || 
                nodeX == gridWidth -2 || 
                nodeY == gridHeight -2) {
                ds_list_destroy(newNodes);
                for (var cY = 0; cY < gridWidth; cY++) {
                    for (var cX = 0; cX < gridWidth; cX++) {
                        gridSeekBlock[cX, cY] = NOT_VISITED;
                    }
                }
                return true;
            }
            
            //show_debug_message("looping on spot @ " + string(nodeX) + ", " + string(nodeY));
                
            breadthSearchAdd(newNodes, nodeX + 1, nodeY);
            breadthSearchAdd(newNodes, nodeX - 1, nodeY);
            breadthSearchAdd(newNodes, nodeX, nodeY + 1);
            breadthSearchAdd(newNodes, nodeX, nodeY - 1);
        }
        if (ds_list_size(newNodes) == 0) {
            ds_list_destroy(newNodes);
            for (var cY = 0; cY < gridWidth; cY++) {
                for (var cX = 0; cX < gridWidth; cX++) {
                    gridSeekBlock[cX, cY] = NOT_VISITED;
                }
            }
            return false;
        }
        
        ds_list_destroy(nodes);
        nodes = newNodes;
    }
}