var X = argument0;
var Y = argument1;
var radius = argument2;

with (Grid) {
    var radiusGrid = ceil(radius / gridPixelSize);
    
    var maxX = min(X + radiusGrid, gridWidth);
    var maxY = min(Y + radiusGrid, gridHeight);
    
    for(var cY = max(Y - radiusGrid, 0); cY < maxY; cY++) {
    
        for(var cX = max(X - radiusGrid, 0); cX < maxX; cX++) {
    
            var localCreepList = creepBlock[cX,cY];   
            
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
                var dx = X * gridPixelSize - creepXp;
                var dy = Y * gridPixelSize - creepYp;
                var dist = sqrt(dx*dx+dy*dy);
                
                if (dist < radius)
                {
                    return true;
                }  
            } 
             
        }
    }
}

return false;