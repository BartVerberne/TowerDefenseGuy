var gridX = floor(mouse_x / Grid.gridPixelSize);
var gridY = floor(mouse_y / Grid.gridPixelSize);

show_debug_message("clicked left" + string(delta_time));

if (isGridTowerXY(gridX, gridY))
{   
    var towerID = Grid.gridIds[gridX, gridY];
    var towerType = Grid.gridContent[gridX, gridY];
    upgradeTower(towerType, towerID);
}
else if (canPlaceTowerXY(gridX, gridY))
{
    //show_debug_message("try build tower: " + string(OB_Game.selectedTowerType));
    addTowerXYT(gridX, gridY, OB_Game.selectedTowerType);
}
