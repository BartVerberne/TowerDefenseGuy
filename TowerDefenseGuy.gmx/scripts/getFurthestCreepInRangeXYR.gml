var X = argument0;
var Y = argument1;
var radius = argument2;
var radiusGrid = ceil(radius / Grid.gridPixelSize);

var maxX = min(X + radiusGrid, Grid.gridWidth);
var maxY = min(Y + radiusGrid, Grid.gridHeight);

var bestCreepId = 0;
var bestCreepPlayerPathLength = 100000000000;

for(var cY = max(Y - radiusGrid, -1); cY <= maxY; cY++) {

    for(var cX = max(X - radiusGrid, -1); cX <= maxX; cX++) {

        var localCreepList = Grid.creepBlock[cX+1,cY+1];   
        
        for(var i = 0; i < ds_list_size(localCreepList); i++)
        {
            var creepID = ds_list_find_value(localCreepList, i);
               
            var creepXp;
            var creepYp;
            with(creepID)
            {
                creepXp = x;
                creepYp = y;
            }
            var dx = X * Grid.gridPixelSize - creepXp;
            var dy = Y * Grid.gridPixelSize - creepYp;
            var dist = sqrt(dx*dx+dy*dy);
            
            if (dist < radius)
            {
                var creepPlayerPathLength = getPathLengthToPlayer(creepID);
                if (creepPlayerPathLength < bestCreepPlayerPathLength)
                {
                    bestCreepId = creepID;
                    bestCreepPlayerPathLength = creepPlayerPathLength;
                }
            }  
        } 
         
    }
}

return bestCreepId;
