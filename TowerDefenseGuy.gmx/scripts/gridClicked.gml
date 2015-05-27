var gridX = floor(mouse_x / Grid.gridPixelSize);
var gridY = floor(mouse_y / Grid.gridPixelSize);

show_debug_message("clicked at:    " + string(mouse_x) + ", " + string(mouse_y));
show_debug_message("which is grid: " + string(gridX) + ", " + string(gridY));

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