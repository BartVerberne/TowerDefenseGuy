var startPx = argument0;
var startPy = argument1;
var endPx = argument2;
var endPy = argument3;
var collisionTreshHold = argument4;

var startPxAdd = -collisionTreshHold;
if (startPx > endPx) startPixelAdd = collisionTreshHold;
var startPyAdd = - collisionTreshHold;
if (startPy > endPy) startPyAdd = collisionTreshHold;

var startGridX = floor(clamp(startPx + startPxAdd, 0, room_width - 1) / Grid.gridPixelSize);
var startGridY = floor(clamp(startPy + startPyAdd, 0, room_height - 1) / Grid.gridPixelSize);

var endGridX = floor(clamp(endPx - startPxAdd, 0, room_width - 1) / Grid.gridPixelSize);
var endGridY = floor(clamp(endPy - startPyAdd, 0, room_height - 1) / Grid.gridPixelSize);

show_debug_message("x range = " + string(startGridX) + " to " + string(endGridX));
show_debug_message("y range = " + string(startGridY) + " to " + string(endGridY));

var xDir = 1;
var yDir = 1;
if (startGridX > endGridX) xDir = -1;
if (startGridY > endGridY) yDir = -1;

for(var yC = startGridY; yC != endGridY + yDir; yC += yDir) {
    for(var xC = startGridX; xC != endGridX + xDir; xC += xDir) {
        var localCreepList = Grid.creepBlock[xC+1,yC+1];
        var creepCount = ds_list_size(localCreepList);
        
        for(var i = 0; i < creepCount; i++)
        {
            var creepPx;
            var creepPy;
            var creepId = ds_list_find_value(localCreepList, i);
            with(creepId)
            {
                creepPx = x;
                creepPy = y;
            }
            var dist = poinstLineDist(startPx, startPy, endPx, endPy, creepPx, creepPy);
            
            if (dist <= collisionTreshHold)
            {
                return creepId;
            }  
        } 
        
    }
}

return 0;
