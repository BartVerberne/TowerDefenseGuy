var gridX = argument0;
var gridY = argument1;
var creepType = argument2;

if (isGridFreeXYB(gridX, gridY, true))
    {
    
    var toPlaceObject = 0;
        
    switch(creepType) {
        case global.CREEP_0 : toPlaceObject = Creep_0; break;
        case global.CREEP_1 : toPlaceObject = Creep_1; break;
    }
    
    if (toPlaceObject != 0)
    {
        instance_create(gridX * Grid.gridPixelSize, 
                        gridY * Grid.gridPixelSize,
                        toPlaceObject);
    }
}
