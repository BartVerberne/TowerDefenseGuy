var gridX = argument0;
var gridY = argument1;
var towerType = argument2;

if (isGridFreeXYB(gridX,gridY, false))
{
    var toPlaceObject = 0;
    
    switch(towerType) {
        case Grid.GRID_TOWER_0 : toPlaceObject = Tower_0; break;
        case Grid.GRID_HEAVY_TOWER : toPlaceObject = HeavyTower; break;
        case Grid.GRID_SNIPER_TOWER : toPlaceObject = SniperTower; break;
        case Grid.GRID_SPLITTER_TOWER : toPlaceObject = SplitterTower; break;
    }

    if (toPlaceObject != 0)
    {
        instance_create(gridX * Grid.gridPixelSize, 
                        gridY * Grid.gridPixelSize,
                        toPlaceObject); 
        setPaths();
    }
}
