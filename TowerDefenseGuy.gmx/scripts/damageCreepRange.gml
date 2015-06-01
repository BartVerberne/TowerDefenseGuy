var creepId = argument0;
var damage = argument1;
var range = argument2;

var explodePx;
var explodePy;

with(creepId)
{
    explodePx = x;
    explodePy = y;
}

show_debug_message("damage in range");

with(Grid) {

    var gridLeft = max(floor((explodePx - range) / gridPixelSize), 0);
    var gridRight = min(floor((explodePx + range) / gridPixelSize), gridWidth - 1);
    var gridTop = max(floor((explodePy - range) / gridPixelSize), 0);
    var gridBottom = min(floor((explodePy + range) / gridPixelSize), gridHeight - 1);
    
    for(var yC = gridTop; yC <= gridBottom; yC ++) {
        for(var xC = gridLeft; xC <= gridRight; xC ++) {
            var localCreepList = creepBlock[xC,yC];
            var creepCount = ds_list_size(localCreepList);
            
            for(var i = 0; i < creepCount; i++)
            {
                
            
                var vdx;
                var vdy;
                var creepId = ds_list_find_value(localCreepList, i);
                with(creepId)
                {
                    vdx = explodePx - x;
                    vdy = explodePy - y;
                }
                var dist = sqrt(vdx*vdx+vdy*vdy);
                
                if (dist <= range)
                {
                    if(damageCreep(creepId, damage)) {i--; creepCount--};
                }  
            } 
        }
    }

}
