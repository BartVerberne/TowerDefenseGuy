initTowerAbstr();

myType = Grid.GRID_SPLITTER_TOWER;
myLevel = 0;
Grid.gridContent[myGridX, myGridY] = myType;

myNextShotTime = 0;
myReloadTime = OB_Game.splitterTowerReloadTime; // ms
myDamage = OB_Game.splitterTowerDamage;
myRange = OB_Game.splitterTowerRange;
