gridX = argument0;
gridY = argument1;
towerType = argument2;

if (isGridFreeXY(gridX,gridY))
{
    var toPlaceObject;
    
    switch(towerType) {
        case global.GRID_TOWER_0 : toPlaceObject = Tower_0;
    }

    instance_create(gridX * global.gridPixelSize, 
                    gridY * global.gridPixelSize,
                    toPlaceObject); 
}
