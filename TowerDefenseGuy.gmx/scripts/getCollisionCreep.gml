var startPx = x;
var startPy = y;
var endPx = argument0;
var endPy = argument1;
var collisionTreshHold = argument2;

var startPxAdd = -collisionTreshHold;
if (startPx > endPx) startPixelAdd = collisionTreshHold;
var startPyAdd = - collisionTreshHold;
if (startPy > endPy) startPyAdd = collisionTreshHold;

var startGridX = floor(clamp(startPx + startPxAdd, 0, room_width - 1) / Grid.gridPixelSize);
var startGridY = floor(clamp(startPy + startPyAdd, 0, room_height - 1) / Grid.gridPixelSize);

var endGridX = floor(clamp(endPx - startPxAdd, 0, room_width - 1) / Grid.gridPixelSize);
var endGridY = floor(clamp(endPy - startPyAdd, 0, room_height - 1) / Grid.gridPixelSize);

var xDir = 1;
var yDir = 1;
if (startGridX > endGridX) xDir = -1;
if (startGridY > endGridY) yDir = -1;

for(var yC = startGridY; yC != endGridY + yDir; yC += yDir) {
    for(var xC = startGridX; xC != endGridX + xDir; xC += xDir) {
        var localCreepList = Grid.creepBlock[xC,yC];
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
