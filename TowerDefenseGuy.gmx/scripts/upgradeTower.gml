var towerType = argument0;
var towerID = argument1;

switch(towerType)
{
    case Grid.GRID_TOWER_0 : upgradeTower_0(towerID); break;
    case Grid.HEAVY_TOWER : upgradeHeavyTower(towerID); break;
}
