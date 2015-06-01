var gridX = floor(mouse_x / Grid.gridPixelSize);
var gridY = floor(mouse_y / Grid.gridPixelSize);

if (isGridTowerXY(gridX, gridY))
{
    var towerID = Grid.gridIds[gridX, gridY];
    var towerType = Grid.gridContent[gridX, gridY];
    upgradeTower(towerType, towerID);
}
else if (canPlaceTowerXY(gridX, gridY))
{
    addTowerXYT(gridX, gridY, Grid.GRID_TOWER_0);
}
