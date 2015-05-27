var gridX = argument0;
var gridY = argument1;
var creepType = argument2;

if (isGridFreeXYB(gridX, gridY, true))
    {
    
    var toPlaceObject = 0;
        
    switch(creepType) {
        case CreepCtrl.CREEP_0 : toPlaceObject = Creep_0; break;
    }
    
    if (toPlaceObject != 0)
    {
        instance_create(gridX * Grid.gridPixelSize, 
                        gridY * Grid.gridPixelSize,
                        toPlaceObject);
    }
}