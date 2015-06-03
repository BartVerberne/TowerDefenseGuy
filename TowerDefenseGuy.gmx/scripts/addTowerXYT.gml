var gridX = argument0;
var gridY = argument1;
var towerType = argument2;

if (!global.gameover) 
if (isGridFreeXYB(gridX,gridY, false))
{
    var toPlaceObject = 0;
    var towerGold;
    switch(towerType) {
        case Grid.GRID_TOWER_0 : toPlaceObject = Tower_0; 
        towerGold = OB_Game.basegold; break;
        case Grid.GRID_HEAVY_TOWER : toPlaceObject = HeavyTower; 
        towerGold = OB_Game.heavygold; break;
        case Grid.GRID_SNIPER_TOWER : toPlaceObject = SniperTower; 
        towerGold = OB_Game.snipergold; break;        
        case Grid.GRID_SPLITTER_TOWER : toPlaceObject = SplitterTower; 
        towerGold = OB_Game.splittergold; break;
    }

    if (toPlaceObject != 0 && towerGold <= global.gold)
    {
        global.gold -= towerGold; //use as much gold as the tower costs
        instance_create(gridX * Grid.gridPixelSize, 
                        gridY * Grid.gridPixelSize,
                        toPlaceObject); 
        setPaths();
    }
}
