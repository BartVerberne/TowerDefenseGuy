var towerType = argument0;
var towerID = argument1;

switch(towerType)
{
    case Grid.GRID_TOWER_0 : upgradeTower_0(towerID); break;
    case Grid.GRID_HEAVY_TOWER : upgradeHeavyTower(towerID); break;
    case Grid.GRID_SNIPER_TOWER : upgradeSniperTower(towerID); break;
    case Grid.GRID_SPLITTER_TOWER : upgradeSplitterTower(towerID); break;
}